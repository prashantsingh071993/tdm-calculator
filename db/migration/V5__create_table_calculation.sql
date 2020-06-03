CREATE TABLE [dbo].[Calculation]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [name] [nvarchar](50) NOT NULL,
    [description] [nvarchar](400) NOT NULL,
    [deprecated] [bit] NOT NULL,
    [dateCreated] [datetime2](7) NOT NULL,
    [dateModified] [datetime2](7) NOT NULL,
    CONSTRAINT [PK_Calculation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO