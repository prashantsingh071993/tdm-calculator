CREATE PROC [dbo].[Calculation_Update]
	@id int
	,
	@name nvarchar(50)
	,
	@description nvarchar(400)
	,
	@deprecated bit = 0
AS
BEGIN
	/*

	DECLARE @name nvarchar(50) = 'Carbon Emissions'
	DECLARE @description nvarchar(400) = 'Carbon Emission Calculation'
	DECLARE @deprecated bit = 0
	DECLARE @Id int = 3

	EXEC dbo.Calculation_Update 
		@name = @name
		, @description = @description
		, @deprecated = @deprecated
		, @Id = @id

*/

	UPDATE Calculation SET 
		name = @name
		, description = @description
		, deprecated = @deprecated
		, dateModified = getutcDate()
	WHERE 
		id = @id

END
GO
