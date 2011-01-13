USE [MOBILEDB]
GO

/****** Object:  Table [dbo].[ProductRepair]    Script Date: 01/14/2011 00:56:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductRepair](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RepairNo] [nvarchar](100) NULL,
	[StaffName] [nvarchar](100) NULL,
	[CustomerName] [nvarchar](100) NULL,
	[CustomerDate] [smalldatetime] NULL,
	[CustomerContact] [nvarchar](100) NULL,
	[ProductModel] [nvarchar](100) NULL,
	[ProductColor] [nvarchar](100) NULL,
	[ProductIMEI] [nvarchar](100) NULL,
	[ProductFaultReport] [nvarchar](max) NULL,
	[ProductNoSim] [bit] NULL,
	[ProductWB] [bit] NULL,
	[ProductNB] [bit] NULL,
	[ProductMemoryCard] [bit] NULL,
	[ProductExteriorCondition] [nvarchar](100) NULL,
	[MemoLabourCode] [nvarchar](100) NULL,
	[MemoPartsCode] [nvarchar](100) NULL,
	[MemoTotalInCludingGST] [nvarchar](100) NULL,
	[PartsFixed] [nvarchar](max) NULL,
	[SignName] [nvarchar](100) NULL,
	[SignDate] [smalldatetime] NULL,
	[SignCustomerName] [nvarchar](100) NULL,
	[SignCustomerDate] [smalldatetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [smalldatetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_ProductRepair] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

