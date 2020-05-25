CREATE TABLE [dbo].[Project]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [name] [nvarchar](200) NOT NULL,
    [address] [nvarchar](200) NOT NULL,
    [formInputs] [nvarchar](max) NOT NULL,
    [dateCreated] [datetime2](7) NOT NULL,
    [dateModified] [datetime2](7) NOT NULL,
    [loginId] [int] NOT NULL,
    [calculationId] [int] NOT NULL,
    [description] [nvarchar](max) NULL,
    CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO