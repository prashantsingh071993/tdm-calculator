ALTER TABLE [dbo].[CalculationRule]  WITH CHECK ADD  CONSTRAINT [FK_CalculationRule_CalculationRule] FOREIGN KEY([calculationId], [calcCode])
REFERENCES [dbo].[CalculationRule] ([calculationId], [code])
GO
ALTER TABLE [dbo].[CalculationRule] CHECK CONSTRAINT [FK_CalculationRule_CalculationRule]
GO
ALTER TABLE [dbo].[CalculationRule]  WITH CHECK ADD  CONSTRAINT [FK_Rule_Calculation] FOREIGN KEY([calculationId])
REFERENCES [dbo].[Calculation] ([id])
GO
ALTER TABLE [dbo].[CalculationRule] CHECK CONSTRAINT [FK_Rule_Calculation]
GO

