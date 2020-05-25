CREATE PROC [dbo].[CalculationRule_Update]
	@id int
	,
	@calculationId int = null -- Cannot actually change parent calculation
	,
	@code varchar(50)
	,
	@name nvarchar(100)
	,
	@category varchar(20)
	,
	@dataType varchar(20)
	,
	@units nvarchar(50)
	,
	@value nvarchar(200)
	,
	@functionBody nvarchar(max)
	,
	@displayOrder int
AS
BEGIN
	/*

	DECLARE @code varchar(50) = <value>
	DECLARE @name nvarchar(100) = <value>
	DECLARE @category varchar(20) = <value>
	DECLARE @dataType varchar(20) = <value>
	DECLARE @units nvarchar(50) = <value>
	DECLARE @value nvarchar(200) = <value>
	DECLARE @functionBody nvarchar(max) = <value>
	DECLARE @displayOrder int = <value>
	DECLARE @id int

	EXEC dbo.CalculationRule_Update 
		@code = @code
		, @name = @name
		, @category = @category
		, @dataType = @dataType
		, @units = @units
		, @value = @value
		, @functionBody = @functionBody
		, @displayOrder = @displayOrder
		, @id  = @id

	select @id

*/

	UPDATE CalculationRule SET 
		code = @code
		, name = @name
		, category = @category
		, dataType = @dataType
		, units = @units
		, value = @value
		, functionBody = @functionBody
		, displayOrder = @displayOrder
	WHERE 
		id = @id

END
GO