USE [master]
GO
/****** Object:  Database [LoginDataBase]    Script Date: 6/9/2022 4:33:42 PM ******/
CREATE DATABASE [LoginDataBase]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LoginDataBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LoginDataBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LoginDataBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LoginDataBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LoginDataBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LoginDataBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [LoginDataBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LoginDataBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LoginDataBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LoginDataBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LoginDataBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LoginDataBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LoginDataBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LoginDataBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LoginDataBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LoginDataBase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LoginDataBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LoginDataBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LoginDataBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LoginDataBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LoginDataBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LoginDataBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LoginDataBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LoginDataBase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LoginDataBase] SET  MULTI_USER 
GO
ALTER DATABASE [LoginDataBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LoginDataBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LoginDataBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LoginDataBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LoginDataBase] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LoginDataBase]
GO
/****** Object:  Table [dbo].[Emp_Attendance]    Script Date: 6/9/2022 4:33:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp_Attendance](
	[AttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[Employeeid] [int] NOT NULL,
	[AttendanceInTime] [datetime] NOT NULL,
	[AttendanceOutTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Emp_Attendance] PRIMARY KEY CLUSTERED 
(
	[AttendanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 6/9/2022 4:33:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Position] [varchar](50) NULL,
	[Office] [varchar](50) NULL,
	[Age] [int] NULL,
	[Salary] [int] NULL,
	[ImagePath] [varchar](max) NULL,
	[DOJ] [datetime] NULL,
	[Address1] [varchar](max) NULL,
	[ContactNumber] [bigint] NULL,
	[FatherName] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Pincode] [varchar](50) NULL,
	[TotalExperience] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/9/2022 4:33:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/9/2022 4:33:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](100) NULL,
	[RoleId] [int] NULL,
	[EmployeeId] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Emp_Attendance] ON 

INSERT [dbo].[Emp_Attendance] ([AttendanceId], [Employeeid], [AttendanceInTime], [AttendanceOutTime]) VALUES (4, 12, CAST(N'2022-08-08T00:00:00.000' AS DateTime), CAST(N'2022-08-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Emp_Attendance] ([AttendanceId], [Employeeid], [AttendanceInTime], [AttendanceOutTime]) VALUES (5, 12, CAST(N'2022-08-07T00:00:00.000' AS DateTime), CAST(N'2022-08-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Emp_Attendance] ([AttendanceId], [Employeeid], [AttendanceInTime], [AttendanceOutTime]) VALUES (6, 12, CAST(N'2022-04-04T00:00:00.000' AS DateTime), CAST(N'2022-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Emp_Attendance] ([AttendanceId], [Employeeid], [AttendanceInTime], [AttendanceOutTime]) VALUES (7, 12, CAST(N'2022-04-04T00:00:00.000' AS DateTime), CAST(N'2022-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Emp_Attendance] ([AttendanceId], [Employeeid], [AttendanceInTime], [AttendanceOutTime]) VALUES (8, 12, CAST(N'2022-04-04T00:00:00.000' AS DateTime), CAST(N'2022-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Emp_Attendance] ([AttendanceId], [Employeeid], [AttendanceInTime], [AttendanceOutTime]) VALUES (12, 12, CAST(N'2022-06-08T21:31:00.000' AS DateTime), CAST(N'2022-06-09T21:31:00.000' AS DateTime))
INSERT [dbo].[Emp_Attendance] ([AttendanceId], [Employeeid], [AttendanceInTime], [AttendanceOutTime]) VALUES (13, 12, CAST(N'2022-06-08T21:05:00.000' AS DateTime), CAST(N'2022-06-08T21:35:00.000' AS DateTime))
INSERT [dbo].[Emp_Attendance] ([AttendanceId], [Employeeid], [AttendanceInTime], [AttendanceOutTime]) VALUES (14, 17, CAST(N'2022-06-07T00:32:00.000' AS DateTime), CAST(N'2022-06-07T01:02:00.000' AS DateTime))
INSERT [dbo].[Emp_Attendance] ([AttendanceId], [Employeeid], [AttendanceInTime], [AttendanceOutTime]) VALUES (15, 17, CAST(N'2022-06-09T00:33:00.000' AS DateTime), CAST(N'2022-06-09T01:03:00.000' AS DateTime))
INSERT [dbo].[Emp_Attendance] ([AttendanceId], [Employeeid], [AttendanceInTime], [AttendanceOutTime]) VALUES (16, 17, CAST(N'2022-06-09T00:33:00.000' AS DateTime), CAST(N'2022-06-09T01:03:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Emp_Attendance] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary], [ImagePath], [DOJ], [Address1], [ContactNumber], [FatherName], [Address2], [State], [City], [Pincode], [TotalExperience]) VALUES (12, N'test', NULL, NULL, NULL, NULL, N'~/AppFiles/Images/default.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary], [ImagePath], [DOJ], [Address1], [ContactNumber], [FatherName], [Address2], [State], [City], [Pincode], [TotalExperience]) VALUES (15, N'sid', N'Software Engineer', N'Mohali', 12, 123, N'~/AppFiles/Images/pic222054045.jpg', CAST(N'2019-12-01T00:09:00.000' AS DateTime), N' H NO Near Garden', 12112212, NULL, N'Byepass', N'India', N'Amritsar', N'14378', 6)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary], [ImagePath], [DOJ], [Address1], [ContactNumber], [FatherName], [Address2], [State], [City], [Pincode], [TotalExperience]) VALUES (16, N'siddarth', N'test', N'123', 12, 12, N'~/AppFiles/Images/default.png', CAST(N'2022-06-29T00:13:00.000' AS DateTime), N'mjhjh', 1234567896, NULL, N'jjhhj', N'jhhhj', N'jhhhj', N'1234', 3)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary], [ImagePath], [DOJ], [Address1], [ContactNumber], [FatherName], [Address2], [State], [City], [Pincode], [TotalExperience]) VALUES (17, N'Name', N'Name', N'Name', 12, 1234, N'~/AppFiles/Images/default.png', CAST(N'2022-06-14T00:33:00.000' AS DateTime), N'jhj', 12345678, NULL, N'jhh', N'jhh', N'hjh', N'123', 7)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary], [ImagePath], [DOJ], [Address1], [ContactNumber], [FatherName], [Address2], [State], [City], [Pincode], [TotalExperience]) VALUES (18, N'user', N'user', N'yser', 56, 122, N'~/AppFiles/Images/default.png', CAST(N'2022-06-20T00:35:00.000' AS DateTime), N'mjhj', 12334, NULL, N'jhjhj', N'jhjjh', N'jhjhj', N'123', 8)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary], [ImagePath], [DOJ], [Address1], [ContactNumber], [FatherName], [Address2], [State], [City], [Pincode], [TotalExperience]) VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Position], [Office], [Age], [Salary], [ImagePath], [DOJ], [Address1], [ContactNumber], [FatherName], [Address2], [State], [City], [Pincode], [TotalExperience]) VALUES (20, N'Poonam Mahajan', N'Software Developer', N'Mohali', 36, 1000000, N'~/AppFiles/Images/default.png', CAST(N'2022-06-09T14:39:00.000' AS DateTime), N'Mohali sector 71', 83636444, NULL, N'IVY hospital', N'Punjab', N'Mohali', N'1762376', 7)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [RoleName]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([Id], [RoleName]) VALUES (2, N'employee')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (1, N'admin', N'admin', 1, NULL)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (3, N'test', N'test', 2, 12)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (4, N'sid', N'1234', 2, 15)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (5, N'siddarth', N'123456', 2, 16)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (6, N'Name', N'Name', 2, 17)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (7, N'user', N'user', 2, 18)
INSERT [dbo].[User] ([UserID], [UserName], [Password], [RoleId], [EmployeeId]) VALUES (8, N'Poonam Mahajan', N'poonam', 2, 20)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Emp_Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Emp_Attendance_Employee] FOREIGN KEY([Employeeid])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Emp_Attendance] CHECK CONSTRAINT [FK_Emp_Attendance_Employee]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Employee]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [LoginDataBase] SET  READ_WRITE 
GO
