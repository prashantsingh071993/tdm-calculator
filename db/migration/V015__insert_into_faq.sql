-- This file inserts current records (as of May 13, 2020) that were on the heroku "production" environment

SET IDENTITY_INSERT [dbo].[Faq] ON

INSERT [dbo].[Faq]
    ([faqId], [question], [answer])
VALUES
    (1, N'What is TDM?', N'Transportation Demand Management (TDM) is a set of practices intended to reduce the number of single-occupant drives in a community, in attempt to reduce traffic congestion and pollution, and promote health and well-being in a community.')

SET IDENTITY_INSERT [dbo].[Faq] OFF
GO