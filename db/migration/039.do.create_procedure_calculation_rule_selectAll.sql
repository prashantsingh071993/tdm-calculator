CREATE PROC [dbo].[CalculationRule_SelectAll]
AS
BEGIN

    /*

	EXEC dbo.CalculationRule_SelectAll 

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

END
GO