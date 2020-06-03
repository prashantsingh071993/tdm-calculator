create view [dbo].[CalculationRuleInput]
as
    select *
    from calculationrule
    where category = 'input'
GO