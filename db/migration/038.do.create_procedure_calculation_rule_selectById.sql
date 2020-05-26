CREATE PROC [dbo].[CalculationRule_SelectById]
	@id int
AS
BEGIN
	/*

	EXEC dbo.CalculationRule_SelectById <args> 

*/

	SELECT
		id
		, calculationId
		, code
		, name
		, category
		, dataType
		, units
		, value
		, functionBody
		, displayOrder
		, inactive
		, calculationPanelId
		, used
		, displayFunctionBody
		, minValue
		, maxValue
		, choices
		, calcCode
		, required
		, minStringLength
		, maxStringLength
		, displayComment
		, description
	FROM CalculationRule
	WHERE 
		id = @id

END
GO