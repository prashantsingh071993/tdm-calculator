CREATE proc [dbo].[GenerateCrud]
    @TableName varchar(100)
as
begin
    /*

	This is a utility procedure that generates standard CRUD
	StoredProcedures.  You just pass it the table name and it will
	generate text results that you can paste into an SSMS query window
	and execute to create the five basic stored procedures for the 
	table.

*/
    /*
	exec GenerateCrud 'Meetings'

*/
    declare @cols varchar(max) = ''
    declare @parms varchar(max) = ''
    declare @colparms varchar(4000) = ''
    declare @sproc varchar(max)
    declare @args varchar(max) = ''
    declare @nl varchar(2) = char(10)
    --+ char(13)
    declare @tab varchar(1) = char(9)
    declare @nltab varchar(3) = @nl + @tab
    declare @nltab2 varchar(4) = @nltab + @tab
    declare @where varchar(max) = ''
    declare @identityColName varchar(100)
    declare @scopeIdentityFragment varchar(150) = ''
    declare @testDeclarations nvarchar(4000)

    create table #cols
    (
        OrdinalPosition int,
        ColumnName varchar(100),
        ColumnUpdate varchar(200),
        ColumnDataType varchar(100),
        IsPrimaryKey bit,
        IsIdentity bit,
        IsSpecial bit
        -- special cols are provided by defaults or custom code (vs. sproc args)
    )

    insert #cols
        (OrdinalPosition, ColumnName, ColumnUpdate, ColumnDataType, IsPrimaryKey, IsIdentity, IsSpecial)
    select c.ordinal_position, c.column_name, c.column_name + ' = @' + c.column_name,
        c.data_type + 
		case when c.character_maximum_length is not null then '(' 
		+ case when c.character_maximum_length = -1 then 'max' else convert(varchar, c.character_maximum_length) end + ')' 
		when c.numeric_precision is not null and data_type in ('decimal', 'numeric') then '(' + convert(varchar, c.numeric_precision) + ',' + convert(varchar, c.numeric_scale) + ')'
		when c.datetime_precision > 0 then '(' + convert(varchar, c.datetime_precision) + ')'
		else '' end,
        0, COLUMNPROPERTY(object_id(c.table_name), c.column_name, 'IsIdentity'),
        case when c.column_name in ('dateCreated', 'dateModified') then 1 else 0 end
    from information_schema.columns c
    where table_name = @TableName

    select @identityColName = ColumnName
    from #cols
    where IsIdentity = 1

    update #cols set IsPrimaryKey = 1
	where ColumnName in
	(
		SELECT Col.Column_Name
    from
        INFORMATION_SCHEMA.TABLE_CONSTRAINTS Tab,
        INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE Col
    WHERE 
			Col.Constraint_Name = Tab.Constraint_Name
        AND Col.Table_Name = Tab.Table_Name
        AND Constraint_Type = 'PRIMARY KEY'
        AND Col.Table_Name = @TableName
	)

    /*
		Build insert sproc
	*/
    set @args = ''

    select @args = @args + case when @args = '' then 
			@nltab + '@' + ColumnName + ' ' + ColumnDataType
		else 
			@nltab + ', @' + ColumnName + ' ' + ColumnDataType
		end
    from #cols
    where IsIdentity = 0
        and IsSpecial = 0
    order by OrdinalPosition

    select @args = @args + case when @args = '' then 
			@nltab + '@' + ColumnName + ' ' + ColumnDataType + ' output'
		else 
			@nltab + ', @' + ColumnName + ' ' + ColumnDataType + ' output'
		end
    from #cols
    where IsIdentity = 1
    order by OrdinalPosition

    set @cols = ''
    select @cols = @cols + case when @cols = '' then 
			@nltab2 +  ColumnName 
		else 
			@nltab2 + ', ' + ColumnName 
		end
    from #cols
    where IsIdentity = 0
        and IsSpecial = 0
    order by OrdinalPosition

    set @parms = ''
    select @parms = @parms + case when @parms = '' then 
			@nltab2 + '@' + ColumnName 
		else 
			@nltab2 + ', @' + ColumnName 
		end
    from #cols
    where IsIdentity = 0
        and IsSpecial = 0
    order by OrdinalPosition

    if( @identityColName is not null)
	begin
        select @scopeIdentityFragment = @nltab + 'SET @' + convert(varchar,@identityColName) + ' = SCOPE_IDENTITY() '
    end

    set @testDeclarations = ''

    select @testDeclarations = @testDeclarations + 
			@nltab + 'DECLARE @' + ColumnName + ' ' + ColumnDataType + ' = <value>'
    from #cols
    where IsIdentity = 0
        and IsSpecial = 0
    order by OrdinalPosition


    set @sproc ='CREATE PROC dbo.' + @TableName + '_Insert '
		+ @args
		+ @nl + 'AS' 
		+ @nl + 'BEGIN' 
		+ @nl + '/*' 
		+ @nl
		+ @testDeclarations
		+ @nltab + 'DECLARE @Id int'
		+ @nl
		+ @nltab + 'EXEC dbo.' + @TableName + '_Insert ' 
		+ @parms
		+ @nltab2 + ', @Id = @Id output'
		+ @nl 
		+ @nl + '*/'
		+ @nl
		+ @nltab + 'INSERT ' + @TableName + @nltab +  '('
		+ @cols
		+ @nltab + ')'
		+ @nltab + 'VALUES ' + @nltab + '('
		+ @parms
		+ @nltab + ')'
		+ @nl + @scopeIdentityFragment
		+ @nl + 'END'

    select @sproc as "Insert"

    /*
		Build update sproc
	*/

    set @args = ''
    select @args = @args + case when @args = '' then 
			@nltab + '@' + ColumnName + ' ' + ColumnDataType
		else 
			@nltab + ', @' + ColumnName + ' ' + ColumnDataType
		end
    from #cols
    where IsSpecial = 0
    order by OrdinalPosition

    set @cols = ''
    select @cols = @cols + case when @cols = '' then 
			@nltab2 + ColumnName +  ' = @' + ColumnName 
		else 
			@nltab2 + ', ' + ColumnName +  ' = @' + ColumnName 
		end
    from #cols
    where IsPrimaryKey = 0
        and IsSpecial = 0
    order by OrdinalPosition

    if exists (select *
    from #cols
    where ColumnName = 'DateModified')
	begin
        set @cols = @cols + @nltab2 + ', DateModified = getutcdate()'
    end

    set @where = ''
    select @where = @where +
		case when @where = '' then
			@nltab + 'WHERE ' + @nltab2  + ColumnUpdate
		else
			@nltab2 +'AND ' + ColumnUpdate
		end
    from #cols c
    where IsPrimaryKey = 1


    set @sproc ='CREATE PROC dbo.' + @TableName + '_Update '
		+ @args
		+ @nl + 'AS' 
		+ @nl + 'BEGIN' 
		+ @nl + '/*' 
		+ @nl
		+ @testDeclarations
		+ @nltab + 'DECLARE @Id int'
		+ @nl
		+ @nltab + 'EXEC dbo.' + @TableName + '_Update ' 
		+ @parms
		+ @nltab2 + ', @Id '
		+ @nl 
		+ @nl + '*/'
		+ @nl
		+ @nltab + 'UPDATE ' + @TableName + ' SET '
		+ @cols
		+ @where
		+ @nl
		+ @nl + 'END'

    select @sproc as "Update"

    /*
		Build delete sproc
	*/
    set @args = ''
    select @args = @args + case when @args = '' then 
			@nltab + '@' + ColumnName + ' ' + ColumnDataType
		else 
			@nltab + ', @' + ColumnName + ' ' + ColumnDataType
		end
    from #cols
    where IsPrimaryKey = 1
    order by OrdinalPosition

    select @sproc = 'CREATE PROC dbo.' + @TableName + '_Delete '
		+ @args 
		+ @nl + 'AS' 
		+ @nl + 'BEGIN' 
		+ @nl + '/*' 
		+ @nl
		+ @nltab + 'EXEC dbo.' + @TableName + '_Delete <args> ' 
		+ @nl 
		+ @nl + '*/'
		+ @nl
		+ @nl
		+ @nltab + 'DELETE ' + @TableName
		+ @where
		+ @nl + 'END'

    select @sproc as "Delete"

    /*
		SelectById
	*/

    set @cols = ''
    select @cols = @cols + case when @cols = '' then 
			@nltab2 +  ColumnName 
		else 
			@nltab2 + ', ' + ColumnName 
		end
    from #cols
    where IsSpecial = 0
    order by OrdinalPosition

    set @args = ''
    select @args = @args + case when @args = '' then 
			@nltab + '@' + ColumnName + ' ' + ColumnDataType
		else 
			@nltab + ', @' + ColumnName + ' ' + ColumnDataType
		end
    from #cols
    where IsPrimaryKey = 1
    order by OrdinalPosition

    select @sproc = 'CREATE PROC dbo.' + @TableName + '_SelectById '
		+ @args 
		+ @nl + 'AS' 
		+ @nl + 'BEGIN' 
		+ @nl + '/*' 
		+ @nl
		+ @nltab + 'EXEC dbo.' + @TableName + '_SelectById <args> ' 
		+ @nl 
		+ @nl + '*/'
		+ @nl
		+ @nl
		+ @nltab + 'SELECT ' + @cols
		+ @nltab + 'FROM ' + @TableName
		+ @where
		+ @nl
		+ @nl + 'END'

    select @sproc as "SelectById"

    /*
		SelectAll
	*/

    select @sproc = 'CREATE PROC dbo.' + @TableName + '_SelectAll '
		+ @nl + 'AS' 
		+ @nl + 'BEGIN' 
		+ @nl 
		+ @nl + '/*' 
		+ @nl
		+ @nltab + 'EXEC dbo.' + @TableName + '_SelectAll ' 
		+ @nl 
		+ @nl + '*/'
		+ @nl
		+ @nltab + 'SELECT ' + @cols
		+ @nltab + 'FROM ' + @TableName
		+ @nl
		+ @nl + 'END'

    select @sproc as "SelectAll"


end
GO