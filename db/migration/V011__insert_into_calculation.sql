-- This file inserts current records (as of May 13, 2020) that were on the heroku "production" environment

SET IDENTITY_INSERT [dbo].[Calculation] ON

INSERT [dbo].[Calculation]
    ([id], [name], [description], [deprecated], [dateCreated], [dateModified])
VALUES
    (1, N'TDM', N'Traffic Data Management', 0, CAST(N'2019-07-13T15:05:29.0333333' AS DateTime2), CAST(N'2019-07-13T15:05:29.0333333' AS DateTime2))
INSERT [dbo].[Calculation]
    ([id], [name], [description], [deprecated], [dateCreated], [dateModified])
VALUES
    (2, N'Test', N'Test Calculation', 0, CAST(N'2019-07-13T15:05:29.0333333' AS DateTime2), CAST(N'2019-07-13T15:05:29.0333333' AS DateTime2))
INSERT [dbo].[Calculation]
    ([id], [name], [description], [deprecated], [dateCreated], [dateModified])
VALUES
    (3, N'Carbon Emissions', N'Carbon Emission Calculation', 0, CAST(N'2019-07-13T15:09:01.1333333' AS DateTime2), CAST(N'2019-07-13T15:13:15.9366667' AS DateTime2))
INSERT [dbo].[Calculation]
    ([id], [name], [description], [deprecated], [dateCreated], [dateModified])
VALUES
    (5, N'Test Calculation Insert', N'Traffic Data Management', 0, CAST(N'2019-07-13T16:03:43.8300000' AS DateTime2), CAST(N'2019-07-13T16:03:43.8300000' AS DateTime2))
INSERT [dbo].[Calculation]
    ([id], [name], [description], [deprecated], [dateCreated], [dateModified])
VALUES
    (6, N'test', N'deprecated rules', 0, CAST(N'2020-01-30T19:45:21.1700000' AS DateTime2), CAST(N'2020-01-30T19:45:21.1700000' AS DateTime2))
INSERT [dbo].[Calculation]
    ([id], [name], [description], [deprecated], [dateCreated], [dateModified])
VALUES
    (7, N'Test Calculation Insert', N'Traffic Data Management', 0, CAST(N'2020-03-05T16:54:09.2000000' AS DateTime2), CAST(N'2020-03-05T16:54:09.2000000' AS DateTime2))
INSERT [dbo].[Calculation]
    ([id], [name], [description], [deprecated], [dateCreated], [dateModified])
VALUES
    (8, N'Test Calculation Insert', N'Traffic Data Management', 0, CAST(N'2020-04-01T23:03:22.5166667' AS DateTime2), CAST(N'2020-04-01T23:03:22.5166667' AS DateTime2))

SET IDENTITY_INSERT [dbo].[Calculation] OFF
GO