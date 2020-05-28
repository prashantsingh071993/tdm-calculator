CREATE TABLE [dbo].[SecurityToken]
(
    [token] [nvarchar](200) NOT NULL,
    [email] [nvarchar](100) NOT NULL,
    [dateCreated] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO