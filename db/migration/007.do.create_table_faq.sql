CREATE TABLE [dbo].[Faq]
(
    [faqId] [int] IDENTITY(1,1) NOT NULL,
    [question] [varchar](250) NULL,
    [answer] [varchar](500) NULL
) ON [PRIMARY]
GO