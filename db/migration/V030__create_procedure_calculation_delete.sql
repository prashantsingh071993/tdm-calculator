CREATE PROC [dbo].[Calculation_Delete]
    @id int
AS
BEGIN
    /*

	EXEC dbo.Calculation_Delete <args> 

*/
    DELETE Calculation
	WHERE 
		id = @id
END
GO