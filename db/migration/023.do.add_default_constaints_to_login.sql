ALTER TABLE [dbo].[Login] ADD  CONSTRAINT [DF_Login_dateCreated]  DEFAULT (getutcdate()) FOR [dateCreated]
GO
ALTER TABLE [dbo].[Login] ADD  CONSTRAINT [DF_Login_emailConfirmed]  DEFAULT ((0)) FOR [emailConfirmed]
GO