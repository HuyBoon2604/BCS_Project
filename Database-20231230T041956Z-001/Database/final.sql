USE [master]
GO
/****** Object:  Database [BCS_SWP391]    Script Date: 11/25/2023 11:35:30 PM ******/
CREATE DATABASE [BCS_SWP391]
 /*CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BCS_SWP391', FILENAME = N'E:\Study\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BCS_SWP391.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BCS_SWP391_log', FILENAME = N'E:\Study\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BCS_SWP391_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF*/
GO
ALTER DATABASE [BCS_SWP391] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BCS_SWP391].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BCS_SWP391] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BCS_SWP391] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BCS_SWP391] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BCS_SWP391] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BCS_SWP391] SET ARITHABORT OFF 
GO
ALTER DATABASE [BCS_SWP391] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BCS_SWP391] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BCS_SWP391] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BCS_SWP391] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BCS_SWP391] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BCS_SWP391] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BCS_SWP391] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BCS_SWP391] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BCS_SWP391] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BCS_SWP391] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BCS_SWP391] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BCS_SWP391] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BCS_SWP391] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BCS_SWP391] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BCS_SWP391] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BCS_SWP391] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BCS_SWP391] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BCS_SWP391] SET RECOVERY FULL 
GO
ALTER DATABASE [BCS_SWP391] SET  MULTI_USER 
GO
ALTER DATABASE [BCS_SWP391] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BCS_SWP391] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BCS_SWP391] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BCS_SWP391] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BCS_SWP391] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BCS_SWP391] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BCS_SWP391', N'ON'
GO
ALTER DATABASE [BCS_SWP391] SET QUERY_STORE = ON
GO
ALTER DATABASE [BCS_SWP391] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BCS_SWP391]
GO
/****** Object:  Table [dbo].[Bird]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bird](
	[BirdID] [nvarchar](10) NOT NULL,
	[BirdSize] [nvarchar](10) NOT NULL,
	[BirdType] [nvarchar](10) NOT NULL,
	[BirdName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Bird] PRIMARY KEY CLUSTERED 
(
	[BirdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BirdProduct]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BirdProduct](
	[BirdID] [nvarchar](10) NOT NULL,
	[ProductID] [nvarchar](10) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_BirdProduct] PRIMARY KEY CLUSTERED 
(
	[BirdID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BirdType]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BirdType](
	[BirdTypeID] [nvarchar](10) NOT NULL,
	[BirdTypeName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_BirdType] PRIMARY KEY CLUSTERED 
(
	[BirdTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogID] [nvarchar](10) NOT NULL,
	[UserID] [nvarchar](10) NOT NULL,
	[BlogTitle] [nvarchar](100) NOT NULL,
	[BlogSummary] [nvarchar](100) NOT NULL,
	[BlogContent] [nvarchar](max) NOT NULL,
	[BlogType] [nvarchar](50) NOT NULL,
	[CreateAt] [date] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [nvarchar](10) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryProduct]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryProduct](
	[CategoryID] [nvarchar](10) NOT NULL,
	[ProductID] [nvarchar](10) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_CategoryProduct] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [nvarchar](10) NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[ColorName] [nvarchar](30) NOT NULL,
	[MaterialID] [nvarchar](10) NULL,
	[IsCustom] [bit] NOT NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColorProduct]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorProduct](
	[ProductID] [nvarchar](10) NOT NULL,
	[ColorID] [nvarchar](10) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_ColorProduct] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[FeedbackID] [nvarchar](10) NOT NULL,
	[UserID] [nvarchar](10) NOT NULL,
	[ReplyID] [nvarchar](10) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[FeedbackContent] [nvarchar](max) NULL,
	[Rating] [nchar](1) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImageID] [nvarchar](10) NOT NULL,
	[BlogID] [nvarchar](10) NULL,
	[ProductID] [nvarchar](10) NULL,
	[StyleID] [nvarchar](10) NULL,
	[SizeID] [nvarchar](10) NULL,
	[MaterialID] [nvarchar](10) NULL,
	[BirdID] [nvarchar](10) NULL,
	[ImageURL] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[MaterialID] [nvarchar](10) NOT NULL,
	[MaterialName] [nvarchar](50) NOT NULL,
	[SizeID] [nvarchar](10) NULL,
	[IsCustom] [bit] NOT NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialProduct]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialProduct](
	[MaterialID] [nvarchar](10) NOT NULL,
	[ProductID] [nvarchar](10) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_MaterialProduct] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [nvarchar](10) NOT NULL,
	[UserID] [nvarchar](10) NOT NULL,
	[Note] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[total] [decimal](18, 0) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [nvarchar](10) NOT NULL,
	[ProductID] [nvarchar](10) NOT NULL,
	[FeedbackID] [nvarchar](10) NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Status] [bit] NOT NULL,
	[IsCustom] [bit] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [nvarchar](50) NOT NULL,
	[OrderID] [nvarchar](10) NOT NULL,
	[DateTime] [date] NULL,
	[amout] [decimal](18, 0) NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Status] [bit] NOT NULL,
	[TransactionCode] [nvarchar](max) NULL,
	[vnp_TransDate] [nvarchar](max) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [nvarchar](10) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Discount] [int] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCustom]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCustom](
	[ProductCustomID] [nvarchar](10) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[ProductSize] [nvarchar](10) NULL,
	[ProductColor] [nvarchar](10) NULL,
	[ProductMaterial] [nvarchar](10) NULL,
	[ProductStyle] [nvarchar](10) NULL,
	[UserID] [nvarchar](10) NOT NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ProductCustom] PRIMARY KEY CLUSTERED 
(
	[ProductCustomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [nvarchar](10) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[SizeID] [nvarchar](10) NOT NULL,
	[Size] [nvarchar](50) NOT NULL,
	[SizeDescription] [nvarchar](50) NULL,
	[StyleID] [nvarchar](10) NULL,
	[IsCustom] [bit] NOT NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizeProduct]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeProduct](
	[ProductID] [nvarchar](10) NOT NULL,
	[SizeID] [nvarchar](10) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_SizeProduct] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Style]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Style](
	[StyleID] [nvarchar](10) NOT NULL,
	[StyleName] [nvarchar](30) NOT NULL,
	[StyleDescription] [nvarchar](200) NULL,
	[Status] [bit] NOT NULL,
	[IsCustom] [bit] NOT NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Style] PRIMARY KEY CLUSTERED 
(
	[StyleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StyleProduct]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StyleProduct](
	[StyleID] [nvarchar](10) NOT NULL,
	[ProductID] [nvarchar](10) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_StyleProduct] PRIMARY KEY CLUSTERED 
(
	[StyleID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [nvarchar](10) NOT NULL,
	[RoleID] [nvarchar](10) NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[DateOfBird] [date] NULL,
	[Address] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](11) NULL,
	[Email] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[VoucherID] [nvarchar](10) NOT NULL,
	[VoucherName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Discount] [nvarchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[CreateAt] [date] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[VoucherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherUserOrder]    Script Date: 11/25/2023 11:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherUserOrder](
	[VoucherID] [nvarchar](10) NOT NULL,
	[OrderID] [nvarchar](10) NOT NULL,
	[UserID] [nvarchar](10) NOT NULL,
	[UseDate] [date] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_VoucherUserOrder] PRIMARY KEY CLUSTERED 
(
	[VoucherID] ASC,
	[OrderID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0001', N'Si0001', N'BT0001', N'Amazone', N'string', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0002', N'SiB0002', N'BT0001', N'Vẹt Quaker', N'Vẹt với bộ lông xanh lá cây và đỏ, thường có tính cách nghịch ngợm và hoạt bát.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0003', N'SiB0001', N'BT0001', N'Vẹt Parrotlet', N'Vẹt nhỏ với bộ lông sặc sỡ, thích hợp cho việc nuôi làm thú cưng.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0004', N'SiB0002', N'BT0001', N'Vẹt Mini Macaw', N'Vẹt có kích thước nhỏ hơn so với các loài Macaw khác, nhưng vẫn có bộ lông màu sắc độc đáo.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0005', N'SiB0001', N'BT0001', N'Vẹt Lovebird', N'Chim có bộ lông màu đa dạng và thường sống thành đôi.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0006', N'SiB0002', N'BT0001', N'Vẹt Jardine', N'Loại vẹt với bộ lông màu xanh lá cây và đỏ, thích hợp cho việc nuôi làm thú cưng.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0007', N'SiB0002', N'BT0002', N'Chim Bồ Câu', N'Chim với bộ lông màu trắng tinh khôi, thường được biểu tượng hóa về tình yêu.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0008', N'SiB0003', N'BT0001', N'Vẹt Cockatoo', N'Vẹt lớn với đỉnh đầu phồng trắng, có khả năng học nói tốt.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0009', N'SiB0002', N'BT0001', N'Vẹt Cockatiel Xuất Sắc', N'Loại vẹt nhỏ, thân thiện và có khả năng học nói tốt.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0010', N'SiB0002', N'BT0001', N'Vẹt Caique', N'Vẹt nhỏ với bộ lông sặc sỡ và tính cách vui vẻ, hoạt bát.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0011', N'SiB0003', N'BT0001', N'Vẹt Amazon', N'Loài vẹt lớn, có khả năng học nói và tính cách độc đáo.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0012', N'SiB0002', N'BT0001', N'Vẹt Senegal', N'Vẹt nhỏ với bộ lông màu nâu và đỏ, thân thiện và thích hợp cho gia đình.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0013', N'SiB0002', N'BT0001', N'Vẹt Pionus', N'Vẹt có bộ lông màu xanh và đỏ, có khả năng học nói.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0014', N'SiB0002', N'BT0001', N'Vẹt Parakeet', N'Loại vẹt nhỏ, thân thiện và thích hợp cho người mới nuôi vẹt.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0015', N'SiB0003', N'BT0001', N'Vẹt Macaw', N'Loài vẹt lớn với bộ lông màu sắc rực rỡ, có khả năng học nói tốt.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0016', N'SiB0002', N'BT0001', N'Vẹt Lorikeet', N'Vẹt với bộ lông màu sắc rực rỡ và có khả năng ăn mật hoa.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0017', N'SiB0001', N'BT0003', N'Chim sẻ Anh', N'Chim nhỏ với bộ lông màu sắc đa dạng, thích hợp cho người mới nuôi chim.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0018', N'SiB0002', N'BT0001', N'Vẹt Connure', N'Loại vẹt nhỏ đến trung bình, thân thiện và hoạt bát.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0019', N'SiB0001', N'BT0001', N'Vẹt Cockatoo nhỏ', N'Vẹt lớn với đỉnh đầu phồng trắng, có khả năng học nói tốt.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0020', N'SiB0001', N'BT0004', N'Chim yến', N'Chim nhỏ với bộ lông màu sắc đa dạng, thích hợp cho việc nuôi làm thú cưng.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0021', N'SiB0001', N'BT0001', N'Vẹt Budgie', N'Loại vẹt nhỏ và thân thiện, thích hợp cho người mới nuôi vẹt.', 1)
INSERT [dbo].[Bird] ([BirdID], [BirdSize], [BirdType], [BirdName], [Description], [Status]) VALUES (N'B0022', N'SiB0003', N'BT0001', N'Vẹt Afican Grey', N'Loài vẹt lớn với khả năng học nói xuất sắc và tính cách thông minh.', 1)
GO
INSERT [dbo].[BirdProduct] ([BirdID], [ProductID], [Status]) VALUES (N'B0001', N'PDT3d94349', 1)
INSERT [dbo].[BirdProduct] ([BirdID], [ProductID], [Status]) VALUES (N'B0001', N'PDT8b84b63', 1)
GO
INSERT [dbo].[BirdType] ([BirdTypeID], [BirdTypeName], [Description], [Status]) VALUES (N'BT0001', N'Vẹt', N'Vẹt', 1)
INSERT [dbo].[BirdType] ([BirdTypeID], [BirdTypeName], [Description], [Status]) VALUES (N'BT0002', N'Chim bồ câu', N'Chim bồ câu', 1)
INSERT [dbo].[BirdType] ([BirdTypeID], [BirdTypeName], [Description], [Status]) VALUES (N'BT0003', N'Chim sẻ', N'Chim sẻ', 1)
INSERT [dbo].[BirdType] ([BirdTypeID], [BirdTypeName], [Description], [Status]) VALUES (N'BT0004', N'Chim yến', N'Chim yến', 1)
GO
INSERT [dbo].[Blog] ([BlogID], [UserID], [BlogTitle], [BlogSummary], [BlogContent], [BlogType], [CreateAt], [Status]) VALUES (N'BO0001', N'US5b93e35', N'Suggestions for buy ornamental parrots for beginners', N'The hobby of pet birds is very popular today, it is not difficult to find an address to buy young…', N'To buy the right parrot for the player is really not easy, you need to research all the information related to it before making a decision to buy ornamental parrots. This article will suggest to help you choose which species to buy ornamental parrots for easy raising. This article will be quite helpful for beginners, please join Pet Me shop to learn more!

Suggestions for buy ornamental parrots that are easy to raise for beginners:

	New to learning and raising parrots, you should choose species that are easy to raise, easy to adapt to tropical habitats, and not too difficult to train. Should buy ornamental parrots according to the suggestions below will be suitable for newbies.

	Lovebird Parrot: This parrot is quite small, with a cheerful, energetic, agile personality that is very cute. Especially, they are suitable for keeping in pairs, happy herds. If raised from a young age, they will be quite loyal to their owners. The parrot has striking, beautiful colors. However, they are not good at imitating voices, are quite noisy, boisterous, so they will only suit those with a lively personality.

	Hong Kong Yen Phung Parrot: Another small sized parrot you can refer to. The advantage of this parrot line is that they have a lot of different colors, looking very pleasing to the eyes. The price of Yen Phung parrot is cheap, easy to raise, and very healthy. It is not difficult for you to choose a healthy parrot to raise. This breed is very friendly, however difficult to train.

	Cockatoo Parrot: This parrot breed is the friendliest, also very intelligent. With beautiful appearance, wide sides, good speech ability, lively, love to dance to music, Cockatoo parrots make anyone enjoy playing with them. Cockatoo parrots are expensive, so not everyone can afford such a parrot.

	African Gray Parrot: This parrot breed is very intelligent, although its appearance is not impressive, but they have the ability to learn to speak well, very suitable for those who love to raise talking parrots. The longer they keep them, the more they will wrap their owners, suitable as pets in the house.

	Blue and Gold Macaw parrots: Blue and Gold Macaw parrots have a large body size, long body, bright, outstanding colors, very eye-catching. They are also extremely friendly, have the ability to learn to speak very well, are an intelligent species, loved by many owners. Like the Cockatoo, the Blue and Gold Macaw is also an expensive parrot.

	In addition to these popular breeds, you can learn to buying ornamental parrots some other lines such as: Yellow-cheeked parrots, pink-breasted parrots, Malayan parrots, Sun Conure parrots. These are easy to raise, healthy strains, suitable for those who are new to raising parrots.

General characteristics of healthy parrots

	When buy ornamental parrots, the first thing you need to consider is the age of the parrot. If the parrot is young and has just grown its feathers, the ability to train and get along with the parrot will be more effective than that of an adult.

	Whether young or adult parrots, they will all have common signs to identify health. A healthy parrot will be agile, alert, steady, straight, and bright eyes. Their coat is smooth, shiny, not tangled, no signs of lint, fighting, or wounds. In addition, you need to pay attention to the parrot’s anus, a healthy parrot’s anus will be clean, without sticky stools, and no mucus.', N'Buy', CAST(N'2023-10-28' AS Date), 1)
INSERT [dbo].[Blog] ([BlogID], [UserID], [BlogTitle], [BlogSummary], [BlogContent], [BlogType], [CreateAt], [Status]) VALUES (N'BO068ea9', N'US0002', N'abcabcabcabcabcabcabcabcabcabcabc', N'abcabcabcabcabcabcabcabcabcabcabcabcabca...', N'abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabc', N'', CAST(N'2023-11-04' AS Date), 0)
INSERT [dbo].[Blog] ([BlogID], [UserID], [BlogTitle], [BlogSummary], [BlogContent], [BlogType], [CreateAt], [Status]) VALUES (N'BO292205', N'US0002', N'abc', N'{"errors":{"":["JsonToken EndArray is no...', N'{"errors":{"":["JsonToken EndArray is not valid for closing JsonType Object. Path '''', line 1, position 2704."],"request":["The request field is required."],"imageUrl":["Unexpected character encountered while parsing value: [. Path ''imageUrl'', line 1, position 2703."]},"type":"https://tools.ietf.org/html/rfc7231#section-6.5.1","title":"One or more validation errors occurred.","status":400,"traceId":"00-b30a308e669e8dc19ce7f408fbe2d5b9-7dd001b7dcfd1f99-00"}{"errors":{"":["JsonToken EndArray is not valid for closing JsonType Object. Path '''', line 1, position 2704."],"request":["The request field is required."],"imageUrl":["Unexpected character encountered while parsing value: [. Path ''imageUrl'', line 1, position 2703."]},"type":"https://tools.ietf.org/html/rfc7231#section-6.5.1","title":"One or more validation errors occurred.","status":400,"traceId":"00-b30a308e669e8dc19ce7f408fbe2d5b9-7dd001b7dcfd1f99-00"}{"errors":{"":["JsonToken EndArray is not valid for closing JsonType Object. Path '''', line 1, position 2704."],"request":["The request field is required."],"imageUrl":["Unexpected character encountered while parsing value: [. Path ''imageUrl'', line 1, position 2703."]},"type":"https://tools.ietf.org/html/rfc7231#section-6.5.1","title":"One or more validation errors occurred.","status":400,"traceId":"00-b30a308e669e8dc19ce7f408fbe2d5b9-7dd001b7dcfd1f99-00"}', N'post', CAST(N'2023-11-09' AS Date), 0)
INSERT [dbo].[Blog] ([BlogID], [UserID], [BlogTitle], [BlogSummary], [BlogContent], [BlogType], [CreateAt], [Status]) VALUES (N'BO3c1355', N'US0002', N'abc', N'{"errors":{"":["JsonToken EndArray is no...', N'{"errors":{"":["JsonToken EndArray is not valid for closing JsonType Object. Path '''', line 1, position 2704."],"request":["The request field is required."],"imageUrl":["Unexpected character encountered while parsing value: [. Path ''imageUrl'', line 1, position 2703."]},"type":"https://tools.ietf.org/html/rfc7231#section-6.5.1","title":"One or more validation errors occurred.","status":400,"traceId":"00-b30a308e669e8dc19ce7f408fbe2d5b9-7dd001b7dcfd1f99-00"}{"errors":{"":["JsonToken EndArray is not valid for closing JsonType Object. Path '''', line 1, position 2704."],"request":["The request field is required."],"imageUrl":["Unexpected character encountered while parsing value: [. Path ''imageUrl'', line 1, position 2703."]},"type":"https://tools.ietf.org/html/rfc7231#section-6.5.1","title":"One or more validation errors occurred.","status":400,"traceId":"00-b30a308e669e8dc19ce7f408fbe2d5b9-7dd001b7dcfd1f99-00"}{"errors":{"":["JsonToken EndArray is not valid for closing JsonType Object. Path '''', line 1, position 2704."],"request":["The request field is required."],"imageUrl":["Unexpected character encountered while parsing value: [. Path ''imageUrl'', line 1, position 2703."]},"type":"https://tools.ietf.org/html/rfc7231#section-6.5.1","title":"One or more validation errors occurred.","status":400,"traceId":"00-b30a308e669e8dc19ce7f408fbe2d5b9-7dd001b7dcfd1f99-00"}{"errors":{"":["JsonToken EndArray is not valid for closing JsonType Object. Path '''', line 1, position 2704."],"request":["The request field is required."],"imageUrl":["Unexpected character encountered while parsing value: [. Path ''imageUrl'', line 1, position 2703."]},"type":"https://tools.ietf.org/html/rfc7231#section-6.5.1","title":"One or more validation errors occurred.","status":400,"traceId":"00-b30a308e669e8dc19ce7f408fbe2d5b9-7dd001b7dcfd1f99-00"}{"errors":{"":["JsonToken EndArray is not valid for closing JsonType Object. Path '''', line 1, position 2704."],"request":["The request field is required."],"imageUrl":["Unexpected character encountered while parsing value: [. Path ''imageUrl'', line 1, position 2703."]},"type":"https://tools.ietf.org/html/rfc7231#section-6.5.1","title":"One or more validation errors occurred.","status":400,"traceId":"00-b30a308e669e8dc19ce7f408fbe2d5b9-7dd001b7dcfd1f99-00"}', N'post', CAST(N'2023-11-09' AS Date), 0)
INSERT [dbo].[Blog] ([BlogID], [UserID], [BlogTitle], [BlogSummary], [BlogContent], [BlogType], [CreateAt], [Status]) VALUES (N'BO99b7f9', N'US5b93e35', N'string', N'abcabcabcabcabcabcabcabcabcabcabcabcabca...', N'abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabc', N'string', CAST(N'2023-11-09' AS Date), 0)
INSERT [dbo].[Blog] ([BlogID], [UserID], [BlogTitle], [BlogSummary], [BlogContent], [BlogType], [CreateAt], [Status]) VALUES (N'BOa45479', N'US0002', N'abc', N'abcabcabcabcabcabcabcabcabcabcabcabcabca...', N'abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabc', N'', CAST(N'2023-11-06' AS Date), 0)
INSERT [dbo].[Blog] ([BlogID], [UserID], [BlogTitle], [BlogSummary], [BlogContent], [BlogType], [CreateAt], [Status]) VALUES (N'BOb8a5e5', N'US0002', N'Test', N'wqeqeqwewqewqwqeqwewqeqwewqeqeqweqweasda...', N'wqeqeqwewqewqwqeqwewqeqwewqeqeqweqweasdadasfasdfsdaasdfasdfasdfasfasfdasasdfasfdsafasfdasafsdfffadsfadsfasfasfasfasfafadsfsafasdfdsafasdfdasfadsfdfa', N'', CAST(N'2023-11-03' AS Date), 0)
INSERT [dbo].[Blog] ([BlogID], [UserID], [BlogTitle], [BlogSummary], [BlogContent], [BlogType], [CreateAt], [Status]) VALUES (N'BOd6d8d6', N'US0002', N'dasdasdsasaasada', N'dasdsasadasasdassaasdasdaddasdsasadasasd...', N'dasdsasadasasdassaasdasdaddasdsasadasasdassaasdasdaddasdsasadasasdassaasdasdaddasdsasadasasdassaasdasdaddasdsasadasasdassaasdasdaddasdsasadasasdassaasdasdaddasdsasadasasdassaasdasdaddasdsasadasasdassaasdasdaddasdsasadasasdassaasdasdaddasdsasadasasdassaasdasdaddasdsasadasasdassaasdasdaddasdsasadasasdassaasdasdad', N'', CAST(N'2023-11-03' AS Date), 0)
INSERT [dbo].[Blog] ([BlogID], [UserID], [BlogTitle], [BlogSummary], [BlogContent], [BlogType], [CreateAt], [Status]) VALUES (N'BOf00bd2', N'US0002', N'abca', N'abcabcabcabcabcabcabcabcabcabcabcabcabca...', N'abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabc', N'', CAST(N'2023-11-06' AS Date), 0)
INSERT [dbo].[Blog] ([BlogID], [UserID], [BlogTitle], [BlogSummary], [BlogContent], [BlogType], [CreateAt], [Status]) VALUES (N'BOf2501e', N'US0002', N'abc', N'abcabcabcabcabcabcabcabcabcabcabcabcabca...', N'abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcvvvvabcabcabcabcabcabcabcabcabcabcabcvabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcv', N'', CAST(N'2023-11-04' AS Date), 0)
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Type], [Description]) VALUES (N'Cate7646a', N'Food', N'Food', N'string')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Type], [Description]) VALUES (N'Cate90fb2', N'Cage', N'Cage', N'string')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Type], [Description]) VALUES (N'Catef5d6d', N'Toy', N'Toy', N'string')
GO
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate7646a', N'PDT0001', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate7646a', N'PDT2f3a504', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate7646a', N'PDTb5df218', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDT21a5543', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDT2349fc6', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDT2634458', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDT3d94349', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDT3e04b57', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDT4c4b422', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDT7e72147', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDT8b84b63', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDT987aafe', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDT9ea4ca1', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDTaa2c873', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDTb0bfaa6', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDTcd422cb', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDTd1ccc69', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDTd72e53c', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Cate90fb2', N'PDTe991719', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Catef5d6d', N'PDT0484bf5', 1)
INSERT [dbo].[CategoryProduct] ([CategoryID], [ProductID], [Status]) VALUES (N'Catef5d6d', N'PDT093f9ae', 1)
GO
INSERT [dbo].[Color] ([ColorID], [ImageURL], [ColorName], [MaterialID], [IsCustom], [Price]) VALUES (N'CO128973d', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/black-bird-cage.jpg?alt=media&token=64f970a4-a9b1-44b1-b915-5fde630bf2ca', N'Đen', NULL, 1, CAST(100 AS Decimal(18, 0)))
INSERT [dbo].[Color] ([ColorID], [ImageURL], [ColorName], [MaterialID], [IsCustom], [Price]) VALUES (N'CO27ecf0f', NULL, N'Iron', NULL, 0, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Color] ([ColorID], [ImageURL], [ColorName], [MaterialID], [IsCustom], [Price]) VALUES (N'COccaff63', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/white-bird-cage.webp?alt=media&token=27dcc187-a6f9-4340-b3d0-4723b8feacb2', N'Trắng', NULL, 1, CAST(100 AS Decimal(18, 0)))
GO
INSERT [dbo].[ColorProduct] ([ProductID], [ColorID], [Status]) VALUES (N'PDT21a5543', N'CO27ecf0f', 1)
INSERT [dbo].[ColorProduct] ([ProductID], [ColorID], [Status]) VALUES (N'PDT2634458', N'CO27ecf0f', 1)
INSERT [dbo].[ColorProduct] ([ProductID], [ColorID], [Status]) VALUES (N'PDT3d94349', N'CO128973d', 1)
INSERT [dbo].[ColorProduct] ([ProductID], [ColorID], [Status]) VALUES (N'PDT3e04b57', N'CO27ecf0f', 1)
INSERT [dbo].[ColorProduct] ([ProductID], [ColorID], [Status]) VALUES (N'PDT7e72147', N'CO27ecf0f', 1)
INSERT [dbo].[ColorProduct] ([ProductID], [ColorID], [Status]) VALUES (N'PDT8b84b63', N'CO128973d', 1)
INSERT [dbo].[ColorProduct] ([ProductID], [ColorID], [Status]) VALUES (N'PDT987aafe', N'CO27ecf0f', 1)
INSERT [dbo].[ColorProduct] ([ProductID], [ColorID], [Status]) VALUES (N'PDTaa2c873', N'CO27ecf0f', 1)
INSERT [dbo].[ColorProduct] ([ProductID], [ColorID], [Status]) VALUES (N'PDTb0bfaa6', N'CO27ecf0f', 1)
INSERT [dbo].[ColorProduct] ([ProductID], [ColorID], [Status]) VALUES (N'PDTd1ccc69', N'CO27ecf0f', 1)
INSERT [dbo].[ColorProduct] ([ProductID], [ColorID], [Status]) VALUES (N'PDTd72e53c', N'CO27ecf0f', 1)
INSERT [dbo].[ColorProduct] ([ProductID], [ColorID], [Status]) VALUES (N'PDTe991719', N'CO27ecf0f', 1)
GO
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I00002', NULL, NULL, N'S831874f7', NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/rectangle-bird.jpg?alt=media&token=419044fa-d79f-4710-bbb5-93f4f06fe77c')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0001', NULL, NULL, NULL, NULL, NULL, N'B0001', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/vet.jpg?alt=media&token=111314a0-9e01-4211-b92e-5469f9950457&_gl=1*y75uh6*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzUzMDYxMi4yLjEuMTY5NzUzMTI1MC4zNS4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0002', NULL, NULL, NULL, NULL, NULL, N'B0002', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Quaker.png?alt=media&token=8a40794c-0445-48a9-b6e9-dbfa042bf0d6&_gl=1*on9gpw*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0MjM3Ni4zLjEuMTY5NzU0Mzg2OC42MC4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0003', NULL, NULL, NULL, NULL, NULL, N'B0003', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Parrotlet.png?alt=media&token=be31e3fe-12b7-4529-83de-9bcb9edc0c83&_gl=1*ab4e2i*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0MjM3Ni4zLjEuMTY5NzU0Mzg5NC4zNC4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0004', NULL, NULL, NULL, NULL, NULL, N'B0004', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Mini%20Macaw.png?alt=media&token=218f56e0-9f8c-4dd4-997a-17431f4236cf&_gl=1*p8iyw6*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0MjM3Ni4zLjEuMTY5NzU0MzkxNi4xMi4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0005', NULL, NULL, NULL, NULL, NULL, N'B0005', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Lovebird.png?alt=media&token=a69eac53-e912-4954-a05f-fe00d323fdc3&_gl=1*eeyi21*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0MjM3Ni4zLjEuMTY5NzU0Mzk0NS42MC4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0006', NULL, NULL, NULL, NULL, NULL, N'B0006', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Jardine.png?alt=media&token=2b63a728-e406-4a5d-9856-7e16470e4d88&_gl=1*ysadr8*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0MjM3Ni4zLjEuMTY5NzU0Mzk2NS40MC4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0007', NULL, NULL, NULL, NULL, NULL, N'B0007', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Dove.png?alt=media&token=cf853860-cf4d-4b71-a79c-35932b3f2345&_gl=1*shk6fb*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0MjM3Ni4zLjEuMTY5NzU0NDA1OS42MC4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0008', NULL, NULL, NULL, NULL, NULL, N'B0008', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Cockatoo.png?alt=media&token=59b64785-5936-4d46-a9c5-ec6df353b1c7&_gl=1*1fsmxrn*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0MjM3Ni4zLjEuMTY5NzU0NDA4Mi4zNy4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0009', NULL, NULL, NULL, NULL, NULL, N'B0009', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Best%20Cockatiel.png?alt=media&token=38206daa-4715-4d45-bfbf-e816046c98a9&_gl=1*1n8cx0s*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0MjM3Ni4zLjEuMTY5NzU0NDExOC4xLjAuMA..')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0010', NULL, NULL, NULL, NULL, NULL, N'B0010', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Caique%20.png?alt=media&token=5498f7e7-57e8-4199-8a96-742212b6218a&_gl=1*4z61ka*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjAuMTY5NzU0OTcwOS42MC4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0011', NULL, NULL, NULL, NULL, NULL, N'B0011', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Amazon%20Parrot.png?alt=media&token=ad1e5fb3-26c3-4169-88f3-647b1df7a335&_gl=1*1fzozkg*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjEuMTY5NzU0OTc3Ni42MC4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0012', NULL, NULL, NULL, NULL, NULL, N'B0012', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Senegal%20Parrot.png?alt=media&token=e529a82c-8df4-42d4-9389-7be044f9e6e3&_gl=1*v0k7pq*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjEuMTY5NzU0OTgwMy4zMy4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0013', NULL, NULL, NULL, NULL, NULL, N'B0013', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Pionus.png?alt=media&token=f10d37c7-9877-44b6-8dfc-c0f1b0e678af&_gl=1*1hz684*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjEuMTY5NzU0OTgyNC4xMi4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0014', NULL, NULL, NULL, NULL, NULL, N'B0014', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Best%20Parakeet.png?alt=media&token=a83f2017-4a12-4199-b844-605c22a4d7ab&_gl=1*br6h9k*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjEuMTY5NzU0OTg0OS42MC4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0015', NULL, NULL, NULL, NULL, NULL, N'B0015', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Macaw.png?alt=media&token=3cc148cf-a686-4c2b-b257-e6291e213456&_gl=1*o2hjgh*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjEuMTY5NzU0OTg3Mi4zNy4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0016', NULL, NULL, NULL, NULL, NULL, N'B0016', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Lorikeet.png?alt=media&token=bcf7eba2-298a-4a5f-ab1d-70fb533e4292&_gl=1*1lrcoou*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjEuMTY5NzU0OTg5NC4xNS4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0017', NULL, NULL, NULL, NULL, NULL, N'B0017', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Finch.png?alt=media&token=6a5b10f5-0b02-46ee-82ec-3bbaabbf91cb&_gl=1*1a6cmj0*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjEuMTY5NzU0OTkyMS42MC4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0018', NULL, NULL, NULL, NULL, NULL, N'B0018', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Conure.png?alt=media&token=e816f734-25ce-4daa-96c4-2a747c1a8c59&_gl=1*vp0hwh*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjEuMTY5NzU0OTk0Mi4zOS4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0019', NULL, NULL, NULL, NULL, NULL, N'B0019', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Small%20Cockatoo.png?alt=media&token=946ac642-7b14-4c9e-a7de-eb5f1d29729c&_gl=1*1r4omg4*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjEuMTY5NzU1MDEzNC42MC4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0020', NULL, NULL, NULL, NULL, NULL, N'B0020', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Canary.png?alt=media&token=77be7543-041e-4fb8-ada5-238df8fbe54a&_gl=1*192j84t*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjEuMTY5NzU1MDE1OC4zNi4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0021', NULL, NULL, NULL, NULL, NULL, N'B0021', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Budgie.png?alt=media&token=12ee95b2-a9bc-4467-a60a-533d104b2038&_gl=1*1y9dcng*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjEuMTY5NzU1MDE3Mi4yMi4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0022', NULL, NULL, NULL, NULL, NULL, N'B0022', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/African%20Grey%20Parrot.png?alt=media&token=4457691f-b214-4e80-88f0-c55939676660&_gl=1*1ie4ga9*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzU0OTcwOS40LjEuMTY5NzU1MDE4Ny43LjAuMA..')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I0023', N'BO0001', NULL, NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Majestic%20Play%20Top%20Bird%20Cage-2.png?alt=media&token=6dc14cc4-f91a-4dd7-8748-5d1d4ce35798&_gl=1*18yz2hn*_ga*OTg1Mjk2NDM0LjE2OTc2OTgwNDU.*_ga_CW55HF8NVT*MTY5Nzk1MjU0NS4zLjEuMTY5Nzk1MjkwNy4yOC4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I005f55e3', NULL, N'PDTd1ccc69', NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I11418168', NULL, N'PDT0484bf5', NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/lama%2FC%3A%5Cfakepath%5C383464139_346624394358955_787064704516641970_n.jpg?alt=media&token=debb0f34-9ffd-439d-a13a-4678bdcfe9e0')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I16dfec98', N'BOa45479', NULL, NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/lama%2FC%3A%5Cfakepath%5CScreenshot%202023-11-04%20135928.png?alt=media&token=dc12a6f8-776b-462a-93fd-0364d4ebe7f9')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I1eaf2e76', NULL, N'PDT2634458', NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/lama%2FC%3A%5Cfakepath%5C383464139_346624394358955_787064704516641970_n.jpg?alt=media&token=ef83467b-c13d-4c46-b57b-baf3ac34a510')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I2f4e4bd6', N'BO292205', NULL, NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/lama%2FC%3A%5Cfakepath%5Cz4727831290216_16adb535ce3d02f081b8552707ce375c.jpg?alt=media&token=e0caf849-298e-4cd7-951e-95e18ce97b31')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I4df93e60', N'BO99b7f9', NULL, NULL, NULL, NULL, NULL, N'string')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I63d502d0', NULL, N'PDTb5df218', NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/lama%2FC%3A%5Cfakepath%5CScreenshot%202023-11-04%20135928.png?alt=media&token=5ce724bd-0d6d-4dc9-9be3-86c38ed8ab49')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I72d1a60e', NULL, N'PDTb0bfaa6', NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I7d42e577', N'BOf2501e', NULL, NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/lama%2FC%3A%5Cfakepath%5C383464139_346624394358955_787064704516641970_n.jpg?alt=media&token=71212735-91ec-43b2-bc2c-36218db0bb78')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I8e5fe022', NULL, N'PDT987aafe', NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I8fa02420', N'BO068ea9', NULL, NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/lama%2FC%3A%5Cfakepath%5C383464139_346624394358955_787064704516641970_n.jpg?alt=media&token=69d7a617-46b2-4182-8da8-74eb211bc311')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'I939dfba3', NULL, N'PDT2f3a504', NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/lama%2FC%3A%5Cfakepath%5C383464139_346624394358955_787064704516641970_n.jpg?alt=media&token=1665dded-e3c2-4a2c-b2dd-c5b9fd7cdfe3')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'Iasefwof3', NULL, N'PDT3d94349', NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/a8e31cfcbe71524dd34c834bbc21331d_125x.png?alt=media&token=3f14696e-7d82-4a6c-9510-2e62ee8de690&_gl=1*14mjtyj*_ga*OTg1Mjk2NDM0LjE2OTc2OTgwNDU.*_ga_CW55HF8NVT*MTY5Nzk1MjU0NS4zLjEuMTY5Nzk1Mjk4Ni4xMS4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'Iba96f1be', NULL, N'PDT093f9ae', NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/lama%2FC%3A%5Cfakepath%5CScreenshot%202023-11-04%20135928.png?alt=media&token=70044d73-35bd-4d86-ad6f-1a62b2ca7498')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'Ic7e49673', N'BO3c1355', NULL, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'Icf6241b9', NULL, N'PDT21a5543', NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'Idf1a7ba0', NULL, N'PDTd72e53c', NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/lama%2FC%3A%5Cfakepath%5Cz4727831290216_16adb535ce3d02f081b8552707ce375c.jpg?alt=media&token=5ced38c1-4e51-4c7b-9f64-6219fa62a5b8')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'Ie7a5a82d', N'BOf00bd2', NULL, NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/lama%2FC%3A%5Cfakepath%5Cz4727831290216_16adb535ce3d02f081b8552707ce375c.jpg?alt=media&token=11e46911-a285-4b7c-a3a0-3bddc7739abc')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'Ifeb49657', NULL, N'PDT0001', NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/lama%2FC%3A%5Cfakepath%5CScreenshot%202023-11-04%20135928.png?alt=media&token=73e539aa-9ffc-4f43-ba12-b618d820e5fb')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'Iproinu20', NULL, N'PDTa1c8fcb', NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Majestic%20Play%20Top%20Bird%20Cage-1.png?alt=media&token=ecd264c1-3d6e-45e5-83c4-e44e0746337f&_gl=1*8gzyj0*_ga*OTg1Mjk2NDM0LjE2OTc2OTgwNDU.*_ga_CW55HF8NVT*MTY5Nzk1MjU0NS4zLjEuMTY5Nzk1Mjg4Mi41My4wLjA.')
INSERT [dbo].[Image] ([ImageID], [BlogID], [ProductID], [StyleID], [SizeID], [MaterialID], [BirdID], [ImageURL]) VALUES (N'Iproinu21', NULL, N'PDT8b84b63', NULL, NULL, NULL, NULL, N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/Majestic%20Play%20Top%20Bird%20Cage-2.png?alt=media&token=6dc14cc4-f91a-4dd7-8748-5d1d4ce35798&_gl=1*18yz2hn*_ga*OTg1Mjk2NDM0LjE2OTc2OTgwNDU.*_ga_CW55HF8NVT*MTY5Nzk1MjU0NS4zLjEuMTY5Nzk1MjkwNy4yOC4wLjA.')
GO
INSERT [dbo].[Material] ([MaterialID], [MaterialName], [SizeID], [IsCustom], [Price]) VALUES (N'M00001', N'Wood', NULL, 0, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Material] ([MaterialID], [MaterialName], [SizeID], [IsCustom], [Price]) VALUES (N'M0002', N'test', N'Si987f6b9', 1, CAST(2000 AS Decimal(18, 0)))
INSERT [dbo].[Material] ([MaterialID], [MaterialName], [SizeID], [IsCustom], [Price]) VALUES (N'M0003', N'tests2', N'Si987f6b9', 1, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[Material] ([MaterialID], [MaterialName], [SizeID], [IsCustom], [Price]) VALUES (N'Ma2b54e5d', N'Aluminum', NULL, 0, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[Material] ([MaterialID], [MaterialName], [SizeID], [IsCustom], [Price]) VALUES (N'Md12f6cf4', N'string', N'Sif4a814d', 1, CAST(1000 AS Decimal(18, 0)))
GO
INSERT [dbo].[MaterialProduct] ([MaterialID], [ProductID], [Status]) VALUES (N'M00001', N'PDT21a5543', 1)
INSERT [dbo].[MaterialProduct] ([MaterialID], [ProductID], [Status]) VALUES (N'M00001', N'PDT3e04b57', 1)
INSERT [dbo].[MaterialProduct] ([MaterialID], [ProductID], [Status]) VALUES (N'M00001', N'PDT7e72147', 1)
INSERT [dbo].[MaterialProduct] ([MaterialID], [ProductID], [Status]) VALUES (N'M00001', N'PDT987aafe', 1)
INSERT [dbo].[MaterialProduct] ([MaterialID], [ProductID], [Status]) VALUES (N'M00001', N'PDTaa2c873', 1)
INSERT [dbo].[MaterialProduct] ([MaterialID], [ProductID], [Status]) VALUES (N'M00001', N'PDTb0bfaa6', 1)
INSERT [dbo].[MaterialProduct] ([MaterialID], [ProductID], [Status]) VALUES (N'M00001', N'PDTd1ccc69', 1)
INSERT [dbo].[MaterialProduct] ([MaterialID], [ProductID], [Status]) VALUES (N'M00001', N'PDTd72e53c', 1)
INSERT [dbo].[MaterialProduct] ([MaterialID], [ProductID], [Status]) VALUES (N'M00001', N'PDTe991719', 1)
INSERT [dbo].[MaterialProduct] ([MaterialID], [ProductID], [Status]) VALUES (N'Ma2b54e5d', N'PDT2634458', 1)
INSERT [dbo].[MaterialProduct] ([MaterialID], [ProductID], [Status]) VALUES (N'Ma2b54e5d', N'PDT3d94349', 1)
INSERT [dbo].[MaterialProduct] ([MaterialID], [ProductID], [Status]) VALUES (N'Ma2b54e5d', N'PDT8b84b63', 1)
GO
INSERT [dbo].[Order] ([OrderID], [UserID], [Note], [CreateDate], [total], [Status]) VALUES (N'O34666460', N'USce97c75', N'string', CAST(N'2023-11-15T00:00:00.000' AS DateTime), CAST(200000 AS Decimal(18, 0)), 0)
GO
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [FeedbackID], [Quantity], [Price], [Status], [IsCustom]) VALUES (N'O34666460', N'PDT8b84b63', NULL, 2, CAST(100000 AS Decimal(18, 0)), 0, 0)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT0001', N'Food', 1000, N'test', CAST(200000 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT0484bf5', N'test update with modals', 100, N'test update', CAST(2000 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT093f9ae', N'toytest', 100, N'test update toy', CAST(2000 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT21a5543', N'test', -100000, N'abc', CAST(-100000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT2349fc6', N'testdasdsa', 2, N'adsadsdasa', CAST(100000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT2634458', N'Avaries', 1000, N'test add', CAST(200000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT2f3a504', N'foodtest', 2, N'test', CAST(100000 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT3d94349', N'Cage', 2000, N'Cage for test', CAST(100000 AS Decimal(18, 0)), NULL, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT3e04b57', N'test2', 1, N'test2', CAST(200000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT4c4b422', N'testdasdsa', 2, N'adsadsdasa', CAST(100000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT7e72147', N'test3', 3, N'test', CAST(20000000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT8b84b63', N'Cage', 10000, N'Cage for test', CAST(100000 AS Decimal(18, 0)), 2000, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT987aafe', N'test', 10000, N'abc', CAST(100000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDT9ea4ca1', N'testdasdsadsad', 10, N'adsadsdasa321', CAST(100000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTa1c8fcb', N'string', 1000, N'string', CAST(0 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTaa2c873', N'test', 1, N'adsad', CAST(100000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTb0bfaa6', N'abc', 200, N'abc', CAST(100000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTb5df218', N'Food test update', 100, N'abc', CAST(100000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTC00001', N'test', 1, N'custom', CAST(0 AS Decimal(18, 0)), 0, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTC2a238', N'test', 1, N'Custom Product', CAST(0 AS Decimal(18, 0)), NULL, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTC322f7', N'test', 1, N'Custom Product', CAST(0 AS Decimal(18, 0)), NULL, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTC3aac9', N'test layout', 1, N'Custom Product', CAST(0 AS Decimal(18, 0)), NULL, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTC575ef', N'test layout', 1, N'Custom Product', CAST(0 AS Decimal(18, 0)), NULL, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTC58b63', N'test', 1, N'Custom Product', CAST(0 AS Decimal(18, 0)), NULL, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTC75fee', N'test', 1, N'Custom Product', CAST(0 AS Decimal(18, 0)), NULL, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTcd422cb', N'testdasdsa', 2, N'adsadsdasa', CAST(100000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTCe2442', N'string', 1, N'Custom Product', CAST(0 AS Decimal(18, 0)), NULL, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTd1ccc69', N'Lam Do', 1000, N'abc', CAST(100000 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTd72e53c', N'manager', 1, N'astest', CAST(100 AS Decimal(18, 0)), 0, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Quantity], [Description], [Price], [Discount], [Status]) VALUES (N'PDTe991719', N'test', 1, N'adsad', CAST(100000 AS Decimal(18, 0)), 0, 0)
GO
INSERT [dbo].[ProductCustom] ([ProductCustomID], [ProductName], [ProductSize], [ProductColor], [ProductMaterial], [ProductStyle], [UserID], [Price]) VALUES (N'PDTC00001', N'test', N'Sib1563e5', N'COccaff63', N'Ma2b54e5d', N'S831874f7', N'USce97c75', CAST(2000 AS Decimal(18, 0)))
INSERT [dbo].[ProductCustom] ([ProductCustomID], [ProductName], [ProductSize], [ProductColor], [ProductMaterial], [ProductStyle], [UserID], [Price]) VALUES (N'PDTC58b63', N'test', NULL, NULL, NULL, N'S831874f7', N'USce97c75', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[ProductCustom] ([ProductCustomID], [ProductName], [ProductSize], [ProductColor], [ProductMaterial], [ProductStyle], [UserID], [Price]) VALUES (N'PDTC75fee', N'test', NULL, NULL, NULL, N'S831874f7', N'USce97c75', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[ProductCustom] ([ProductCustomID], [ProductName], [ProductSize], [ProductColor], [ProductMaterial], [ProductStyle], [UserID], [Price]) VALUES (N'PDTCe2442', N'string', N'Sib1563e5', NULL, NULL, N'S831874f7', N'USce97c75', CAST(1500 AS Decimal(18, 0)))
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'1', N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'2', N'Manager')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'3', N'Staff')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (N'4', N'Customer')
GO
INSERT [dbo].[Size] ([SizeID], [Size], [SizeDescription], [StyleID], [IsCustom], [Price]) VALUES (N'Si0001', N'23x35     ', N'small', NULL, 0, NULL)
INSERT [dbo].[Size] ([SizeID], [Size], [SizeDescription], [StyleID], [IsCustom], [Price]) VALUES (N'Si096b0dc', N'string', N'string', NULL, 0, NULL)
INSERT [dbo].[Size] ([SizeID], [Size], [SizeDescription], [StyleID], [IsCustom], [Price]) VALUES (N'Si1bbbc4e', N'35x35     ', N'medium', NULL, 0, NULL)
INSERT [dbo].[Size] ([SizeID], [Size], [SizeDescription], [StyleID], [IsCustom], [Price]) VALUES (N'Si987f6b9', N'Bát giác', N'200x200cm', N'S831874f7', 1, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[Size] ([SizeID], [Size], [SizeDescription], [StyleID], [IsCustom], [Price]) VALUES (N'SiB0001', N'Nhỏ', N'nhỏ', NULL, 0, NULL)
INSERT [dbo].[Size] ([SizeID], [Size], [SizeDescription], [StyleID], [IsCustom], [Price]) VALUES (N'SiB0002', N'Trung bình', N'trung bình', NULL, 0, NULL)
INSERT [dbo].[Size] ([SizeID], [Size], [SizeDescription], [StyleID], [IsCustom], [Price]) VALUES (N'SiB0003', N'Lớn', N'lớn', NULL, 0, NULL)
INSERT [dbo].[Size] ([SizeID], [Size], [SizeDescription], [StyleID], [IsCustom], [Price]) VALUES (N'Sib1563e5', N'Bát giác', N'100x100cm', N'S831874f7', 1, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[Size] ([SizeID], [Size], [SizeDescription], [StyleID], [IsCustom], [Price]) VALUES (N'Sif4a814d', N'Lục giác', N'100x100cm', N'S831874f7', 1, CAST(500 AS Decimal(18, 0)))
GO
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDT21a5543', N'Si0001', 1)
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDT2634458', N'SiB0002', 1)
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDT3d94349', N'Si0001', 1)
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDT3d94349', N'Si096b0dc', 1)
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDT3e04b57', N'Si0001', 1)
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDT7e72147', N'Si0001', 1)
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDT8b84b63', N'Si0001', 1)
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDT987aafe', N'Si0001', 1)
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDTaa2c873', N'Si0001', 1)
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDTb0bfaa6', N'Si0001', 1)
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDTd1ccc69', N'Si1bbbc4e', 1)
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDTd72e53c', N'Si0001', 1)
INSERT [dbo].[SizeProduct] ([ProductID], [SizeID], [Status]) VALUES (N'PDTe991719', N'Si0001', 1)
GO
INSERT [dbo].[Style] ([StyleID], [StyleName], [StyleDescription], [Status], [IsCustom], [Price]) VALUES (N'S00007', N'Corner', N'lồng việt nam', 1, 0, NULL)
INSERT [dbo].[Style] ([StyleID], [StyleName], [StyleDescription], [Status], [IsCustom], [Price]) VALUES (N'S831874f7', N'suncatcher', N'for custom', 1, 1, CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Style] ([StyleID], [StyleName], [StyleDescription], [Status], [IsCustom], [Price]) VALUES (N'Sab934562', N'Aviaries', N'for big', 1, 0, NULL)
INSERT [dbo].[Style] ([StyleID], [StyleName], [StyleDescription], [Status], [IsCustom], [Price]) VALUES (N'Sc6dd1118', N'Breeder', N'for bread', 1, 0, NULL)
GO
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'S00007', N'PDT21a5543', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'S00007', N'PDT3e04b57', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'S00007', N'PDT7e72147', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'S00007', N'PDT987aafe', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'S00007', N'PDTb0bfaa6', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'S00007', N'PDTd1ccc69', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'S00007', N'PDTd72e53c', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'Sab934562', N'PDT2349fc6', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'Sab934562', N'PDT2634458', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'Sab934562', N'PDT3d94349', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'Sab934562', N'PDT4c4b422', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'Sab934562', N'PDT8b84b63', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'Sab934562', N'PDT9ea4ca1', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'Sab934562', N'PDTaa2c873', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'Sab934562', N'PDTcd422cb', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'Sab934562', N'PDTe991719', 1)
INSERT [dbo].[StyleProduct] ([StyleID], [ProductID], [Status]) VALUES (N'Sc6dd1118', N'PDT3d94349', 1)
GO
INSERT [dbo].[User] ([UserID], [RoleID], [ImageURL], [UserName], [PassWord], [FullName], [Gender], [DateOfBird], [Address], [PhoneNumber], [Email], [Status]) VALUES (N'US0002', N'3', NULL, N'staff', N'$2a$12$V4E0jobxNZlIKxRPDFGIneLCDMW5rD.4.3gbWtN0UK7XJ1HRmpSNO', N'staff', 1, CAST(N'2023-10-29' AS Date), N'string', N'1234', N'user@example.com', 1)
INSERT [dbo].[User] ([UserID], [RoleID], [ImageURL], [UserName], [PassWord], [FullName], [Gender], [DateOfBird], [Address], [PhoneNumber], [Email], [Status]) VALUES (N'US0003', N'2', NULL, N'manager', N'$2a$12$QnkvN6I3wGbrx4RnbV5C7uVoq.y9ppQ.iVyEjY1JPZUZzceoFLR16', N'manager', 0, CAST(N'2023-10-11' AS Date), N'string', N'1234', N'user@example.com', 1)
INSERT [dbo].[User] ([UserID], [RoleID], [ImageURL], [UserName], [PassWord], [FullName], [Gender], [DateOfBird], [Address], [PhoneNumber], [Email], [Status]) VALUES (N'US115a83c', N'4', NULL, N'lmao', N'$2a$11$2cXjLbrAmTyBRPNYGoaxL.uMVZAZqcK6T2mKViJj7BGGmRyoZK7AW', NULL, NULL, NULL, NULL, NULL, N'dotranlam2003@gmail.com', 1)
INSERT [dbo].[User] ([UserID], [RoleID], [ImageURL], [UserName], [PassWord], [FullName], [Gender], [DateOfBird], [Address], [PhoneNumber], [Email], [Status]) VALUES (N'US15bdd56', N'2', NULL, N'sa', N'$2a$11$7yo8GdnQHfA.dvzl4GfAjuBYFt3YP2b4tbyYJThYedO87ROLumSKa', N'sa', 1, CAST(N'2023-09-25' AS Date), N'S7.03 Vinhomes Grand Park, Đường Nguyễn Xiển, Phường Long Thạnh Mỹ, Thành Phố Thủ Đức, TP. Hồ Chí Minh', N'0911861612', NULL, 1)
INSERT [dbo].[User] ([UserID], [RoleID], [ImageURL], [UserName], [PassWord], [FullName], [Gender], [DateOfBird], [Address], [PhoneNumber], [Email], [Status]) VALUES (N'US5b93e35', N'1', N'string', N'admin', N'$2a$11$p0jnls0vuZxUm7/nI5lkG.azyVe/vCbGzgKOD9oLKSyyEuAvP/nky', N'string', 1, CAST(N'2023-10-15' AS Date), N'string', N'1234', N'user@example.com', 1)
INSERT [dbo].[User] ([UserID], [RoleID], [ImageURL], [UserName], [PassWord], [FullName], [Gender], [DateOfBird], [Address], [PhoneNumber], [Email], [Status]) VALUES (N'USb51d98b', N'3', NULL, N'Lmao', N'$2a$11$USxq0n989tlzF.a2lsZWU.4fwsn9oIzIeqrW5suLpWJoxzojPkJCm', N'Lam Do', 1, CAST(N'2023-10-30' AS Date), NULL, NULL, N'dotranlam2003@gmail.com', 1)
INSERT [dbo].[User] ([UserID], [RoleID], [ImageURL], [UserName], [PassWord], [FullName], [Gender], [DateOfBird], [Address], [PhoneNumber], [Email], [Status]) VALUES (N'USce97c75', N'4', N'https://firebasestorage.googleapis.com/v0/b/bscswp.appspot.com/o/default-non-user-no-photo-1.jpg?alt=media&token=64d98533-d6cc-4560-a48e-d2e75686045c&_gl=1*9fxttw*_ga*MTQ3ODExNzM0NS4xNjk3NDkzNDAz*_ga_CW55HF8NVT*MTY5NzcwMDQ5Mi42LjEuMTY5NzcwMDY4NS4zMi4wLjA.', N'string', N'$2a$11$eOnbawJk55WQFLc2VyH0AupwpsIx2/7/45jgg884l6DLk9JlCzrkO', N'Lam Do', 1, CAST(N'2003-08-04' AS Date), N'S7.03 Vinhomes Grand Park, Đường Nguyễn Xiển, Phường Long Thạnh Mỹ, Thành Phố Thủ Đức, TP. Hồ Chí Minh', N'0911861612', N'user@example.com', 1)
GO
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'V0001', N'Discount', N'Test', N'10%', CAST(N'2023-10-31' AS Date), CAST(N'2023-11-10' AS Date), CAST(N'2023-10-31' AS Date), 1)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'V0002', N'Voucher', N'voucher', N'0%', CAST(N'2023-10-31' AS Date), CAST(N'2023-11-01' AS Date), CAST(N'2023-10-31' AS Date), 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'V24b100df', N'VoucherTest2', N'test voucher add after fix', N'10', CAST(N'2023-11-08' AS Date), CAST(N'2023-12-10' AS Date), CAST(N'2023-11-08' AS Date), 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'V33477f13', N'VoucherTest', N'test voucher add', N'10', CAST(N'2023-11-08' AS Date), CAST(N'2023-12-10' AS Date), CAST(N'2023-11-08' AS Date), 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'V3cc36126', N'abc', N'aaaa', N'10', CAST(N'2003-02-01' AS Date), CAST(N'2005-02-01' AS Date), CAST(N'2023-11-08' AS Date), 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'V56ee71d2', N'a', N'a', N'10', CAST(N'2003-02-01' AS Date), CAST(N'2005-02-01' AS Date), CAST(N'2023-11-08' AS Date), 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'V6d26d7ce', N'VoucherTest', N'test voucher add after fix', N'10', CAST(N'2023-11-08' AS Date), CAST(N'2023-12-10' AS Date), CAST(N'2023-11-08' AS Date), 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'V8d40e65d', N'abc', N'a', N'10', CAST(N'2023-11-08' AS Date), CAST(N'2023-12-10' AS Date), CAST(N'2023-11-08' AS Date), 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'V90b68268', N'abc', N'abc', N'-19', CAST(N'2023-10-31' AS Date), CAST(N'2023-12-10' AS Date), CAST(N'2023-11-10' AS Date), 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'Vbc54f806', N'abc', N'aaa', N'10', CAST(N'2023-11-08' AS Date), CAST(N'2023-11-08' AS Date), CAST(N'2023-11-08' AS Date), 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'Vc9393c29', N'abc', N'a', N'10', CAST(N'2023-11-08' AS Date), CAST(N'2023-12-10' AS Date), CAST(N'2023-11-08' AS Date), 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'Vdc0e7fa3', N'bca', N'qqq', N'20', CAST(N'2023-11-08' AS Date), CAST(N'2023-11-08' AS Date), CAST(N'2023-11-08' AS Date), 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherName], [Description], [Discount], [StartDate], [EndDate], [CreateAt], [Status]) VALUES (N'Vebfa6ff3', N'a', N'abc', N'10', CAST(N'2023-11-08' AS Date), CAST(N'2023-11-08' AS Date), CAST(N'2023-11-08' AS Date), 0)
GO
ALTER TABLE [dbo].[Bird]  WITH CHECK ADD  CONSTRAINT [FK_Bird_BirdType] FOREIGN KEY([BirdType])
REFERENCES [dbo].[BirdType] ([BirdTypeID])
GO
ALTER TABLE [dbo].[Bird] CHECK CONSTRAINT [FK_Bird_BirdType]
GO
ALTER TABLE [dbo].[Bird]  WITH CHECK ADD  CONSTRAINT [FK_Bird_Size] FOREIGN KEY([BirdSize])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[Bird] CHECK CONSTRAINT [FK_Bird_Size]
GO
ALTER TABLE [dbo].[BirdProduct]  WITH CHECK ADD  CONSTRAINT [FK_BirdProduct_Bird] FOREIGN KEY([BirdID])
REFERENCES [dbo].[Bird] ([BirdID])
GO
ALTER TABLE [dbo].[BirdProduct] CHECK CONSTRAINT [FK_BirdProduct_Bird]
GO
ALTER TABLE [dbo].[BirdProduct]  WITH CHECK ADD  CONSTRAINT [FK_BirdProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[BirdProduct] CHECK CONSTRAINT [FK_BirdProduct_Product]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_User]
GO
ALTER TABLE [dbo].[CategoryProduct]  WITH CHECK ADD  CONSTRAINT [FK_CategoryProduct_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[CategoryProduct] CHECK CONSTRAINT [FK_CategoryProduct_Category]
GO
ALTER TABLE [dbo].[CategoryProduct]  WITH CHECK ADD  CONSTRAINT [FK_CategoryProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[CategoryProduct] CHECK CONSTRAINT [FK_CategoryProduct_Product]
GO
ALTER TABLE [dbo].[Color]  WITH CHECK ADD  CONSTRAINT [FK_Color_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([MaterialID])
GO
ALTER TABLE [dbo].[Color] CHECK CONSTRAINT [FK_Color_Material]
GO
ALTER TABLE [dbo].[ColorProduct]  WITH CHECK ADD  CONSTRAINT [FK_ColorProduct_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[ColorProduct] CHECK CONSTRAINT [FK_ColorProduct_Color]
GO
ALTER TABLE [dbo].[ColorProduct]  WITH CHECK ADD  CONSTRAINT [FK_ColorProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ColorProduct] CHECK CONSTRAINT [FK_ColorProduct_Product]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_FeedBack] FOREIGN KEY([ReplyID])
REFERENCES [dbo].[FeedBack] ([FeedbackID])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_FeedBack]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_User]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Bird] FOREIGN KEY([BirdID])
REFERENCES [dbo].[Bird] ([BirdID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Bird]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Blog] FOREIGN KEY([BlogID])
REFERENCES [dbo].[Blog] ([BlogID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Blog]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([MaterialID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Material]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Size]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Style] FOREIGN KEY([StyleID])
REFERENCES [dbo].[Style] ([StyleID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Style]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Size]
GO
ALTER TABLE [dbo].[MaterialProduct]  WITH CHECK ADD  CONSTRAINT [FK_MaterialProduct_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([MaterialID])
GO
ALTER TABLE [dbo].[MaterialProduct] CHECK CONSTRAINT [FK_MaterialProduct_Material]
GO
ALTER TABLE [dbo].[MaterialProduct]  WITH CHECK ADD  CONSTRAINT [FK_MaterialProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[MaterialProduct] CHECK CONSTRAINT [FK_MaterialProduct_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_FeedBack] FOREIGN KEY([FeedbackID])
REFERENCES [dbo].[FeedBack] ([FeedbackID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_FeedBack]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Order]
GO
ALTER TABLE [dbo].[ProductCustom]  WITH CHECK ADD  CONSTRAINT [FK_ProductCustom_Color] FOREIGN KEY([ProductColor])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[ProductCustom] CHECK CONSTRAINT [FK_ProductCustom_Color]
GO
ALTER TABLE [dbo].[ProductCustom]  WITH CHECK ADD  CONSTRAINT [FK_ProductCustom_Material] FOREIGN KEY([ProductMaterial])
REFERENCES [dbo].[Material] ([MaterialID])
GO
ALTER TABLE [dbo].[ProductCustom] CHECK CONSTRAINT [FK_ProductCustom_Material]
GO
ALTER TABLE [dbo].[ProductCustom]  WITH CHECK ADD  CONSTRAINT [FK_ProductCustom_Size] FOREIGN KEY([ProductSize])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[ProductCustom] CHECK CONSTRAINT [FK_ProductCustom_Size]
GO
ALTER TABLE [dbo].[ProductCustom]  WITH CHECK ADD  CONSTRAINT [FK_ProductCustom_Style] FOREIGN KEY([ProductStyle])
REFERENCES [dbo].[Style] ([StyleID])
GO
ALTER TABLE [dbo].[ProductCustom] CHECK CONSTRAINT [FK_ProductCustom_Style]
GO
ALTER TABLE [dbo].[ProductCustom]  WITH CHECK ADD  CONSTRAINT [FK_ProductCustom_User1] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[ProductCustom] CHECK CONSTRAINT [FK_ProductCustom_User1]
GO
ALTER TABLE [dbo].[Size]  WITH CHECK ADD  CONSTRAINT [FK_Size_Style] FOREIGN KEY([StyleID])
REFERENCES [dbo].[Style] ([StyleID])
GO
ALTER TABLE [dbo].[Size] CHECK CONSTRAINT [FK_Size_Style]
GO
ALTER TABLE [dbo].[SizeProduct]  WITH CHECK ADD  CONSTRAINT [FK_SizeProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[SizeProduct] CHECK CONSTRAINT [FK_SizeProduct_Product]
GO
ALTER TABLE [dbo].[SizeProduct]  WITH CHECK ADD  CONSTRAINT [FK_SizeProduct_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[SizeProduct] CHECK CONSTRAINT [FK_SizeProduct_Size]
GO
ALTER TABLE [dbo].[StyleProduct]  WITH CHECK ADD  CONSTRAINT [FK_StyleProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[StyleProduct] CHECK CONSTRAINT [FK_StyleProduct_Product]
GO
ALTER TABLE [dbo].[StyleProduct]  WITH CHECK ADD  CONSTRAINT [FK_StyleProduct_Style] FOREIGN KEY([StyleID])
REFERENCES [dbo].[Style] ([StyleID])
GO
ALTER TABLE [dbo].[StyleProduct] CHECK CONSTRAINT [FK_StyleProduct_Style]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role1] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role1]
GO
ALTER TABLE [dbo].[VoucherUserOrder]  WITH CHECK ADD  CONSTRAINT [FK_VoucherUserOrder_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[VoucherUserOrder] CHECK CONSTRAINT [FK_VoucherUserOrder_Order]
GO
ALTER TABLE [dbo].[VoucherUserOrder]  WITH CHECK ADD  CONSTRAINT [FK_VoucherUserOrder_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[VoucherUserOrder] CHECK CONSTRAINT [FK_VoucherUserOrder_User]
GO
ALTER TABLE [dbo].[VoucherUserOrder]  WITH CHECK ADD  CONSTRAINT [FK_VoucherUserOrder_Voucher] FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Voucher] ([VoucherID])
GO
ALTER TABLE [dbo].[VoucherUserOrder] CHECK CONSTRAINT [FK_VoucherUserOrder_Voucher]
GO
USE [master]
GO
ALTER DATABASE [BCS_SWP391] SET  READ_WRITE 
GO
