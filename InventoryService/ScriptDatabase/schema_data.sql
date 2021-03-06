USE [master]
GO
/****** Object:  Database [JsonWebToken]    Script Date: 5/13/2021 8:22:42 PM ******/
CREATE DATABASE [JsonWebToken]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JsonWebToken', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\JsonWebToken.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JsonWebToken_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\JsonWebToken_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [JsonWebToken] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JsonWebToken].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JsonWebToken] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JsonWebToken] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JsonWebToken] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JsonWebToken] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JsonWebToken] SET ARITHABORT OFF 
GO
ALTER DATABASE [JsonWebToken] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JsonWebToken] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JsonWebToken] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JsonWebToken] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JsonWebToken] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JsonWebToken] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JsonWebToken] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JsonWebToken] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JsonWebToken] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JsonWebToken] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JsonWebToken] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JsonWebToken] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JsonWebToken] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JsonWebToken] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JsonWebToken] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JsonWebToken] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JsonWebToken] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JsonWebToken] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JsonWebToken] SET  MULTI_USER 
GO
ALTER DATABASE [JsonWebToken] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JsonWebToken] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JsonWebToken] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JsonWebToken] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JsonWebToken] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JsonWebToken] SET QUERY_STORE = OFF
GO
USE [JsonWebToken]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/13/2021 8:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Category] [varchar](100) NULL,
	[Color] [varchar](20) NULL,
	[UnitPrice] [decimal](18, 0) NOT NULL,
	[AvailableQuantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 5/13/2021 8:22:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[UserName] [varchar](30) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Role] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [Category], [Color], [UnitPrice], [AvailableQuantity]) VALUES (1, N'Product Item 1', N'ABC', N'Red', CAST(1000 AS Decimal(18, 0)), 50)
INSERT [dbo].[Products] ([ProductId], [Name], [Category], [Color], [UnitPrice], [AvailableQuantity]) VALUES (2, N'Product Item 2', N'XYZ', N'Blue', CAST(1000 AS Decimal(18, 0)), 50)
INSERT [dbo].[Products] ([ProductId], [Name], [Category], [Color], [UnitPrice], [AvailableQuantity]) VALUES (3, N'Product Item 4', N'YYY', N'Blue', CAST(1000 AS Decimal(18, 0)), 50)
INSERT [dbo].[Products] ([ProductId], [Name], [Category], [Color], [UnitPrice], [AvailableQuantity]) VALUES (4, N'Product Item 5', N'YYYA', N'Blue', CAST(1000 AS Decimal(18, 0)), 50)
INSERT [dbo].[Products] ([ProductId], [Name], [Category], [Color], [UnitPrice], [AvailableQuantity]) VALUES (5, N'Product Item 9', N'TTT', N'Red', CAST(100 AS Decimal(18, 0)), 5)
INSERT [dbo].[Products] ([ProductId], [Name], [Category], [Color], [UnitPrice], [AvailableQuantity]) VALUES (6, N'Product Item 11', N'TTTT', N'Red', CAST(100 AS Decimal(18, 0)), 5)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [UserName], [Email], [Password], [CreatedDate], [Role]) VALUES (1, N'Inventory', N'Admin', N'InventoryAdmin', N'InventoryAdmin@abc.com', N'$admin@2017', CAST(N'2021-03-19T21:50:06.060' AS DateTime), N'Admin')
INSERT [dbo].[UserInfo] ([UserId], [FirstName], [LastName], [UserName], [Email], [Password], [CreatedDate], [Role]) VALUES (2, N'Tung', N'Nguyen', N'Tung', N'tung@gmail.com', N'Asd123!', CAST(N'2021-03-18T00:00:00.000' AS DateTime), N'Pro,Admin')
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
ALTER TABLE [dbo].[UserInfo] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
USE [master]
GO
ALTER DATABASE [JsonWebToken] SET  READ_WRITE 
GO
