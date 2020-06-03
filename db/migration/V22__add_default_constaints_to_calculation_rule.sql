ALTER TABLE [dbo].[CalculationRule] ADD  CONSTRAINT [DF_Rule_category]  DEFAULT ('') FOR [category]
GO
ALTER TABLE [dbo].[CalculationRule] ADD  CONSTRAINT [DF_Rule_dataType]  DEFAULT ('') FOR [dataType]
GO
ALTER TABLE [dbo].[CalculationRule] ADD  CONSTRAINT [DF_Rule_units]  DEFAULT ('') FOR [units]
GO
ALTER TABLE [dbo].[CalculationRule] ADD  CONSTRAINT [DF_Rule_functionBody]  DEFAULT ('') FOR [functionBody]
GO
ALTER TABLE [dbo].[CalculationRule] ADD  CONSTRAINT [DF_Rule_displayOrder]  DEFAULT ((1000000)) FOR [displayOrder]
GO
ALTER TABLE [dbo].[CalculationRule] ADD  CONSTRAINT [DF_CalculationRule_deprecated]  DEFAULT ((0)) FOR [inactive]
GO
ALTER TABLE [dbo].[CalculationRule] ADD  CONSTRAINT [DF_CalculationRule_used]  DEFAULT ((0)) FOR [used]
GO
ALTER TABLE [dbo].[CalculationRule] ADD  CONSTRAINT [DF_CalculationRule_displayFunctionBody]  DEFAULT ('return true;') FOR [displayFunctionBody]
GO
ALTER TABLE [dbo].[CalculationRule] ADD  CONSTRAINT [DF_CalculationRule_required]  DEFAULT ((0)) FOR [required]
GO
ALTER TABLE [dbo].[CalculationRule] ADD  DEFAULT ((0)) FOR [displayComment]
GO
ALTER TABLE [dbo].[CalculationRule] ADD  DEFAULT ('') FOR [description]
GO
