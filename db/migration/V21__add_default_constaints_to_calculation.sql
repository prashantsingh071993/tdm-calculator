ALTER TABLE [dbo].[Calculation] ADD  CONSTRAINT [DF_Calculation_description]  DEFAULT ('') FOR [description]
GO
ALTER TABLE [dbo].[Calculation] ADD  CONSTRAINT [DF_Calculation_deprecared]  DEFAULT ((0)) FOR [deprecated]
GO
ALTER TABLE [dbo].[Calculation] ADD  CONSTRAINT [DF_Calculation_dateCreated]  DEFAULT (getutcdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[Calculation] ADD  CONSTRAINT [DF_Calculation_dateModified]  DEFAULT (getutcdate()) FOR [dateModified]
GO
