ALTER TABLE [dbo].[SecurityToken] ADD  CONSTRAINT [DF_SecurityToken_dateCreated]  DEFAULT (getutcdate()) FOR [dateCreated]
GO