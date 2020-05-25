CREATE TABLE [dbo].[CalculationPanel]
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [calculationId] [int] NOT NULL,
    [name] [nvarchar](100) NOT NULL,
    [cssClass] [nvarchar](100) NOT NULL,
    [displayOrder] [int] NOT NULL,
    CONSTRAINT [PK_CalculationPanel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO