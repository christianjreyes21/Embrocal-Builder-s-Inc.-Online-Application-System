USE [master]
GO
/****** Object:  Database [Embrocal]    Script Date: 1/17/2016 2:57:25 PM ******/
CREATE DATABASE [Embrocal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Embrocal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Embrocal.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Embrocal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Embrocal_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Embrocal] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Embrocal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Embrocal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Embrocal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Embrocal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Embrocal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Embrocal] SET ARITHABORT OFF 
GO
ALTER DATABASE [Embrocal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Embrocal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Embrocal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Embrocal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Embrocal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Embrocal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Embrocal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Embrocal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Embrocal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Embrocal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Embrocal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Embrocal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Embrocal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Embrocal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Embrocal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Embrocal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Embrocal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Embrocal] SET RECOVERY FULL 
GO
ALTER DATABASE [Embrocal] SET  MULTI_USER 
GO
ALTER DATABASE [Embrocal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Embrocal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Embrocal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Embrocal] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Embrocal] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Embrocal', N'ON'
GO
USE [Embrocal]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 1/17/2016 2:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accounts](
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[adminDetails]    Script Date: 1/17/2016 2:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[adminDetails](
	[username] [varchar](20) NULL,
	[name] [varchar](50) NULL,
	[position] [varchar](20) NULL,
	[age] [int] NULL,
	[contact] [varchar](11) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Applicant]    Script Date: 1/17/2016 2:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Applicant](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varbinary](max) NULL,
	[LastName] [varchar](100) NULL,
	[FirstName] [varchar](100) NULL,
	[MiddleName] [varchar](100) NULL,
	[CityAddress] [varchar](100) NULL,
	[ProvincialAddress] [varchar](100) NULL,
	[ContactNumber] [varchar](100) NULL,
	[DateOfBirth] [varchar](100) NULL,
	[PlaceOfBirth] [varchar](100) NULL,
	[CivilStatus] [varchar](100) NULL,
	[Citizenship] [varchar](100) NULL,
	[Height] [varchar](100) NULL,
	[Weight] [varchar](100) NULL,
	[Religion] [varchar](100) NULL,
	[Sex] [varchar](100) NULL,
	[Spouse] [varchar](100) NULL,
	[SpouseOccupation] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[Language] [varchar](100) NULL,
	[FatherName] [varchar](100) NULL,
	[FatherOccupation] [varchar](100) NULL,
	[MotherName] [varchar](100) NULL,
	[MotherOccupation] [varchar](100) NULL,
	[ParentAddress] [varchar](100) NULL,
	[EmgPerson] [varchar](100) NULL,
	[EmgRelation] [varchar](100) NULL,
	[EmgAddress] [varchar](100) NULL,
	[EmgContactNumber] [varchar](100) NULL,
	[ElemSchool] [varchar](100) NULL,
	[ElemYear] [varchar](100) NULL,
	[HighSchool] [varchar](100) NULL,
	[HighYear] [varchar](100) NULL,
	[College] [varchar](100) NULL,
	[CollegeYear] [varchar](100) NULL,
	[Course] [varchar](100) NULL,
	[VocationalCourse] [varchar](100) NULL,
	[VocationalYear] [varchar](100) NULL,
	[EmpFrom] [varchar](100) NULL,
	[EmpTo] [varchar](100) NULL,
	[EmpPosition] [varchar](100) NULL,
	[EmpCompany] [varchar](100) NULL,
	[EmpTotalExp] [varchar](100) NULL,
	[RefName] [varchar](100) NULL,
	[RefOccupation] [varchar](100) NULL,
	[RefAddress] [varchar](100) NULL,
	[SSSNumber] [varchar](100) NULL,
	[LatestResCert] [varchar](100) NULL,
	[TIN] [varchar](100) NULL,
	[DateIssued] [varchar](100) NULL,
	[PagIbigNumber] [varchar](100) NULL,
	[PlaceIssued] [varchar](100) NULL,
	[Q1] [varchar](100) NULL,
	[RelName] [varchar](100) NULL,
	[RelPosition] [varchar](100) NULL,
	[Position] [varchar](100) NULL,
	[Username] [varchar](100) NULL,
	[Password] [varchar](100) NULL,
	[Status] [varchar](100) NULL,
	[Schedule] [varchar](100) NULL,
	[Comment] [varchar](5000) NULL,
 CONSTRAINT [PK_Applicant] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comments]    Script Date: 1/17/2016 2:57:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comments](
	[username] [varchar](20) NULL,
	[comment] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[adminDetails]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[accounts] ([username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[accounts] ([username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [Embrocal] SET  READ_WRITE 
GO
