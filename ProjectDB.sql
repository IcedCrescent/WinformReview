Create database ProjectDB
Go
USE [ProjectDB]
GO
/****** Object:  ForeignKey [FK_EmployeeTBL_DepartmentTBL]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeTBL_DepartmentTBL]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeTBL]'))
ALTER TABLE [dbo].[EmployeeTBL] DROP CONSTRAINT [FK_EmployeeTBL_DepartmentTBL]
GO
/****** Object:  ForeignKey [FK__ProjectRe__Emplo__1367E606]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ProjectRe__Emplo__1367E606]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectResourceTBL]'))
ALTER TABLE [dbo].[ProjectResourceTBL] DROP CONSTRAINT [FK__ProjectRe__Emplo__1367E606]
GO
/****** Object:  ForeignKey [FK__ProjectRe__Proje__1273C1CD]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ProjectRe__Proje__1273C1CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectResourceTBL]'))
ALTER TABLE [dbo].[ProjectResourceTBL] DROP CONSTRAINT [FK__ProjectRe__Proje__1273C1CD]
GO
/****** Object:  ForeignKey [FK_StudentTBL_MajorTBL]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StudentTBL_MajorTBL]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudentTBL]'))
ALTER TABLE [dbo].[StudentTBL] DROP CONSTRAINT [FK_StudentTBL_MajorTBL]
GO
/****** Object:  ForeignKey [FK__Supervise__Emplo__0BC6C43E]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Supervise__Emplo__0BC6C43E]') AND parent_object_id = OBJECT_ID(N'[dbo].[SupervisedTBL]'))
ALTER TABLE [dbo].[SupervisedTBL] DROP CONSTRAINT [FK__Supervise__Emplo__0BC6C43E]
GO
/****** Object:  ForeignKey [FK__Supervise__Super__0AD2A005]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Supervise__Super__0AD2A005]') AND parent_object_id = OBJECT_ID(N'[dbo].[SupervisedTBL]'))
ALTER TABLE [dbo].[SupervisedTBL] DROP CONSTRAINT [FK__Supervise__Super__0AD2A005]
GO
/****** Object:  Table [dbo].[ProjectResourceTBL]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ProjectRe__Emplo__1367E606]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectResourceTBL]'))
ALTER TABLE [dbo].[ProjectResourceTBL] DROP CONSTRAINT [FK__ProjectRe__Emplo__1367E606]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ProjectRe__Proje__1273C1CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectResourceTBL]'))
ALTER TABLE [dbo].[ProjectResourceTBL] DROP CONSTRAINT [FK__ProjectRe__Proje__1273C1CD]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectResourceTBL]') AND type in (N'U'))
DROP TABLE [dbo].[ProjectResourceTBL]
GO
/****** Object:  Table [dbo].[SupervisedTBL]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Supervise__Emplo__0BC6C43E]') AND parent_object_id = OBJECT_ID(N'[dbo].[SupervisedTBL]'))
ALTER TABLE [dbo].[SupervisedTBL] DROP CONSTRAINT [FK__Supervise__Emplo__0BC6C43E]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Supervise__Super__0AD2A005]') AND parent_object_id = OBJECT_ID(N'[dbo].[SupervisedTBL]'))
ALTER TABLE [dbo].[SupervisedTBL] DROP CONSTRAINT [FK__Supervise__Super__0AD2A005]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupervisedTBL]') AND type in (N'U'))
DROP TABLE [dbo].[SupervisedTBL]
GO
/****** Object:  Table [dbo].[StudentTBL]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StudentTBL_MajorTBL]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudentTBL]'))
ALTER TABLE [dbo].[StudentTBL] DROP CONSTRAINT [FK_StudentTBL_MajorTBL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudentTBL]') AND type in (N'U'))
DROP TABLE [dbo].[StudentTBL]
GO
/****** Object:  Table [dbo].[EmployeeTBL]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeTBL_DepartmentTBL]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeTBL]'))
ALTER TABLE [dbo].[EmployeeTBL] DROP CONSTRAINT [FK_EmployeeTBL_DepartmentTBL]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeTBL]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeTBL]
GO
/****** Object:  Table [dbo].[MajorTBL]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MajorTBL]') AND type in (N'U'))
DROP TABLE [dbo].[MajorTBL]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Projects]') AND type in (N'U'))
DROP TABLE [dbo].[Projects]
GO
/****** Object:  Table [dbo].[DepartmentTBL]    Script Date: 06/26/2017 21:08:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DepartmentTBL]') AND type in (N'U'))
DROP TABLE [dbo].[DepartmentTBL]
GO
/****** Object:  Table [dbo].[DepartmentTBL]    Script Date: 06/26/2017 21:08:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DepartmentTBL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DepartmentTBL](
	[DepartmentID] [int] NOT NULL,
	[DepartmentName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_DepartmentTBL] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DepartmentTBL] ([DepartmentID], [DepartmentName]) VALUES (1, N'Computer Science')
INSERT [dbo].[DepartmentTBL] ([DepartmentID], [DepartmentName]) VALUES (2, N'Mathematic')
INSERT [dbo].[DepartmentTBL] ([DepartmentID], [DepartmentName]) VALUES (3, N'Language and Softskills')
INSERT [dbo].[DepartmentTBL] ([DepartmentID], [DepartmentName]) VALUES (4, N'Engineering')
/****** Object:  Table [dbo].[Projects]    Script Date: 06/26/2017 21:08:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Projects]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Projects](
	[ProjectID] [varchar](5) NOT NULL,
	[ProjectName] [varchar](150) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
	[Location] [varchar](150) NOT NULL,
	[DepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Location], [DepartmentID]) VALUES (N'1', N'Hotel System Management', CAST(0x6F300B00 AS Date), CAST(0xF8310B00 AS Date), N'45 ILe Du Saulcy , Metz, France', 2)
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Location], [DepartmentID]) VALUES (N'2', N'Recommender System', CAST(0x1B310B00 AS Date), NULL, N'DNK Building , Uchicanda, Candaku, Tokyo, Japan', 2)
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Location], [DepartmentID]) VALUES (N'3', N'Question And Answer System', CAST(0x8C370B00 AS Date), CAST(0x253A0B00 AS Date), N'18 Pham Hung, FPT Building, Cau Giay, Hanoi , Vietnam', 2)
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Location], [DepartmentID]) VALUES (N'4', N'Boeing - Automatic Driver System', CAST(0xA93A0B00 AS Date), NULL, N'P. O. Box 3707 Seattle, Washington 98124', 2)
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [StartDate], [EndDate], [Location], [DepartmentID]) VALUES (N'5', N'Boeing Defense, Space and Security', CAST(0xAB380B00 AS Date), NULL, N'St. Louis, Missouri 63166', 2)
/****** Object:  Table [dbo].[MajorTBL]    Script Date: 06/26/2017 21:08:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MajorTBL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MajorTBL](
	[MajorID] [int] NOT NULL,
	[MajorName] [varchar](150) NOT NULL,
 CONSTRAINT [PK_MajorTBL] PRIMARY KEY CLUSTERED 
(
	[MajorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MajorTBL] ([MajorID], [MajorName]) VALUES (1, N'Computer Science')
INSERT [dbo].[MajorTBL] ([MajorID], [MajorName]) VALUES (2, N'Finance and Banking')
INSERT [dbo].[MajorTBL] ([MajorID], [MajorName]) VALUES (3, N'Photos and Graphic')
INSERT [dbo].[MajorTBL] ([MajorID], [MajorName]) VALUES (4, N'Business Administration')
/****** Object:  Table [dbo].[EmployeeTBL]    Script Date: 06/26/2017 21:08:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeTBL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeTBL](
	[EmployeeID] [int] NOT NULL,
	[EmployeeName] [varchar](150) NOT NULL,
	[Gender] [bit] NOT NULL,
	[StartDate] [smalldatetime] NOT NULL,
	[isManager] [bit] NOT NULL,
	[DepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeTBL] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[EmployeeTBL] ([EmployeeID], [EmployeeName], [Gender], [StartDate], [isManager], [DepartmentID]) VALUES (1, N'Mr A', 1, CAST(0x81110000 AS SmallDateTime), 1, 1)
INSERT [dbo].[EmployeeTBL] ([EmployeeID], [EmployeeName], [Gender], [StartDate], [isManager], [DepartmentID]) VALUES (2, N'Mr B', 1, CAST(0x90ED0000 AS SmallDateTime), 1, 2)
INSERT [dbo].[EmployeeTBL] ([EmployeeID], [EmployeeName], [Gender], [StartDate], [isManager], [DepartmentID]) VALUES (3, N'Ms C', 0, CAST(0x8EA20000 AS SmallDateTime), 0, 2)
INSERT [dbo].[EmployeeTBL] ([EmployeeID], [EmployeeName], [Gender], [StartDate], [isManager], [DepartmentID]) VALUES (4, N'Mr D', 0, CAST(0xA72E04DE AS SmallDateTime), 0, 1)
INSERT [dbo].[EmployeeTBL] ([EmployeeID], [EmployeeName], [Gender], [StartDate], [isManager], [DepartmentID]) VALUES (5, N'Mr E', 1, CAST(0xA73F04E0 AS SmallDateTime), 1, 1)
INSERT [dbo].[EmployeeTBL] ([EmployeeID], [EmployeeName], [Gender], [StartDate], [isManager], [DepartmentID]) VALUES (6, N'Mrs F', 1, CAST(0xA73804E2 AS SmallDateTime), 1, 1)
/****** Object:  Table [dbo].[StudentTBL]    Script Date: 06/26/2017 21:08:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudentTBL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StudentTBL](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](150) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Address] [varchar](150) NOT NULL,
	[isFunded] [bit] NOT NULL,
	[MajorID] [int] NOT NULL,
 CONSTRAINT [PK_StudentTBL] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[StudentTBL] ON
INSERT [dbo].[StudentTBL] ([StudentID], [StudentName], [Gender], [Address], [isFunded], [MajorID]) VALUES (1, N'Mr A', 1, N'FPT University', 1, 1)
INSERT [dbo].[StudentTBL] ([StudentID], [StudentName], [Gender], [Address], [isFunded], [MajorID]) VALUES (2, N'Mr B', 1, N'Hoa Lac', 0, 2)
INSERT [dbo].[StudentTBL] ([StudentID], [StudentName], [Gender], [Address], [isFunded], [MajorID]) VALUES (3, N'Ms C', 0, N'Hanoi', 0, 2)
SET IDENTITY_INSERT [dbo].[StudentTBL] OFF
/****** Object:  Table [dbo].[SupervisedTBL]    Script Date: 06/26/2017 21:08:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupervisedTBL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SupervisedTBL](
	[SupervisorCode] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SupervisorCode] ASC,
	[EmployeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProjectResourceTBL]    Script Date: 06/26/2017 21:08:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectResourceTBL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProjectResourceTBL](
	[ProjectID] [varchar](5) NOT NULL,
	[EmployeeID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC,
	[EmployeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ProjectResourceTBL] ([ProjectID], [EmployeeID]) VALUES (N'2', 6)
INSERT [dbo].[ProjectResourceTBL] ([ProjectID], [EmployeeID]) VALUES (N'4', 6)
INSERT [dbo].[ProjectResourceTBL] ([ProjectID], [EmployeeID]) VALUES (N'5', 6)
/****** Object:  ForeignKey [FK_EmployeeTBL_DepartmentTBL]    Script Date: 06/26/2017 21:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeTBL_DepartmentTBL]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeTBL]'))
ALTER TABLE [dbo].[EmployeeTBL]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeTBL_DepartmentTBL] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[DepartmentTBL] ([DepartmentID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeTBL_DepartmentTBL]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeTBL]'))
ALTER TABLE [dbo].[EmployeeTBL] CHECK CONSTRAINT [FK_EmployeeTBL_DepartmentTBL]
GO
/****** Object:  ForeignKey [FK__ProjectRe__Emplo__1367E606]    Script Date: 06/26/2017 21:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ProjectRe__Emplo__1367E606]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectResourceTBL]'))
ALTER TABLE [dbo].[ProjectResourceTBL]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[EmployeeTBL] ([EmployeeID])
GO
/****** Object:  ForeignKey [FK__ProjectRe__Proje__1273C1CD]    Script Date: 06/26/2017 21:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ProjectRe__Proje__1273C1CD]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectResourceTBL]'))
ALTER TABLE [dbo].[ProjectResourceTBL]  WITH CHECK ADD FOREIGN KEY([ProjectID])
REFERENCES [dbo].[Projects] ([ProjectID])
GO
/****** Object:  ForeignKey [FK_StudentTBL_MajorTBL]    Script Date: 06/26/2017 21:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StudentTBL_MajorTBL]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudentTBL]'))
ALTER TABLE [dbo].[StudentTBL]  WITH CHECK ADD  CONSTRAINT [FK_StudentTBL_MajorTBL] FOREIGN KEY([MajorID])
REFERENCES [dbo].[MajorTBL] ([MajorID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StudentTBL_MajorTBL]') AND parent_object_id = OBJECT_ID(N'[dbo].[StudentTBL]'))
ALTER TABLE [dbo].[StudentTBL] CHECK CONSTRAINT [FK_StudentTBL_MajorTBL]
GO
/****** Object:  ForeignKey [FK__Supervise__Emplo__0BC6C43E]    Script Date: 06/26/2017 21:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Supervise__Emplo__0BC6C43E]') AND parent_object_id = OBJECT_ID(N'[dbo].[SupervisedTBL]'))
ALTER TABLE [dbo].[SupervisedTBL]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[EmployeeTBL] ([EmployeeID])
GO
/****** Object:  ForeignKey [FK__Supervise__Super__0AD2A005]    Script Date: 06/26/2017 21:08:30 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Supervise__Super__0AD2A005]') AND parent_object_id = OBJECT_ID(N'[dbo].[SupervisedTBL]'))
ALTER TABLE [dbo].[SupervisedTBL]  WITH CHECK ADD FOREIGN KEY([SupervisorCode])
REFERENCES [dbo].[EmployeeTBL] ([EmployeeID])
GO
