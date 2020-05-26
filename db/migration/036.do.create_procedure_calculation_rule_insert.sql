CREATE PROC [dbo].[CalculationRule_Insert]
    @calculationId int
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
	,
    @id int output
AS
BEGIN
    /*

	DECLARE @calculationId int = <value>
	DECLARE @code varchar(50) = <value>
	DECLARE @name nvarchar(100) = <value>
	DECLARE @category varchar(20) = <value>
	DECLARE @dataType varchar(20) = <value>
	DECLARE @units nvarchar(50) = <value>
	DECLARE @value nvarchar(200) = <value>
	DECLARE @functionBody nvarchar(max) = <value>
	DECLARE @displayOrder int = <value>
	DECLARE @Id int

	EXEC dbo.CalculationRule_Insert 
		@calculationId
		, @code
		, @name
		, @category
		, @dataType
		, @units
		, @value
		, @functionBody
		, @displayOrder
		, @Id = @Id output

*/

    INSERT CalculationRule
        (
        calculationId
        , code
        , name
        , category
        , dataType
        , units
        , value
        , functionBody
        , displayOrder
        )
    VALUES
        (
            @calculationId
		, @code
		, @name
		, @category
		, @dataType
		, @units
		, @value
		, @functionBody
		, @displayOrder
	)

    SET @id = SCOPE_IDENTITY()
END
GO