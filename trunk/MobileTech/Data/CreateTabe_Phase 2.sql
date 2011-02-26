
/************Contact table*/
EXEC sp_rename 
    @objname = 'Contact.ContactPhone', 
    @newname = 'ContactPhone1', 
    @objtype = 'COLUMN'
GO  
ALTER TABLE Contact
ADD ContactPhone2 nvarchar(50) NULL
GO
ALTER TABLE Contact
ADD ContactMobilePhone nvarchar(50) NULL

/************[ProductRepair] table*/
GO

/****** Object:  Table [dbo].[ProductRepair]    Script Date: 02/26/2011 17:49:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductRepair]') AND type in (N'U'))
DROP TABLE [dbo].[ProductRepair]
GO

/****** Object:  Table [dbo].[ProductRepair]    Script Date: 02/26/2011 17:49:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductRepair](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RepairNo] [nvarchar](100) NULL,
	[ContactID] [int] NULL,
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
	[PartsFixedOthers] [nvarchar](max) NULL,
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

/************[UsersInContacts] table*/

/****** Object:  Table [dbo].[UsersInContacts]    Script Date: 02/26/2011 17:51:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsersInContacts]') AND type in (N'U'))
DROP TABLE [dbo].[UsersInContacts]
GO

/****** Object:  Table [dbo].[UsersInContacts]    Script Date: 02/26/2011 17:51:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UsersInContacts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContactID] [int] NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_UsersInContacts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT INTO [UsersInContacts]
           ([ContactID]
           ,[UserName])
     VALUES
           (1,'admin')
GO

DELETE FROM aspnet_Membership
      WHERE UserId NOT IN(SELECT UserId FROM aspnet_Users WHERE UserName='admin')
GO
DELETE FROM aspnet_UsersInRoles
      WHERE UserId NOT IN(SELECT UserId FROM aspnet_Users WHERE UserName='admin')
GO

DELETE FROM aspnet_Users
      WHERE UserName <> 'admin'
GO


