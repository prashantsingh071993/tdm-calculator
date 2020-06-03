CREATE TABLE [dbo].[Login]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [firstName] [nvarchar](50) NOT NULL,
    [lastName] [nvarchar](50) NOT NULL,
    [email] [nvarchar](100) NOT NULL,
    [dateCreated] [datetime2](7) NOT NULL,
    [emailConfirmed] [bit] NOT NULL,
    [isAdmin] [bit] NOT NULL,
    [passwordHash] [nvarchar](200) NULL,
    [isSecurityAdmin] [bit] NOT NULL,
    CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO