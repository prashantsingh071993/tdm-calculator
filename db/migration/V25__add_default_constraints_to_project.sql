
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF_Project_dateCreated]  DEFAULT (getutcdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF_Project_dateModified]  DEFAULT (getutcdate()) FOR [dateModified]
GO
ALTER TABLE [dbo].[Project] ADD  CONSTRAINT [DF_Project_description]  DEFAULT ('') FOR [description]
GO
