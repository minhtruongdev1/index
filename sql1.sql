USE [master]
GO
/****** Object:  Database [DATotNghiepSpringBoot]    Script Date: 10/15/2022 4:26:00 PM ******/
CREATE DATABASE [DATotNghiepSpringBoot]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DATotNghiepSpringBoot', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DATotNghiepSpringBoot.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DATotNghiepSpringBoot_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DATotNghiepSpringBoot_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DATotNghiepSpringBoot].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET ARITHABORT OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET  MULTI_USER 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DATotNghiepSpringBoot', N'ON'
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET QUERY_STORE = OFF
GO
USE [DATotNghiepSpringBoot]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 10/15/2022 4:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 10/15/2022 4:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[ID] [int] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[RoleID] [nvarchar](10) NULL,
 CONSTRAINT [PK_Authorities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/15/2022 4:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [nchar](4) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 10/15/2022 4:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Size] [int] NULL,
	[type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10/15/2022 4:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[ID] [int] NOT NULL,
	[OrderID] [int] NULL,
	[ProductVariantID] [int] NULL,
	[Discount] [bit] NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/15/2022 4:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] NOT NULL,
	[pay] [int] NULL,
	[Username] [nvarchar](50) NULL,
	[ShippingAddressID] [int] NULL,
	[Grandtotal] [nvarchar](50) NULL,
	[OrderDate] [date] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pays]    Script Date: 10/15/2022 4:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pays](
	[ID] [int] NOT NULL,
	[PayType] [bit] NULL,
 CONSTRAINT [PK_Pays] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/15/2022 4:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [nchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CategoryID] [nchar](4) NULL,
	[CreateDate] [date] NULL,
	[Available] [bit] NULL,
	[Image] [nvarchar](50) NULL,
	[UpdateDate] [date] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVariants]    Script Date: 10/15/2022 4:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVariants](
	[ID] [int] NOT NULL,
	[ImageID] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[Price] [float] NULL,
	[Discount] [bit] NULL,
	[Evaluate] [nvarchar](50) NULL,
	[CPU] [nvarchar](50) NULL,
	[Ram] [nvarchar](50) NULL,
	[HardDrice] [nvarchar](50) NULL,
	[Screen] [nvarchar](50) NULL,
	[Connector] [nvarchar](50) NULL,
	[OperatingSystem] [nvarchar](50) NULL,
	[Design] [nvarchar](50) NULL,
	[SizeVolume] [nvarchar](50) NULL,
	[ReleaseTime] [nvarchar](50) NULL,
	[RearCamera] [nvarchar](50) NULL,
	[FrontCamera] [nvarchar](50) NULL,
	[Capacity] [nvarchar](50) NULL,
	[Chips] [nvarchar](50) NULL,
	[Sim] [nvarchar](50) NULL,
	[Battery] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductVariant] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 10/15/2022 4:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingAddress]    Script Date: 10/15/2022 4:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingAddress](
	[ID] [int] NOT NULL,
	[Province] [nvarchar](50) NULL,
	[District] [nvarchar](50) NULL,
	[Wards] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Name] [nvarchar](50) NULL,
	[SDT] [nvarchar](20) NULL,
	[Note] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Transport] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Accounts]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_ProductVariants] FOREIGN KEY([ProductVariantID])
REFERENCES [dbo].[ProductVariants] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_ProductVariants]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Pays] FOREIGN KEY([pay])
REFERENCES [dbo].[Pays] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Pays]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ShippingAddress] FOREIGN KEY([ShippingAddressID])
REFERENCES [dbo].[ShippingAddress] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ShippingAddress]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Images] FOREIGN KEY([Image])
REFERENCES [dbo].[Images] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Images]
GO
ALTER TABLE [dbo].[ProductVariants]  WITH CHECK ADD  CONSTRAINT [FK_ProductVariants_Images] FOREIGN KEY([ImageID])
REFERENCES [dbo].[Images] ([ID])
GO
ALTER TABLE [dbo].[ProductVariants] CHECK CONSTRAINT [FK_ProductVariants_Images]
GO
USE [master]
GO
ALTER DATABASE [DATotNghiepSpringBoot] SET  READ_WRITE 
GO
