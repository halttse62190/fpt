USE [master]
GO
/****** Object:  Database [EmployeeManagementSystem]    Script Date: 3/2/2018 3:39:29 PM ******/
CREATE DATABASE [EmployeeManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeManagementSystem', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EmployeeManagementSystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EmployeeManagementSystem_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EmployeeManagementSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EmployeeManagementSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmployeeManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeManagementSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EmployeeManagementSystem]
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 3/2/2018 3:39:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[DeptNo] [int] IDENTITY(1,1) NOT NULL,
	[DeptName] [varchar](50) NULL,
	[Note] [varchar](50) NULL,
 CONSTRAINT [PK_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
	[DeptNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMP_SKILL]    Script Date: 3/2/2018 3:39:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMP_SKILL](
	[SkillNo] [int] NOT NULL,
	[EmpNo] [varchar](50) NOT NULL,
	[SkillLevel] [int] NULL,
	[RegDate] [date] NULL,
 CONSTRAINT [PK_EMP_SKILL] PRIMARY KEY CLUSTERED 
(
	[SkillNo] ASC,
	[EmpNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 3/2/2018 3:39:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[EmpNo] [varchar](50) NOT NULL,
	[EmpName] [varchar](50) NULL,
	[Birthday] [date] NULL,
	[DeptNo] [int] NULL,
	[MgrNo] [varchar](50) NOT NULL,
	[StartDate] [date] NULL,
	[Salary] [money] NULL,
	[Level] [int] NULL,
	[Status] [int] NULL,
	[Note] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[EmpNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SKILL]    Script Date: 3/2/2018 3:39:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SKILL](
	[SkillNo] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [varchar](50) NULL,
	[Note] [varchar](50) NULL,
 CONSTRAINT [PK_SKILL] PRIMARY KEY CLUSTERED 
(
	[SkillNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vwEMPLOYEE_TRACKING]    Script Date: 3/2/2018 3:39:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwEMPLOYEE_TRACKING]
AS
SELECT e.EmpNo, e.EmpName, e.Level
FROM EMPLOYEE e
WHERE e.Level>=3 AND e.Level<=5
GO
SET IDENTITY_INSERT [dbo].[DEPARTMENT] ON 

INSERT [dbo].[DEPARTMENT] ([DeptNo], [DeptName], [Note]) VALUES (1, N'HCM', N'abc')
INSERT [dbo].[DEPARTMENT] ([DeptNo], [DeptName], [Note]) VALUES (2, N'HN', N'bdc')
INSERT [dbo].[DEPARTMENT] ([DeptNo], [DeptName], [Note]) VALUES (3, N'DN', N'bhun')
INSERT [dbo].[DEPARTMENT] ([DeptNo], [DeptName], [Note]) VALUES (4, N'HL', N'o ha noi')
INSERT [dbo].[DEPARTMENT] ([DeptNo], [DeptName], [Note]) VALUES (5, N'Cau Giay', N'khoang 2')
INSERT [dbo].[DEPARTMENT] ([DeptNo], [DeptName], [Note]) VALUES (6, N'Ville 2', NULL)
SET IDENTITY_INSERT [dbo].[DEPARTMENT] OFF
INSERT [dbo].[EMP_SKILL] ([SkillNo], [EmpNo], [SkillLevel], [RegDate]) VALUES (1, N'E1', 1, CAST(0x233F0B00 AS Date))
INSERT [dbo].[EMP_SKILL] ([SkillNo], [EmpNo], [SkillLevel], [RegDate]) VALUES (2, N'E2', 2, CAST(0x07240B00 AS Date))
INSERT [dbo].[EMP_SKILL] ([SkillNo], [EmpNo], [SkillLevel], [RegDate]) VALUES (3, N'E3', 2, CAST(0x9C200B00 AS Date))
INSERT [dbo].[EMP_SKILL] ([SkillNo], [EmpNo], [SkillLevel], [RegDate]) VALUES (4, N'E4', 3, CAST(0xE3150B00 AS Date))
INSERT [dbo].[EMP_SKILL] ([SkillNo], [EmpNo], [SkillLevel], [RegDate]) VALUES (5, N'E5', 3, CAST(0x61250B00 AS Date))
INSERT [dbo].[EMPLOYEE] ([EmpNo], [EmpName], [Birthday], [DeptNo], [MgrNo], [StartDate], [Salary], [Level], [Status], [Note], [Email]) VALUES (N'E1', N'Le A', CAST(0xC01F0B00 AS Date), 1, N'1', CAST(0x22250B00 AS Date), 2000000.0000, 1, NULL, NULL, N'abc@gmail.com')
INSERT [dbo].[EMPLOYEE] ([EmpNo], [EmpName], [Birthday], [DeptNo], [MgrNo], [StartDate], [Salary], [Level], [Status], [Note], [Email]) VALUES (N'E2', N'Le B', CAST(0xE01F0B00 AS Date), 2, N'2', CAST(0x1E2F0B00 AS Date), 199999999.0000, 2, NULL, NULL, N'hgb@gmail.com')
INSERT [dbo].[EMPLOYEE] ([EmpNo], [EmpName], [Birthday], [DeptNo], [MgrNo], [StartDate], [Salary], [Level], [Status], [Note], [Email]) VALUES (N'E3', N'Tran C', CAST(0x781B0B00 AS Date), 3, N'2', CAST(0x9F3A0B00 AS Date), 123456000.0000, 2, NULL, NULL, N'hnu@mail.com')
INSERT [dbo].[EMPLOYEE] ([EmpNo], [EmpName], [Birthday], [DeptNo], [MgrNo], [StartDate], [Salary], [Level], [Status], [Note], [Email]) VALUES (N'E4', N'Mac C', CAST(0xC3150B00 AS Date), 3, N'3', CAST(0x9A330B00 AS Date), 123000.0000, 3, NULL, NULL, N'hgh@mail.com')
INSERT [dbo].[EMPLOYEE] ([EmpNo], [EmpName], [Birthday], [DeptNo], [MgrNo], [StartDate], [Salary], [Level], [Status], [Note], [Email]) VALUES (N'E5', N'Dinh D', CAST(0x9D180B00 AS Date), 4, N'6', CAST(0xF3230B00 AS Date), 123456.0000, 6, NULL, NULL, N'boss@fmail.com')
SET IDENTITY_INSERT [dbo].[SKILL] ON 

INSERT [dbo].[SKILL] ([SkillNo], [SkillName], [Note]) VALUES (1, N'talk', NULL)
INSERT [dbo].[SKILL] ([SkillNo], [SkillName], [Note]) VALUES (2, N'write', NULL)
INSERT [dbo].[SKILL] ([SkillNo], [SkillName], [Note]) VALUES (3, N'quickly read', NULL)
INSERT [dbo].[SKILL] ([SkillNo], [SkillName], [Note]) VALUES (4, N'dance', NULL)
INSERT [dbo].[SKILL] ([SkillNo], [SkillName], [Note]) VALUES (5, N'stand', N'abc')
SET IDENTITY_INSERT [dbo].[SKILL] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__EMPLOYEE__A9D105341CC9126A]    Script Date: 3/2/2018 3:39:29 PM ******/
ALTER TABLE [dbo].[EMPLOYEE] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__EMPLOYEE__A9D1053468145CF0]    Script Date: 3/2/2018 3:39:29 PM ******/
ALTER TABLE [dbo].[EMPLOYEE] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EMP_SKILL]  WITH CHECK ADD  CONSTRAINT [FK_EMP_SKILL_EMPLOYEE] FOREIGN KEY([EmpNo])
REFERENCES [dbo].[EMPLOYEE] ([EmpNo])
GO
ALTER TABLE [dbo].[EMP_SKILL] CHECK CONSTRAINT [FK_EMP_SKILL_EMPLOYEE]
GO
ALTER TABLE [dbo].[EMP_SKILL]  WITH CHECK ADD  CONSTRAINT [FK_EMP_SKILL_SKILL] FOREIGN KEY([SkillNo])
REFERENCES [dbo].[SKILL] ([SkillNo])
GO
ALTER TABLE [dbo].[EMP_SKILL] CHECK CONSTRAINT [FK_EMP_SKILL_SKILL]
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK_EMPLOYEE_DEPARTMENT] FOREIGN KEY([DeptNo])
REFERENCES [dbo].[DEPARTMENT] ([DeptNo])
GO
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [FK_EMPLOYEE_DEPARTMENT]
GO
ALTER TABLE [dbo].[EMP_SKILL]  WITH CHECK ADD CHECK  (([SkillLevel]>=(1) AND [SkillLevel]<=(3)))
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD CHECK  (([Level]>=(1) AND [Level]<=(7)))
GO
USE [master]
GO
ALTER DATABASE [EmployeeManagementSystem] SET  READ_WRITE 
GO
/**
QUESTION
**/
USE EmployeeManagementSystem
--Accept value of Level from 1 to 7
GO
Alter Table EMPLOYEE
ADD CHECK (Level>=1 AND Level <=7)
--Accept value of SillLevel from 1 to 3
GO
ALTER TABLE EMP_SKILL ADD CHECK (SkillLevel >=1 AND SkillLevel <=3)
--Q2: Add an Email fieldto EMPLOYEE table and make sure that the database will not allow 
--the value for Email to be inserted into a new row if that values has 
--already been used in another row
GO
ALTER TABLE EMPLOYEE ADD UNIQUE(Email)
GO
--Q2.b.alter table EMPLOYEE add constraint MgrNo default '0' for MgrNo
ALTER TABLE EMPLOYEE 
   Add DEFAULT '0' for MgrNo;
go
ALTER TABLE EMPLOYEE 
  Add DEFAULT '0' for Status;
/**
Q4. create view 
**/
GO
CREATE VIEW vwEMPLOYEE_TRACKING
AS
SELECT e.EmpNo, e.EmpName, e.Level
FROM EMPLOYEE e
WHERE e.Level>=3 AND e.Level<=5

