create view [dbo].[CalculationRuleCalculation]
as
    select *
    from calculationrule
    where category = 'calculation'
GO