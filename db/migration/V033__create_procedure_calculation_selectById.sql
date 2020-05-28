CREATE PROC [dbo].[Calculation_SelectById]
	@id int
AS
BEGIN
	/*

	EXEC dbo.Calculation_SelectById 1

*/

	SELECT
		id
		, name
		, description
		, deprecated
		, dateCreated
		, dateModified
	FROM Calculation
	WHERE 
		id = @id

END
GO