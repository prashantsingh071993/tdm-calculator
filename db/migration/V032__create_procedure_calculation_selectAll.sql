CREATE PROC [dbo].[Calculation_SelectAll]
AS
BEGIN

    /*

	EXEC dbo.Calculation_SelectAll 

*/

    SELECT
        id
		, name
		, description
		, deprecated
		, dateCreated
		, dateModified
    FROM Calculation

END
GO