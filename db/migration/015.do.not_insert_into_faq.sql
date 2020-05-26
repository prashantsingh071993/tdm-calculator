-- TODO: SHOULD NOT INSERT THESE
-- This file inserts current records (as of May 13, 2020) that were on the heroku environment

SET IDENTITY_INSERT [dbo].[Faq] ON

INSERT [dbo].[Faq]
    ([faqId], [question], [answer])
VALUES
    (1, N'how do I make faqs? ', N'You become an admin')
INSERT [dbo].[Faq]
    ([faqId], [question], [answer])
VALUES
    (22, N'', N'')
INSERT [dbo].[Faq]
    ([faqId], [question], [answer])
VALUES
    (23, N'What is TDM?', N'Transportation Demand Management (TDM) is a set of practices intended to reduce the number of single-occupant drives in a community, in attempt to reduce traffic congestion and pollution, and promote health and well-being in a community.')
INSERT [dbo].[Faq]
    ([faqId], [question], [answer])
VALUES
    (24, N'What is TDM?', N'I don''t know')
INSERT [dbo].[Faq]
    ([faqId], [question], [answer])
VALUES
    (25, N'Test', N'Test')
INSERT [dbo].[Faq]
    ([faqId], [question], [answer])
VALUES
    (27, N'What is a project level?', N'It''s bases on Formulas and its related to how large your project is')
INSERT [dbo].[Faq]
    ([faqId], [question], [answer])
VALUES
    (28, N'', N'whatever question you want')

SET IDENTITY_INSERT [dbo].[Faq] OFF
GO