CREATE PROC [dbo].[CalculationRule_SelectByCalculationId]
    @calculationId int
AS
BEGIN
    /*

	EXEC dbo.CalculationRule_SelectByCalculationId 1

*/

    SELECT
        cr.id
		, cr.calculationId
		, cr.code
		, cr.name
		, cr.category
		, cr.dataType
		, cr.units
		, cr.value
		, cr.functionBody
		, cr.displayOrder
		, cp.name as panelName
		, cp.cssClass
		, cp.displayOrder as panelDisplayOrder
		, cp.id as calculationPanelId
		, cr.used
		, cr.displayFunctionBody
		, cr.minValue
		, cr.maxValue
		, cr.choices
		, cr.calcCode
		, cr.required
		, cr.minStringLength
		, cr.maxStringLength
		, cr.displayComment
		, cr.description
    FROM CalculationRule cr
        LEFT JOIN CalculationPanel cp on cr.calculationPanelId = cp.id
    WHERE 
		cr.calculationId = @calculationId
    ORDER BY cp.displayOrder, cr.displayOrder, cr.name

END
GO