CREATE PROC [dbo].[Calculation_Insert]
    @name nvarchar(50)
	,
    @description nvarchar(400)
	,
    @deprecated bit = 0
	,
    @id int output
AS
BEGIN
    /*

	DECLARE @name nvarchar(50) = 'Car=bon Emissions'
	DECLARE @description nvarchar(400) = 'Calculates Carbon Emission Credits'
	DECLARE @Id int

	EXEC dbo.Calculation_Insert 
		@name
		, @description
		, @Id = @Id output

	select @Id

*/

    INSERT Calculation
        (
        name
        , description
        , deprecated
        )
    VALUES
        (
            @name
		, @description
		, @deprecated
	)

    SET @id = SCOPE_IDENTITY()
END
GO