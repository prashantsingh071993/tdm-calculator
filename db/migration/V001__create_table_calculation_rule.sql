CREATE TABLE [dbo].[CalculationRule]
(
    [id] [int] IDENTITY(1,1) NOT NULL,
    [calculationId] [int] NOT NULL,
    [code] [varchar](50) NOT NULL,
    [name] [nvarchar](100) NOT NULL,
    [category] [varchar](20) NOT NULL,
    [dataType] [varchar](20) NOT NULL,
    [units] [nvarchar](50) NOT NULL,
    [value] [nvarchar](200) NULL,
    [functionBody] [nvarchar](max) NULL,
    [displayOrder] [int] NOT NULL,
    [inactive] [bit] NOT NULL,
    [calculationPanelId] [int] NULL,
    [used] [bit] NOT NULL,
    [displayFunctionBody] [nvarchar](max) NOT NULL,
    [minValue] [numeric](6, 2) NULL,
    [maxValue] [numeric](6, 2) NULL,
    [choices] [nvarchar](max) NULL,
    [calcCode] [varchar](50) NULL,
    [required] [bit] NOT NULL,
    [minStringLength] [int] NULL,
    [maxStringLength] [int] NULL,
    [displayComment] [bit] NOT NULL,
    [description] [nvarchar](max) NOT NULL,
    CONSTRAINT [PK_Rule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO