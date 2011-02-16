USE [MOBILEDB]
GO
/****** Object:  Table [dbo].[ProductRepair]    Script Date: 02/16/2011 09:37:09 ******/
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
	[ProductWB] [nvarchar](100) NULL,
	[ProductNB] [nvarchar](100) NULL,
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
SET IDENTITY_INSERT [dbo].[ProductRepair] ON
INSERT [dbo].[ProductRepair] ([ID], [RepairNo], [StaffName], [CustomerName], [CustomerDate], [CustomerContact], [ProductModel], [ProductColor], [ProductIMEI], [ProductFaultReport], [ProductNoSim], [ProductWB], [ProductNB], [ProductMemoryCard], [ProductExteriorCondition], [MemoLabourCode], [MemoPartsCode], [MemoTotalInCludingGST], [PartsFixed], [SignName], [SignDate], [SignCustomerName], [SignCustomerDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (1, N'123', N'StaffName', N'CustomerName', NULL, N'CustomerContract', N'ProductModel', N'ProductColor', N'ProductIMEI', N'', 0, N'', N'', 0, N'1', N'', N'', N'', N'', NULL, NULL, NULL, NULL, N'tutran', CAST(0x9E5E0000 AS SmallDateTime), 2)
INSERT [dbo].[ProductRepair] ([ID], [RepairNo], [StaffName], [CustomerName], [CustomerDate], [CustomerContact], [ProductModel], [ProductColor], [ProductIMEI], [ProductFaultReport], [ProductNoSim], [ProductWB], [ProductNB], [ProductMemoryCard], [ProductExteriorCondition], [MemoLabourCode], [MemoPartsCode], [MemoTotalInCludingGST], [PartsFixed], [SignName], [SignDate], [SignCustomerName], [SignCustomerDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (2, NULL, N'dfg', N'fssdf', NULL, N'df', N'sdf', N'sdf', N'sdf', N'', 0, N'sf', N'sdfs', 1, N'1', N'df', N'sd', N'sdf', N'Connector', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[ProductRepair] ([ID], [RepairNo], [StaffName], [CustomerName], [CustomerDate], [CustomerContact], [ProductModel], [ProductColor], [ProductIMEI], [ProductFaultReport], [ProductNoSim], [ProductWB], [ProductNB], [ProductMemoryCard], [ProductExteriorCondition], [MemoLabourCode], [MemoPartsCode], [MemoTotalInCludingGST], [PartsFixed], [SignName], [SignDate], [SignCustomerName], [SignCustomerDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (4, NULL, N'asd', N'asd', NULL, N'asd', N'fdsf', N'dasd', N'dsf', N'sdf', 0, N'dfg', N'fg', 1, N'1', N'fdg', N'sdf', N'sdf', N'Connector@Vibration@Circuit Board Repair@', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[ProductRepair] ([ID], [RepairNo], [StaffName], [CustomerName], [CustomerDate], [CustomerContact], [ProductModel], [ProductColor], [ProductIMEI], [ProductFaultReport], [ProductNoSim], [ProductWB], [ProductNB], [ProductMemoryCard], [ProductExteriorCondition], [MemoLabourCode], [MemoPartsCode], [MemoTotalInCludingGST], [PartsFixed], [SignName], [SignDate], [SignCustomerName], [SignCustomerDate], [ModifiedBy], [ModifiedDate], [Status]) VALUES (5, N'0005', N'sad', N'asd', NULL, N'asd', N'', N'', N'', N'', 0, N'', N'', 1, N'1', N'', N'', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[ProductRepair] OFF
