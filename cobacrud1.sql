USE [master]
GO
/****** Object:  Database [cobacrud1]    Script Date: 09/12/2020 21:59:33 ******/
CREATE DATABASE [cobacrud1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cobacrud1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\cobacrud1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cobacrud1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\cobacrud1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [cobacrud1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cobacrud1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cobacrud1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cobacrud1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cobacrud1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cobacrud1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cobacrud1] SET ARITHABORT OFF 
GO
ALTER DATABASE [cobacrud1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cobacrud1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cobacrud1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cobacrud1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cobacrud1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cobacrud1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cobacrud1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cobacrud1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cobacrud1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cobacrud1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cobacrud1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cobacrud1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cobacrud1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cobacrud1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cobacrud1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cobacrud1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cobacrud1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cobacrud1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cobacrud1] SET  MULTI_USER 
GO
ALTER DATABASE [cobacrud1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cobacrud1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cobacrud1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cobacrud1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [cobacrud1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [cobacrud1] SET QUERY_STORE = OFF
GO
USE [cobacrud1]
GO
/****** Object:  Table [dbo].[tbldata1]    Script Date: 09/12/2020 21:59:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbldata1](
	[iddata] [int] NOT NULL,
	[nama] [nvarchar](50) NOT NULL,
	[alamat] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tbldata1] ([iddata], [nama], [alamat]) VALUES (10001, N'Alpha', N'Semarang')
INSERT [dbo].[tbldata1] ([iddata], [nama], [alamat]) VALUES (10002, N'Bravo', N'Surabaya')
INSERT [dbo].[tbldata1] ([iddata], [nama], [alamat]) VALUES (10003, N'Charlie', N'Jakarta')
INSERT [dbo].[tbldata1] ([iddata], [nama], [alamat]) VALUES (10004, N'Delta', N'Bandung')
INSERT [dbo].[tbldata1] ([iddata], [nama], [alamat]) VALUES (10005, N'Echo', N'Solo')
INSERT [dbo].[tbldata1] ([iddata], [nama], [alamat]) VALUES (10006, N'Foxtrot', N'Denpasar')
INSERT [dbo].[tbldata1] ([iddata], [nama], [alamat]) VALUES (10007, N'Golf', N'Maluku')
INSERT [dbo].[tbldata1] ([iddata], [nama], [alamat]) VALUES (10008, N'Heli', N'Merauke')
GO
USE [master]
GO
ALTER DATABASE [cobacrud1] SET  READ_WRITE 
GO
