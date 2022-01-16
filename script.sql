USE [SE1511_JS_Group1]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [varchar](200) NOT NULL,
	[PassWord] [varchar](50) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Boarder]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Boarder](
	[BoarderID] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [varchar](10) NULL,
	[BoarderName] [nvarchar](200) NULL,
	[Gender] [bit] NULL,
	[DOB] [date] NULL,
	[Email] [nvarchar](200) NULL,
	[Job] [nvarchar](200) NULL,
	[UserName] [varchar](200) NULL,
 CONSTRAINT [PK_Boarder] PRIMARY KEY CLUSTERED 
(
	[BoarderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dom]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dom](
	[DomID] [varchar](1) NOT NULL,
	[DomName] [varchar](5) NULL,
 CONSTRAINT [PK_Dom] PRIMARY KEY CLUSTERED 
(
	[DomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DomManager]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DomManager](
	[ManagerID] [int] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [varchar](10) NULL,
	[ManagerName] [nvarchar](200) NULL,
	[Gender] [bit] NULL,
	[DOB] [date] NULL,
	[Regency] [nvarchar](200) NULL,
	[UserName] [varchar](200) NULL,
 CONSTRAINT [PK_DomManager] PRIMARY KEY CLUSTERED 
(
	[ManagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ElectricAndWaterBill]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ElectricAndWaterBill](
	[BillID] [int] IDENTITY(1,1) NOT NULL,
	[Deadline] [date] NULL,
	[Status] [varchar](50) NULL,
	[Month] [varchar](50) NULL,
	[WaterAmuont] [float] NULL,
	[ElectricAmount] [float] NULL,
	[RoomID] [varchar](5) NULL,
 CONSTRAINT [PK_ElectricAndWaterBill] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[BoarderID] [int] NULL,
	[Title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manager]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manager](
	[ManagerID] [int] NOT NULL,
	[DomID] [varchar](1) NOT NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[ManagerID] ASC,
	[DomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notices]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notices](
	[NoticeID] [int] IDENTITY(1,1) NOT NULL,
	[Direction] [bit] NULL,
	[Time] [date] NULL,
	[Title] [nvarchar](max) NULL,
	[BoarderID] [int] NULL,
 CONSTRAINT [PK_Notices] PRIMARY KEY CLUSTERED 
(
	[NoticeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](200) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Room]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room](
	[RoomID] [varchar](5) NOT NULL,
	[Floor] [int] NULL,
	[DomID] [varchar](1) NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoomCategory]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomCategory](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](100) NULL,
	[Gender] [bit] NULL,
	[RoomFee] [float] NULL,
 CONSTRAINT [PK_RoomCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoomFeeBill]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoomFeeBill](
	[BillID] [int] NOT NULL,
	[Deadline] [date] NULL,
	[Status] [varchar](50) NULL,
	[Month] [varchar](50) NULL,
	[BoarderID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_RoomFeeBill] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoomStatus]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoomStatus](
	[RoomID] [varchar](5) NOT NULL,
	[BedNo] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_RoomStatus] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC,
	[BedNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stay]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stay](
	[BoarderID] [int] IDENTITY(1,1) NOT NULL,
	[RoomID] [varchar](5) NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[BedNo] [int] NULL,
 CONSTRAINT [PK_Stay] PRIMARY KEY CLUSTERED 
(
	[BoarderID] ASC,
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transaction](
	[TransactionID] [int] NOT NULL,
	[Type] [varchar](50) NULL,
	[Amount] [float] NULL,
	[Message] [nvarchar](max) NULL,
	[Time] [date] NULL,
	[WalletID] [int] NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Violation]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Violation](
	[ViolationID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NULL,
	[Violator] [varchar](50) NULL,
	[Penalization] [nvarchar](100) NULL,
	[Discription] [nvarchar](100) NULL,
	[ManagerID] [int] NULL,
 CONSTRAINT [PK_Violation] PRIMARY KEY CLUSTERED 
(
	[ViolationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wallet]    Script Date: 1/16/2022 9:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wallet](
	[WalletID] [int] IDENTITY(1,1) NOT NULL,
	[Balance] [float] NULL,
	[UserName] [varchar](200) NULL,
 CONSTRAINT [PK_Wallet] PRIMARY KEY CLUSTERED 
(
	[WalletID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Staff')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
ALTER TABLE [dbo].[RoomStatus] ADD  CONSTRAINT [DF_RoomStatus_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Boarder]  WITH CHECK ADD  CONSTRAINT [FK_Boarder_Account] FOREIGN KEY([UserName])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[Boarder] CHECK CONSTRAINT [FK_Boarder_Account]
GO
ALTER TABLE [dbo].[DomManager]  WITH CHECK ADD  CONSTRAINT [FK_DomManager_Account] FOREIGN KEY([UserName])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[DomManager] CHECK CONSTRAINT [FK_DomManager_Account]
GO
ALTER TABLE [dbo].[ElectricAndWaterBill]  WITH CHECK ADD  CONSTRAINT [FK_ElectricAndWaterBill_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[ElectricAndWaterBill] CHECK CONSTRAINT [FK_ElectricAndWaterBill_Room]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Boarder] FOREIGN KEY([BoarderID])
REFERENCES [dbo].[Boarder] ([BoarderID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Boarder]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_Dom] FOREIGN KEY([DomID])
REFERENCES [dbo].[Dom] ([DomID])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_Dom]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_DomManager] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[DomManager] ([ManagerID])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_DomManager]
GO
ALTER TABLE [dbo].[Notices]  WITH CHECK ADD  CONSTRAINT [FK_Notices_Boarder] FOREIGN KEY([BoarderID])
REFERENCES [dbo].[Boarder] ([BoarderID])
GO
ALTER TABLE [dbo].[Notices] CHECK CONSTRAINT [FK_Notices_Boarder]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Dom] FOREIGN KEY([DomID])
REFERENCES [dbo].[Dom] ([DomID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Dom]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[RoomCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomCategory]
GO
ALTER TABLE [dbo].[RoomFeeBill]  WITH CHECK ADD  CONSTRAINT [FK_RoomFeeBill_Boarder] FOREIGN KEY([BoarderID])
REFERENCES [dbo].[Boarder] ([BoarderID])
GO
ALTER TABLE [dbo].[RoomFeeBill] CHECK CONSTRAINT [FK_RoomFeeBill_Boarder]
GO
ALTER TABLE [dbo].[RoomStatus]  WITH CHECK ADD  CONSTRAINT [FK_RoomStatus_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[RoomStatus] CHECK CONSTRAINT [FK_RoomStatus_Room]
GO
ALTER TABLE [dbo].[Stay]  WITH CHECK ADD  CONSTRAINT [FK_Stay_Boarder1] FOREIGN KEY([BoarderID])
REFERENCES [dbo].[Boarder] ([BoarderID])
GO
ALTER TABLE [dbo].[Stay] CHECK CONSTRAINT [FK_Stay_Boarder1]
GO
ALTER TABLE [dbo].[Stay]  WITH CHECK ADD  CONSTRAINT [FK_Stay_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[Stay] CHECK CONSTRAINT [FK_Stay_Room]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Wallet] FOREIGN KEY([WalletID])
REFERENCES [dbo].[Wallet] ([WalletID])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_Wallet]
GO
ALTER TABLE [dbo].[Violation]  WITH CHECK ADD  CONSTRAINT [FK_Violation_DomManager] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[DomManager] ([ManagerID])
GO
ALTER TABLE [dbo].[Violation] CHECK CONSTRAINT [FK_Violation_DomManager]
GO
ALTER TABLE [dbo].[Wallet]  WITH CHECK ADD  CONSTRAINT [FK_Wallet_Account] FOREIGN KEY([UserName])
REFERENCES [dbo].[Account] ([UserName])
GO
ALTER TABLE [dbo].[Wallet] CHECK CONSTRAINT [FK_Wallet_Account]
GO
