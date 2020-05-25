CREATE view [dbo].[CalculationRuleMeasure]
as
    select *
    from calculationrule
    where category = 'measure'
GO