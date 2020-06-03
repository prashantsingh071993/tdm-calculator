ALTER TABLE [dbo].[CalculationPanel]  WITH CHECK ADD  CONSTRAINT [FK_CalculationPanel_Calculation] FOREIGN KEY([calculationId])
REFERENCES [dbo].[Calculation] ([id])
GO
ALTER TABLE [dbo].[CalculationPanel] CHECK CONSTRAINT [FK_CalculationPanel_Calculation]
GO
