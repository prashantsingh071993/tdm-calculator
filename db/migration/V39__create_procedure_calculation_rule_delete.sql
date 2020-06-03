CREATE PROC [dbo].[CalculationRule_Delete]
    @id int
AS
BEGIN
    /*

	EXEC dbo.CalculationRule_Delete <args> 

*/

    DELETE CalculationRule
	WHERE 
		id = @id
END
GO