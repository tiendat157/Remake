USE [master]
GO
/****** Object:  Database [ShopPhuKien]    Script Date: 5/19/2023 9:07:22 PM ******/
CREATE DATABASE [ShopPhuKien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopPhuKien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopPhuKien.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopPhuKien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ShopPhuKien_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopPhuKien] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopPhuKien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopPhuKien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopPhuKien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopPhuKien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopPhuKien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopPhuKien] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopPhuKien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopPhuKien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopPhuKien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopPhuKien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopPhuKien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopPhuKien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopPhuKien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopPhuKien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopPhuKien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopPhuKien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ShopPhuKien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopPhuKien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopPhuKien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopPhuKien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopPhuKien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopPhuKien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopPhuKien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopPhuKien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopPhuKien] SET  MULTI_USER 
GO
ALTER DATABASE [ShopPhuKien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopPhuKien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopPhuKien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopPhuKien] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopPhuKien] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopPhuKien] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShopPhuKien] SET QUERY_STORE = OFF
GO
USE [ShopPhuKien]
GO
/****** Object:  Table [dbo].[AccessTimesCount]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessTimesCount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[AccessTimes] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AccessTimesCount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Age]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Ages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Decentralization]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Decentralization](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[UserTypeID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Decentralization] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountCode]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExpirationDate] [datetime] NULL,
	[NumberDiscount] [int] NULL,
	[UserID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_DiscountCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountCodeDetail]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountCodeDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DiscountCodeID] [int] NULL,
	[Code] [nvarchar](20) NULL,
	[IsUsed] [bit] NULL,
	[IsOwned] [bit] NULL,
 CONSTRAINT [PK_DiscountCodeDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportCoupon]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportCoupon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[UserID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ImportCoupon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportCouponDetail]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportCouponDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportCouponID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ImportCouponDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemCart]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromUserID] [int] NULL,
	[ToUserID] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[Sent] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[DateOrder] [datetime] NOT NULL,
	[DateShip] [datetime] NOT NULL,
	[Offer] [int] NOT NULL,
	[IsPaid] [bit] NOT NULL,
	[IsCancel] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[IsDelivere] [bit] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[IsReceived] [bit] NOT NULL,
	[Total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[IsRating] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Producer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[ParentID] [int] NOT NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategoryParent]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoryParent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[SeoKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ProductCategoryParent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Image1] [nvarchar](256) NULL,
	[Image2] [nvarchar](256) NULL,
	[Image3] [nvarchar](256) NULL,
	[Image4] [nvarchar](256) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PromotionPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ViewCount] [int] NULL,
	[PurchasedCount] [int] NULL,
	[ProducerID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[AgeID] [int] NOT NULL,
	[GenderID] [int] NOT NULL,
	[Discount] [int] NOT NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductViewed]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductViewed](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ProductViewed] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QA]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserAskID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[Question] [nvarchar](1000) NULL,
	[Answer] [nvarchar](1000) NULL,
	[DateQuestion] [datetime] NULL,
	[DateAnswer] [datetime] NULL,
	[UserAnswerID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.QA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Star] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Rating] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NameDisplay] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeID] [int] NOT NULL,
	[Password] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[Capcha] [nvarchar](max) NULL,
	[AmountPurchased] [decimal](18, 0) NULL,
	[Avatar] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDiscountCode]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDiscountCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[DiscountCodeDetailID] [int] NULL,
 CONSTRAINT [PK_UserDiscountCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersSpin]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersSpin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[NumberOfSpins] [int] NULL,
 CONSTRAINT [PK_UsersSpin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 5/19/2023 9:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccessTimesCount] ON 

INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (1, CAST(N'2021-08-29T12:39:32.123' AS DateTime), 1)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2, CAST(N'2021-09-03T17:08:24.907' AS DateTime), 1)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (3, CAST(N'2021-09-11T08:20:07.993' AS DateTime), 7)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (4, CAST(N'2021-11-01T16:58:15.790' AS DateTime), 2)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (5, CAST(N'2021-11-05T09:33:09.927' AS DateTime), 9)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (6, CAST(N'2021-12-04T07:32:14.487' AS DateTime), 82)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (1006, CAST(N'2021-12-13T08:20:24.357' AS DateTime), 73)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (1007, CAST(N'2021-12-14T11:23:36.323' AS DateTime), 23)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (1008, CAST(N'2021-12-16T14:24:36.263' AS DateTime), 25)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (1009, CAST(N'2021-12-17T08:57:16.553' AS DateTime), 30)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (1010, CAST(N'2021-12-18T08:00:48.147' AS DateTime), 90)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (1011, CAST(N'2021-12-20T07:06:55.690' AS DateTime), 44)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (1012, CAST(N'2021-12-25T09:44:50.523' AS DateTime), 22)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (1013, CAST(N'2021-12-27T08:12:23.383' AS DateTime), 11)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (1014, CAST(N'2021-12-28T07:16:31.147' AS DateTime), 34)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2014, CAST(N'2021-12-29T07:32:25.557' AS DateTime), 25)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2015, CAST(N'2021-12-30T07:55:49.783' AS DateTime), 15)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2016, CAST(N'2022-01-02T19:48:22.570' AS DateTime), 4)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2017, CAST(N'2022-01-03T21:06:58.697' AS DateTime), 6)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2018, CAST(N'2022-01-04T08:04:03.993' AS DateTime), 12)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2019, CAST(N'2022-01-05T15:09:53.860' AS DateTime), 12)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2020, CAST(N'2022-01-06T08:17:10.297' AS DateTime), 24)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2021, CAST(N'2022-08-20T08:29:07.773' AS DateTime), 5)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2022, CAST(N'2022-10-03T13:09:03.630' AS DateTime), 7)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2023, CAST(N'2022-11-04T21:37:37.653' AS DateTime), 3)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2024, CAST(N'2022-11-16T15:42:56.027' AS DateTime), 2)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2025, CAST(N'2023-05-16T17:34:46.257' AS DateTime), 3)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2026, CAST(N'2023-05-17T07:59:15.007' AS DateTime), 18)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2027, CAST(N'2023-05-19T20:30:37.037' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[AccessTimesCount] OFF
GO
SET IDENTITY_INSERT [dbo].[Age] ON 

INSERT [dbo].[Age] ([ID], [Name], [SEOKeyword]) VALUES (1, N'1 - 3 tuổi', N'1-3-tuoi')
INSERT [dbo].[Age] ([ID], [Name], [SEOKeyword]) VALUES (2, N'Tất cả', N'tat-ca')
SET IDENTITY_INSERT [dbo].[Age] OFF
GO
SET IDENTITY_INSERT [dbo].[Decentralization] ON 

INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (112, 1, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (113, 2, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (114, 4, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (115, 5, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (116, 6, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (117, 7, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (118, 9, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (119, 10, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (128, 19, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (129, 20, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (131, 23, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (132, 24, NULL, 1)
SET IDENTITY_INSERT [dbo].[Decentralization] OFF
GO
SET IDENTITY_INSERT [dbo].[DiscountCode] ON 

INSERT [dbo].[DiscountCode] ([ID], [ExpirationDate], [NumberDiscount], [UserID], [IsActive]) VALUES (1, CAST(N'2024-04-02T00:00:00.000' AS DateTime), 10, 3, 1)
INSERT [dbo].[DiscountCode] ([ID], [ExpirationDate], [NumberDiscount], [UserID], [IsActive]) VALUES (2, CAST(N'2024-04-02T00:00:00.000' AS DateTime), 5, 3, 1)
INSERT [dbo].[DiscountCode] ([ID], [ExpirationDate], [NumberDiscount], [UserID], [IsActive]) VALUES (3, CAST(N'2024-04-02T00:00:00.000' AS DateTime), 15, 3, 1)
INSERT [dbo].[DiscountCode] ([ID], [ExpirationDate], [NumberDiscount], [UserID], [IsActive]) VALUES (4, CAST(N'2024-04-02T00:00:00.000' AS DateTime), 20, 3, 1)
SET IDENTITY_INSERT [dbo].[DiscountCode] OFF
GO
SET IDENTITY_INSERT [dbo].[DiscountCodeDetail] ON 

INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1, 1, N'olhrh', 1, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2, 1, N'du0a4', 0, 1)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3, 1, N'hy7a8', 0, 1)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (4, 1, N'n157c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (5, 1, N'u9bs4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (6, 1, N'zrzt1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (7, 1, N'qng07', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (8, 1, N'wzfil', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (9, 1, N'nfvxv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (10, 1, N'1jv9t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (11, 1, N'utepf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (12, 1, N'pkyxs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (13, 1, N'w4gjo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (14, 1, N'3rhcl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (15, 1, N'ywwvz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (16, 1, N'oon6c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (17, 1, N'q509g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (18, 1, N'6i0us', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (19, 1, N'lar0z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (20, 1, N't9lj2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (21, 1, N'jbsx5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (22, 1, N'86t01', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (23, 1, N'a72ub', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (24, 1, N'0dgcr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (25, 1, N'v0xua', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (26, 1, N'ye66f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (27, 1, N'pcde3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (28, 1, N'ondei', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (29, 1, N'9za3r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (30, 1, N'oh7y8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (31, 1, N'p2i2g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (32, 1, N'so7wh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (33, 1, N'3awul', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (34, 1, N'83y1x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (35, 1, N'nab3r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (36, 1, N'603dv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (37, 1, N'qhi80', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (38, 1, N'w4l7k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (39, 1, N'9pq7p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (40, 1, N'9cqrt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (41, 1, N'vtfau', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (42, 1, N'p0pkk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (43, 1, N'2u4b0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (44, 1, N'w1y4z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (45, 1, N'es0qx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (46, 1, N'8teor', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (47, 1, N'3jmua', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (48, 1, N'6bhnk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (49, 1, N'5paws', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (50, 1, N'oupg2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (51, 1, N'iow2p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (52, 1, N'c3znw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (53, 1, N'5wa3r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (54, 1, N'sika4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (55, 1, N'vtkt3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (56, 1, N'zsd8i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (57, 1, N'ne7vj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (58, 1, N'oxtf8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (59, 1, N'dm40p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (60, 1, N'iohf9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (61, 1, N'gkomh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (62, 1, N'ydc80', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (63, 1, N'uz1ej', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (64, 1, N'0zotc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (65, 1, N'5zfc1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (66, 1, N'jzudu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (67, 1, N'kl88c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (68, 1, N'czuov', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (69, 1, N'luupn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (70, 1, N'nuzrz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (71, 1, N't9ydd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (72, 1, N'qfmv8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (73, 1, N'9t8op', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (74, 1, N'j12ch', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (75, 1, N'afa71', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (76, 1, N'le0yn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (77, 1, N'y9cob', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (78, 1, N'kx45v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (79, 1, N'7n9qw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (80, 1, N'1vg9e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (81, 1, N'v2xky', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (82, 1, N'o90l2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (83, 1, N'moyhj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (84, 1, N'9qume', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (85, 1, N'w67qj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (86, 1, N'xgtk9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (87, 1, N'z70t2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (88, 1, N'5l20x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (89, 1, N'k6tcj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (90, 1, N'sy1gw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (91, 1, N'lb44s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (92, 1, N'y5haa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (93, 1, N'hqpmc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (94, 1, N'pxepo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (95, 1, N'xx3z4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (96, 1, N'zn4h0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (97, 1, N'9onyx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (98, 1, N'yd6bd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (99, 1, N'ae20p', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (100, 1, N'4qg93', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (101, 1, N'4um28', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (102, 1, N'xhfa2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (103, 1, N'lb9jb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (104, 1, N'3c1zo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (105, 1, N'l1dlo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (106, 1, N't5dj9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (107, 1, N'ih4n5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (108, 1, N'ocuz9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (109, 1, N'q86i2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (110, 1, N'8fsyw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (111, 1, N'1zrvs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (112, 1, N'draop', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (113, 1, N'2e5au', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (114, 1, N'dgwnw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (115, 1, N'0scz7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (116, 1, N'n54tp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (117, 1, N'onoxi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (118, 1, N't0i52', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (119, 1, N'7bgjh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (120, 1, N'mc5yy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (121, 1, N'2sec5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (122, 1, N'jx1xe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (123, 1, N'iwr8b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (124, 1, N'p0i1b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (125, 1, N'n70vy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (126, 1, N'zl2sv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (127, 1, N'l9g4x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (128, 1, N'5il19', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (129, 1, N'58v1u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (130, 1, N'luih2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (131, 1, N'w4exl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (132, 1, N'42tng', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (133, 1, N'84jc3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (134, 1, N'ipwlg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (135, 1, N'goq2f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (136, 1, N'om9bn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (137, 1, N'edv09', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (138, 1, N'q5tt3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (139, 1, N'dz8va', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (140, 1, N'bys7l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (141, 1, N'576bv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (142, 1, N'iolr6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (143, 1, N'r2rab', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (144, 1, N'4jtdm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (145, 1, N'n6csd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (146, 1, N'rq41d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (147, 1, N'04bzr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (148, 1, N'ggte1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (149, 1, N'btbxl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (150, 1, N'kh7uf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (151, 1, N'2fpv8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (152, 1, N'84o8e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (153, 1, N'1utng', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (154, 1, N'x02s4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (155, 1, N'yzoll', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (156, 1, N'34pg2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (157, 1, N'jskvl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (158, 1, N'uoq1s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (159, 1, N'm2va9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (160, 1, N'raxry', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (161, 1, N'uppzr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (162, 1, N'c0dke', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (163, 1, N'ephg4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (164, 1, N'jk7cv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (165, 1, N'ika9s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (166, 1, N'5eom3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (167, 1, N'3h7ri', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (168, 1, N'4duej', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (169, 1, N'4kgwo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (170, 1, N'6upgz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (171, 1, N'hcv6p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (172, 1, N'kophv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (173, 1, N'8m1ql', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (174, 1, N'7r08a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (175, 1, N'gz331', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (176, 1, N'8douv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (177, 1, N'lziww', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (178, 1, N'0vbb7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (179, 1, N'qxnsl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (180, 1, N'rs0lr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (181, 1, N'p4qft', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (182, 1, N'rj2fr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (183, 1, N'ga5vk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (184, 1, N'ide3v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (185, 1, N'lqyau', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (186, 1, N'smlrj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (187, 1, N'pndcg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (188, 1, N'ricde', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (189, 1, N'q26u1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (190, 1, N'p21hc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (191, 1, N'nn6zg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (192, 1, N'9fqva', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (193, 1, N'f8k5b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (194, 1, N'272p3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (195, 1, N'abbzf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (196, 1, N'steie', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (197, 1, N'0udp5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (198, 1, N'brn6h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (199, 1, N'm1qc9', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (200, 1, N'ssas9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (201, 1, N's9moc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (202, 1, N'mmgux', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (203, 1, N'pairj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (204, 1, N'u45aa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (205, 1, N'kt6hr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (206, 1, N'iv80w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (207, 1, N'aswjv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (208, 1, N'0iznt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (209, 1, N'zl2i1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (210, 1, N'lt83o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (211, 1, N'xxary', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (212, 1, N'9de64', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (213, 1, N'1nq7w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (214, 1, N'6n86s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (215, 1, N'mfsrk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (216, 1, N'90xqf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (217, 1, N'ywfm9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (218, 1, N'nsevv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (219, 1, N'xd2s1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (220, 1, N'm45v4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (221, 1, N'7uckb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (222, 1, N'reshy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (223, 1, N'iqy1f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (224, 1, N'fhe7j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (225, 1, N'ojnk5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (226, 1, N'in9z8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (227, 1, N'e5bvh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (228, 1, N'et5ks', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (229, 1, N'i976n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (230, 1, N'gpbnw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (231, 1, N'e07mq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (232, 1, N'yg2o3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (233, 1, N'ef3jt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (234, 1, N'nodta', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (235, 1, N'vl3pb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (236, 1, N'plr7y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (237, 1, N'3mvc3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (238, 1, N'o7zft', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (239, 1, N'71rrn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (240, 1, N'cfyn9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (241, 1, N'2mrmb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (242, 1, N'27sla', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (243, 1, N'mz4z9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (244, 1, N'2u0pf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (245, 1, N'pz8ad', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (246, 1, N'34mb8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (247, 1, N'jxd76', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (248, 1, N'r4iba', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (249, 1, N'rpoeg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (250, 1, N'h61rv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (251, 1, N'spihu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (252, 1, N'cnrjh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (253, 1, N'7uqm1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (254, 1, N'zv73s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (255, 1, N'8lyoy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (256, 1, N'al335', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (257, 1, N'7d4qp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (258, 1, N'3p6n4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (259, 1, N'dm94c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (260, 1, N'68bnr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (261, 1, N'w878x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (262, 1, N'h03tt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (263, 1, N'0uxok', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (264, 1, N'3za77', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (265, 1, N'jzu9p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (266, 1, N'vl4l1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (267, 1, N'bkqmj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (268, 1, N'8g62i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (269, 1, N'cwm3d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (270, 1, N'tyvuj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (271, 1, N'g8eph', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (272, 1, N'6n8tc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (273, 1, N'56r1s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (274, 1, N'qdlel', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (275, 1, N'x3iy4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (276, 1, N'xm166', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (277, 1, N'60jcv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (278, 1, N'dfafm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (279, 1, N'uhm0m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (280, 1, N'geulw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (281, 1, N'pnqiv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (282, 1, N'm0pvu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (283, 1, N'twcwf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (284, 1, N'fxogo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (285, 1, N'kcf21', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (286, 1, N'qrrmy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (287, 1, N's2qjq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (288, 1, N'sjbri', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (289, 1, N'm0pu2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (290, 1, N'7fzuh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (291, 1, N't0n6l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (292, 1, N'nhxre', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (293, 1, N'5id7b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (294, 1, N'1g2gw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (295, 1, N'5v68b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (296, 1, N'uwua3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (297, 1, N'l17ef', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (298, 1, N'2ot8d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (299, 1, N'lvtnm', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (300, 1, N'ewsta', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (301, 1, N'1mt7l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (302, 1, N'73p41', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (303, 1, N'0wxy3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (304, 1, N'ek81j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (305, 1, N'nx4cl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (306, 1, N'jctv7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (307, 1, N'7eb9c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (308, 1, N'9h93i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (309, 1, N'88zgn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (310, 1, N'y85ti', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (311, 1, N'3x0kx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (312, 1, N'errwb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (313, 1, N'4k373', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (314, 1, N'vvxv4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (315, 1, N'6lftk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (316, 1, N'o7xzx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (317, 1, N'lg9nd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (318, 1, N'jn0m7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (319, 1, N'r0n1n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (320, 1, N'yf1n1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (321, 1, N'ckjzl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (322, 1, N'sshai', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (323, 1, N'g4280', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (324, 1, N'ykq3t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (325, 1, N'i4lxn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (326, 1, N'g7ogv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (327, 1, N'jgk7u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (328, 1, N'a6jbu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (329, 1, N'1g0d1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (330, 1, N'w8oaz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (331, 1, N'oz83t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (332, 1, N'i8vme', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (333, 1, N'udao9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (334, 1, N'au4oz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (335, 1, N'1aoi2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (336, 1, N'beh60', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (337, 1, N'isnqh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (338, 1, N'tiqom', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (339, 1, N'ck77a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (340, 1, N'yfmd1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (341, 1, N'cdal8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (342, 1, N'nlzbr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (343, 1, N'e1zw6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (344, 1, N'bzugp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (345, 1, N'2dpbx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (346, 1, N'qdqid', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (347, 1, N'51eey', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (348, 1, N'escs4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (349, 1, N'iso7i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (350, 1, N'kvlb8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (351, 1, N'8vfx9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (352, 1, N'8y8xr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (353, 1, N'k4q7v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (354, 1, N'mxu71', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (355, 1, N'twbmh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (356, 1, N'jzs3m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (357, 1, N'52pkf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (358, 1, N'kwqf0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (359, 1, N'qtpbu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (360, 1, N'obrl6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (361, 1, N'xanjo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (362, 1, N'lu2q0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (363, 1, N'jgflw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (364, 1, N'rog2l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (365, 1, N'zgphl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (366, 1, N'aha22', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (367, 1, N'hig7y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (368, 1, N'4og63', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (369, 1, N'049pr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (370, 1, N'jodoc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (371, 1, N'a5yag', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (372, 1, N'qug8o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (373, 1, N'dtays', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (374, 1, N'a9hw2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (375, 1, N'dik8v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (376, 1, N'5hazb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (377, 1, N'wdw02', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (378, 1, N'mtg1h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (379, 1, N'jihrz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (380, 1, N'g4l6q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (381, 1, N'kgrw9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (382, 1, N'1vzol', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (383, 1, N'juq71', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (384, 1, N'97j5g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (385, 1, N'r3qos', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (386, 1, N'4a2jp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (387, 1, N'b6ej1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (388, 1, N'pwa0a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (389, 1, N'031p8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (390, 1, N'y1k0z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (391, 1, N'iupz8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (392, 1, N'qzdde', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (393, 1, N'12q9j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (394, 1, N'mqgfm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (395, 1, N'n7s5p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (396, 1, N'xbap3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (397, 1, N'c0ctg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (398, 1, N'rrokk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (399, 1, N'zt6wj', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (400, 1, N'8n1fv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (401, 1, N'ivenm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (402, 1, N'kbtkl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (403, 1, N'pzxjb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (404, 1, N'a0732', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (405, 1, N'5c65w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (406, 1, N'4b6wr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (407, 1, N'kk44v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (408, 1, N'rvyh6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (409, 1, N'p7e95', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (410, 1, N'a5xvi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (411, 1, N'hq8mz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (412, 1, N'gyi1r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (413, 1, N'je62a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (414, 1, N'e43yt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (415, 1, N'pbz6n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (416, 1, N'886aw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (417, 1, N'8nloj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (418, 1, N'3lrep', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (419, 1, N'2m7zw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (420, 1, N'kal80', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (421, 1, N'fc9b2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (422, 1, N'f0b91', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (423, 1, N'h2ies', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (424, 1, N'53ssh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (425, 1, N'3myi0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (426, 1, N'ce9jc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (427, 1, N'8w8kq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (428, 1, N'5ojve', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (429, 1, N'dksnh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (430, 1, N'ae2g1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (431, 1, N'rs217', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (432, 1, N'3o0k0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (433, 1, N'b0172', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (434, 1, N'v48yw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (435, 1, N'qt6od', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (436, 1, N's4lb0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (437, 1, N'8l2sv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (438, 1, N'q3gmx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (439, 1, N'ry95d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (440, 1, N'msvuw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (441, 1, N'gfetk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (442, 1, N'7voxo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (443, 1, N'9dyu1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (444, 1, N'z7jlm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (445, 1, N'1xvaf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (446, 1, N'1ual1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (447, 1, N'ai0pt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (448, 1, N'2hihx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (449, 1, N'4ps8x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (450, 1, N'oaoen', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (451, 1, N'pjjh4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (452, 1, N'sudos', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (453, 1, N'mvc6o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (454, 1, N'0mja8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (455, 1, N'sybxs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (456, 1, N'lexn1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (457, 1, N'1f67m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (458, 1, N'09tub', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (459, 1, N'id4yl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (460, 1, N'jmwt7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (461, 1, N'b0nf5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (462, 1, N'0ivzs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (463, 1, N'n60x1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (464, 1, N'hyfux', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (465, 1, N'13y90', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (466, 1, N'o4mmi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (467, 1, N'9sdpz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (468, 1, N'a20cv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (469, 1, N'sn3bx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (470, 1, N'lmh7e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (471, 1, N'uhb6g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (472, 1, N'icooq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (473, 1, N'65jqt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (474, 1, N'53l70', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (475, 1, N'o7c8e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (476, 1, N'n9xmp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (477, 1, N'bwoix', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (478, 1, N'1qgjq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (479, 1, N'8olvz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (480, 1, N'wdnr1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (481, 1, N'sbjhz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (482, 1, N'wec12', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (483, 1, N'jpb9p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (484, 1, N'jra21', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (485, 1, N'owbr2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (486, 1, N'avrjr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (487, 1, N'kvfu6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (488, 1, N'9nhtb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (489, 1, N'wnpqh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (490, 1, N'tmmgq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (491, 1, N'fduzm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (492, 1, N'591oy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (493, 1, N'ax3js', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (494, 1, N'xjqcp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (495, 1, N'5jr1f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (496, 1, N'bhvki', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (497, 1, N'yjl3m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (498, 1, N'hapib', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (499, 1, N'9v25a', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (500, 1, N'9uf8t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (501, 1, N'j6j0u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (502, 1, N'6v3ul', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (503, 1, N'xorga', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (504, 1, N'0m97l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (505, 1, N'w4ibp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (506, 1, N'jqw1f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (507, 1, N'qcw09', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (508, 1, N'1aujq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (509, 1, N'vh46n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (510, 1, N'vew5j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (511, 1, N'wvhx6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (512, 1, N'pyhkk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (513, 1, N'p9cp5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (514, 1, N'v20hi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (515, 1, N'010rz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (516, 1, N'p9lx4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (517, 1, N'f30rs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (518, 1, N'5494t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (519, 1, N'd2j8a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (520, 1, N'wfpb2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (521, 1, N'3npxs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (522, 1, N'5407r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (523, 1, N'qmuqf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (524, 1, N'viu6a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (525, 1, N'026xe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (526, 1, N'7r2qd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (527, 1, N'juk5b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (528, 1, N'1od8x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (529, 1, N'aebmd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (530, 1, N'1i32p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (531, 1, N'nvtbb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (532, 1, N'ar2tv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (533, 1, N'nck4h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (534, 1, N'5bypn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (535, 1, N'hevi9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (536, 1, N'w1tum', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (537, 1, N'zy9b0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (538, 1, N'yaj3a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (539, 1, N'kvunk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (540, 1, N'83hfh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (541, 1, N'ztoph', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (542, 1, N'i9kbo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (543, 1, N'j7hg5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (544, 1, N'yciet', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (545, 1, N'524oc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (546, 1, N'vuh8a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (547, 1, N'2uomw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (548, 1, N'fkt3r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (549, 1, N'z0hp1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (550, 1, N'monsv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (551, 1, N'6vdvm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (552, 1, N'7y9mv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (553, 1, N'y1mbv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (554, 1, N'yt4uz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (555, 1, N'osow4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (556, 1, N'fupx0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (557, 1, N'hgzme', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (558, 1, N'hr2az', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (559, 1, N'rlhh2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (560, 1, N'7ng3c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (561, 1, N'2t32g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (562, 1, N'ngq1h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (563, 1, N'mjmwo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (564, 1, N'sb96o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (565, 1, N'h144i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (566, 1, N'dlh36', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (567, 1, N'1ovu7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (568, 1, N'ym7f1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (569, 1, N'baa3m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (570, 1, N'h8u3k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (571, 1, N'6njp5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (572, 1, N'bz9td', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (573, 1, N'b9w5p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (574, 1, N'8x1z0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (575, 1, N'fe3fn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (576, 1, N'g0asa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (577, 1, N'e0nta', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (578, 1, N'negy5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (579, 1, N'9nncz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (580, 1, N'bofnn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (581, 1, N'uh5de', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (582, 1, N'1tecy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (583, 1, N'kyqs9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (584, 1, N'lvd5b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (585, 1, N'3qd31', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (586, 1, N'211ql', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (587, 1, N'2vweq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (588, 1, N'75koi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (589, 1, N'4aeau', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (590, 1, N'k64do', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (591, 1, N'qkklu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (592, 1, N'ddcmm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (593, 1, N'a2y05', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (594, 1, N'zcmcb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (595, 1, N'qlzwh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (596, 1, N'3lciq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (597, 1, N'66yb5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (598, 1, N'slkum', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (599, 1, N'327ci', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (600, 1, N'bmne5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (601, 1, N'iu2b8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (602, 1, N'euxe0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (603, 1, N'1b35p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (604, 1, N'eew5n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (605, 1, N'o11zi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (606, 1, N'xnxof', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (607, 1, N'q88ni', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (608, 1, N'lewd0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (609, 1, N'7xg3u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (610, 1, N'28cwe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (611, 1, N'70r0q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (612, 1, N'r2d3k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (613, 1, N'07j8k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (614, 1, N'3cqxe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (615, 1, N'artfp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (616, 1, N'1u7ep', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (617, 1, N'ylaki', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (618, 1, N'0qi61', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (619, 1, N'sb229', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (620, 1, N'anit1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (621, 1, N'zspse', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (622, 1, N'pgmky', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (623, 1, N'648nw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (624, 1, N'p690t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (625, 1, N'n4t5v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (626, 1, N'9z1fp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (627, 1, N'omon0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (628, 1, N'g5sg2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (629, 1, N'td7h5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (630, 1, N'xcpfu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (631, 1, N'dnsan', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (632, 1, N'58t6f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (633, 1, N'0ph4k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (634, 1, N'tqvxp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (635, 1, N'tn389', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (636, 1, N'j6la7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (637, 1, N'6kvvm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (638, 1, N'a4n94', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (639, 1, N'hmvab', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (640, 1, N'd6c7l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (641, 1, N'hq10a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (642, 1, N'zuuad', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (643, 1, N'9wt9i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (644, 1, N'q4vsk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (645, 1, N'zcv3h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (646, 1, N'h1265', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (647, 1, N'n3oz0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (648, 1, N'ps5vw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (649, 1, N'qkn65', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (650, 1, N'v2w2u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (651, 1, N'jluwv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (652, 1, N'e58s2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (653, 1, N'71xe0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (654, 1, N'fi3i2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (655, 1, N'79a54', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (656, 1, N'pzz8w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (657, 1, N'ofalw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (658, 1, N'cj2dw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (659, 1, N'uum2z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (660, 1, N'ywif0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (661, 1, N'n8n9w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (662, 1, N'jkz2g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (663, 1, N'of95n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (664, 1, N'21lsy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (665, 1, N'5p0wi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (666, 1, N'nwhff', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (667, 1, N'2qthj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (668, 1, N'q1aym', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (669, 1, N'1ua6h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (670, 1, N'ourp6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (671, 1, N'7l0r4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (672, 1, N'7i11j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (673, 1, N'xctwo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (674, 1, N'8w2w7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (675, 1, N'b1wf6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (676, 1, N'lp3o3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (677, 1, N'2f2ji', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (678, 1, N'qzcnm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (679, 1, N'h9ipz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (680, 1, N'ybnsj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (681, 1, N'224r5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (682, 1, N'gyvvt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (683, 1, N'rpm7r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (684, 1, N'rkkn7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (685, 1, N'itoj0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (686, 1, N'bshph', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (687, 1, N'kblfb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (688, 1, N'9kknc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (689, 1, N'1eq44', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (690, 1, N'2xk7i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (691, 1, N'o1aua', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (692, 1, N'inu14', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (693, 1, N'xrfnj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (694, 1, N'pdh6r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (695, 1, N'g96lf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (696, 1, N'eduo7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (697, 1, N'nhjh2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (698, 1, N'tb0e2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (699, 1, N'wztso', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (700, 1, N'k8dvp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (701, 1, N'yqoqb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (702, 1, N'p4zo6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (703, 1, N'f3g3r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (704, 1, N'qh7uz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (705, 1, N'nmce5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (706, 1, N'qqo65', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (707, 1, N'f999j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (708, 1, N'733fn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (709, 1, N'ymmiw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (710, 1, N'3tzb8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (711, 1, N'das5b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (712, 1, N'lnkvv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (713, 1, N'9p2t0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (714, 1, N'g3gut', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (715, 1, N'xo2ha', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (716, 1, N'ba4rc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (717, 1, N'60n81', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (718, 1, N'fqe77', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (719, 1, N'utiuo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (720, 1, N'ju3rq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (721, 1, N'9nerl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (722, 1, N'zil4a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (723, 1, N'lt3ty', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (724, 1, N'ic41v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (725, 1, N'zyiw9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (726, 1, N'dgh21', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (727, 1, N'rgmac', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (728, 1, N'tw5wc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (729, 1, N'6ek7w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (730, 1, N'a0y5g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (731, 1, N'gzc61', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (732, 1, N'lessh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (733, 1, N'satcs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (734, 1, N'eg2qf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (735, 1, N'whhyz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (736, 1, N'uol98', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (737, 1, N'nrmwv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (738, 1, N'1eqi1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (739, 1, N'pdnpt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (740, 1, N'5vhps', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (741, 1, N'47hzu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (742, 1, N'9rohg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (743, 1, N'63st3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (744, 1, N'by6r0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (745, 1, N'a0tz0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (746, 1, N's42e3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (747, 1, N'9g5re', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (748, 1, N'qjwcv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (749, 1, N'j0jc4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (750, 1, N'vv3vs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (751, 1, N'hz0yr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (752, 1, N'dns9b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (753, 1, N'fzjoh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (754, 1, N'07aom', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (755, 1, N'2b35r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (756, 1, N'krr5e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (757, 1, N'6agwv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (758, 1, N'jph9a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (759, 1, N'd1xaq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (760, 1, N'uq54d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (761, 1, N'yuojz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (762, 1, N'g54hh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (763, 1, N'w5w4f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (764, 1, N'esx27', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (765, 1, N'kzboj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (766, 1, N'bo3p6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (767, 1, N'3vx1q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (768, 1, N'mv76o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (769, 1, N'oua1n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (770, 1, N'he25l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (771, 1, N'b3c62', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (772, 1, N'9sa9y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (773, 1, N'2bpko', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (774, 1, N'bi5o2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (775, 1, N'tv0nt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (776, 1, N'0yjab', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (777, 1, N'7v7d4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (778, 1, N'at09r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (779, 1, N'3v7hw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (780, 1, N'mf0nm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (781, 1, N'9jnc2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (782, 1, N'qcync', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (783, 1, N'kj981', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (784, 1, N'gdmpn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (785, 1, N'rr679', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (786, 1, N'7xt1g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (787, 1, N'v86yb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (788, 1, N'yi5ln', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (789, 1, N'84n6g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (790, 1, N'uw9qq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (791, 1, N'i2k94', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (792, 1, N'snpd4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (793, 1, N'3t6hr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (794, 1, N'mnk7d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (795, 1, N'7iabp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (796, 1, N'xe91p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (797, 1, N'lxcl7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (798, 1, N'2x64s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (799, 1, N'l21qu', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (800, 1, N'p7fp4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (801, 1, N'hlcns', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (802, 1, N'a2iuh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (803, 1, N'onyyt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (804, 1, N'fqvjz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (805, 1, N'yqqo2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (806, 1, N'fqura', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (807, 1, N'z8u6i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (808, 1, N'9vz37', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (809, 1, N'aomxe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (810, 1, N'7dd7o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (811, 1, N'8m6zf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (812, 1, N'05yvn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (813, 1, N'th1tr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (814, 1, N'q31pt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (815, 1, N'u12mz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (816, 1, N'jd3k4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (817, 1, N'bnwcb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (818, 1, N'mc41r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (819, 1, N'e7eqo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (820, 1, N'2x2fy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (821, 1, N'emxo4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (822, 1, N'gtta5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (823, 1, N'wco0l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (824, 1, N'guyre', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (825, 1, N'n8a8o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (826, 1, N'wxm86', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (827, 1, N'wlxv0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (828, 1, N'zzii4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (829, 1, N'3s454', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (830, 1, N'ctnei', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (831, 1, N'h9kak', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (832, 1, N'flz9h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (833, 1, N'thvdj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (834, 1, N'lo2aw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (835, 1, N'rmqwl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (836, 1, N'5eeem', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (837, 1, N'dji0z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (838, 1, N'xaxlu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (839, 1, N'n9ial', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (840, 1, N'v60ws', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (841, 1, N'y1nr1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (842, 1, N'5sxyo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (843, 1, N'bgvxe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (844, 1, N'k95ow', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (845, 1, N'l0qpj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (846, 1, N'rdpl0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (847, 1, N'8nsvy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (848, 1, N'm6093', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (849, 1, N'em96t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (850, 1, N'gou6b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (851, 1, N'vam9h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (852, 1, N'7k7ik', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (853, 1, N'1dm7q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (854, 1, N'xy992', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (855, 1, N'ni6us', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (856, 1, N'81u6c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (857, 1, N'ctske', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (858, 1, N'7bsn0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (859, 1, N'b8szb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (860, 1, N'aabq6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (861, 1, N'spuex', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (862, 1, N'me1rj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (863, 1, N'f0bgh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (864, 1, N'iub3s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (865, 1, N'vfwj0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (866, 1, N'p0hsr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (867, 1, N'70dat', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (868, 1, N'x8ox1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (869, 1, N'3kbdv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (870, 1, N'l6mr3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (871, 1, N'p9h8k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (872, 1, N'n2lnh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (873, 1, N'w6i9m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (874, 1, N'pwbwu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (875, 1, N'kgoby', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (876, 1, N'ldsxp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (877, 1, N'so0zb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (878, 1, N'8sfzg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (879, 1, N'4xbpf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (880, 1, N'6bb1g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (881, 1, N'y5z6t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (882, 1, N'jvfj9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (883, 1, N'jjx8y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (884, 1, N'hgt7o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (885, 1, N'6rlq0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (886, 1, N'we862', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (887, 1, N'jc1r1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (888, 1, N'xz4g1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (889, 1, N'mm606', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (890, 1, N'u9d07', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (891, 1, N'0sdnj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (892, 1, N'hujf6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (893, 1, N'ewjrz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (894, 1, N'hrghb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (895, 1, N'slnfb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (896, 1, N'tuvtf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (897, 1, N'xbh8b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (898, 1, N'18oht', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (899, 1, N'cqyjx', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (900, 1, N'zdpaz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (901, 1, N'c35zp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (902, 1, N'oe7l0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (903, 1, N'w8zai', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (904, 1, N'dpkp8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (905, 1, N'id8x8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (906, 1, N'cxdsl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (907, 1, N'qfu4c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (908, 1, N'3fssw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (909, 1, N'wbdr7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (910, 1, N'e0xbt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (911, 1, N'k29cq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (912, 1, N'95i0n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (913, 1, N'1boaj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (914, 1, N'qo48o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (915, 1, N'7713l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (916, 1, N'harz4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (917, 1, N'l9c8b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (918, 1, N'ygsnc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (919, 1, N'871f4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (920, 1, N'vwchq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (921, 1, N'z6zww', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (922, 1, N'maf0j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (923, 1, N'9ns5c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (924, 1, N'29p8v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (925, 1, N'k5r5p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (926, 1, N'9fw80', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (927, 1, N'v7jje', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (928, 1, N'pjqmy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (929, 1, N'xa1ed', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (930, 1, N'uo6cc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (931, 1, N'wgevg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (932, 1, N'4o4gw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (933, 1, N'gngay', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (934, 1, N'cej0x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (935, 1, N'stdj7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (936, 1, N'jdm14', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (937, 1, N'vjt6e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (938, 1, N'o3xck', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (939, 1, N'aojzs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (940, 1, N'j41pb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (941, 1, N'qefpt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (942, 1, N'cd4y7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (943, 1, N'0cclb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (944, 1, N'64k6j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (945, 1, N'jqgqx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (946, 1, N'djo1x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (947, 1, N'om60o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (948, 1, N'qeemb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (949, 1, N'l89fu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (950, 1, N'7m8yv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (951, 1, N'pt5f2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (952, 1, N'97z1q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (953, 1, N'3ydas', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (954, 1, N'nfm7u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (955, 1, N'2z848', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (956, 1, N'krb6z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (957, 1, N'1l0fi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (958, 1, N'5r08o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (959, 1, N'tpm6i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (960, 1, N'w59wg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (961, 1, N'29ad3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (962, 1, N'zvahr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (963, 1, N's53cy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (964, 1, N'r871x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (965, 1, N'6onsb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (966, 1, N'mnbwl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (967, 1, N'orpz6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (968, 1, N'1kwms', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (969, 1, N'jrtq6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (970, 1, N'xwjh0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (971, 1, N'y8h9k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (972, 1, N'owscr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (973, 1, N'ltn5c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (974, 1, N'aqdf6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (975, 1, N'hlvjn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (976, 1, N'o46wo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (977, 1, N'0d46x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (978, 1, N'qkqps', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (979, 1, N'f1u4g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (980, 1, N'0dyo5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (981, 1, N'gtekt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (982, 1, N'mm8v5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (983, 1, N'tz6y0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (984, 1, N'izrhv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (985, 1, N'0axx0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (986, 1, N'p10cx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (987, 1, N'lgs0h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (988, 1, N'h9tnl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (989, 1, N'dl4t8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (990, 1, N'q56d8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (991, 1, N'awq2e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (992, 1, N'g5qud', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (993, 1, N'uw68u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (994, 1, N'ngfqt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (995, 1, N'ife5s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (996, 1, N'pfdyk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (997, 1, N't5wdw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (998, 1, N'yz0vb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (999, 1, N'ls9j1', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1000, 1, N'ro69v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1001, 2, N'km80i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1002, 2, N'8jhq8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1003, 2, N'7m1ue', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1004, 2, N'68ug7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1005, 2, N'pii4q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1006, 2, N'lq5lo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1007, 2, N'5hbtt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1008, 2, N'cvcxs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1009, 2, N'6lheu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1010, 2, N'wg978', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1011, 2, N'hki1q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1012, 2, N'cddk7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1013, 2, N'ro5cd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1014, 2, N'zkhac', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1015, 2, N'k67yb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1016, 2, N'daej3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1017, 2, N'er8mh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1018, 2, N'v9kcr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1019, 2, N'9s2za', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1020, 2, N'spfb5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1021, 2, N'l985x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1022, 2, N'lmu0m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1023, 2, N'c94q2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1024, 2, N'apt4r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1025, 2, N'zaetd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1026, 2, N'2dhxt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1027, 2, N'y4dos', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1028, 2, N'fscy6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1029, 2, N'iptzo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1030, 2, N'aym7a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1031, 2, N'c6ltf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1032, 2, N'l4p25', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1033, 2, N'hf7hy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1034, 2, N'h5p8x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1035, 2, N'rn48i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1036, 2, N'kqped', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1037, 2, N'e1kwq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1038, 2, N'1ttig', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1039, 2, N'kdk3y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1040, 2, N'drmah', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1041, 2, N'eiojs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1042, 2, N'ybmk4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1043, 2, N'4pkz0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1044, 2, N'q4k07', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1045, 2, N'ymh1n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1046, 2, N'odakf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1047, 2, N'3do78', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1048, 2, N'6mae1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1049, 2, N'zginl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1050, 2, N'52vdi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1051, 2, N'igwds', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1052, 2, N'2bw6d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1053, 2, N'vacfb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1054, 2, N'0bn03', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1055, 2, N'd4g8h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1056, 2, N'rd3qr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1057, 2, N'ws7b6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1058, 2, N'wrkpg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1059, 2, N'40eaf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1060, 2, N'yedlu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1061, 2, N'3p4je', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1062, 2, N'oax6a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1063, 2, N'yigor', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1064, 2, N'ddajp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1065, 2, N'j18t8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1066, 2, N'nzg2s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1067, 2, N'n9r5y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1068, 2, N'hxy6r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1069, 2, N'v4nor', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1070, 2, N'wtzsc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1071, 2, N've46l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1072, 2, N'cqlk1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1073, 2, N'y34ox', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1074, 2, N'z0l0k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1075, 2, N'qpd13', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1076, 2, N'ontbm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1077, 2, N'39y06', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1078, 2, N'ifvuv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1079, 2, N'0lnf2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1080, 2, N'2a902', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1081, 2, N'6i9hw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1082, 2, N'gacc6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1083, 2, N'z6k88', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1084, 2, N'zfdro', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1085, 2, N'tf0fu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1086, 2, N'eb88b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1087, 2, N'on3ip', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1088, 2, N'vaqe0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1089, 2, N'idsx6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1090, 2, N'3bphd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1091, 2, N'w6slj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1092, 2, N'1r4xs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1093, 2, N'ebeas', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1094, 2, N'ldbsm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1095, 2, N'yz90g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1096, 2, N'qwdi0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1097, 2, N'cw14p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1098, 2, N'r5r8y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1099, 2, N'df3ww', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1100, 2, N'g9reu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1101, 2, N'0a64o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1102, 2, N'771f3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1103, 2, N'eov7p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1104, 2, N'rkjvb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1105, 2, N'qwc4j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1106, 2, N's6nea', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1107, 2, N're9ya', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1108, 2, N'c07qr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1109, 2, N'udlfu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1110, 2, N'zu6ge', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1111, 2, N'5z5ce', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1112, 2, N'e7cu5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1113, 2, N'btxfm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1114, 2, N'9o76n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1115, 2, N'1n2er', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1116, 2, N'mk7kt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1117, 2, N'8ah9e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1118, 2, N'1i6t5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1119, 2, N'eymuq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1120, 2, N'aqg2u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1121, 2, N'kx92m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1122, 2, N's61v2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1123, 2, N'392a7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1124, 2, N'bmxav', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1125, 2, N'1snbj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1126, 2, N'daixq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1127, 2, N'6dezj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1128, 2, N'lboxv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1129, 2, N'4rk1b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1130, 2, N'e5lxp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1131, 2, N'x2gh3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1132, 2, N'2k8tj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1133, 2, N'syef5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1134, 2, N'05c1w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1135, 2, N'a7ap0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1136, 2, N'khv9e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1137, 2, N'hyvi2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1138, 2, N'd766q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1139, 2, N'ad5nc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1140, 2, N'gmf5l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1141, 2, N'j3tap', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1142, 2, N'z11qt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1143, 2, N'uz8ob', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1144, 2, N'3c6m2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1145, 2, N'38fkv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1146, 2, N'7cwmu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1147, 2, N'7czx5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1148, 2, N'oeu2c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1149, 2, N'mfpn6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1150, 2, N'leqmj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1151, 2, N'dq3dr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1152, 2, N'kyips', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1153, 2, N'xeo6v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1154, 2, N'r9ltx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1155, 2, N'yrdjp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1156, 2, N'xs1oj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1157, 2, N'2wkcr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1158, 2, N'qjvfu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1159, 2, N'06fkp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1160, 2, N'h1t1o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1161, 2, N'm26zu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1162, 2, N'vmty4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1163, 2, N'164gz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1164, 2, N'b4lpf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1165, 2, N'iof87', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1166, 2, N'2m33i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1167, 2, N'699a7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1168, 2, N'9zvs5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1169, 2, N'dz7l2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1170, 2, N'3b8uo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1171, 2, N'mpewg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1172, 2, N'8x711', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1173, 2, N'jt0p7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1174, 2, N'264iz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1175, 2, N'mj3tb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1176, 2, N'sq3gd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1177, 2, N'1njp5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1178, 2, N'r4n39', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1179, 2, N'm130w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1180, 2, N'u9rna', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1181, 2, N'7h04c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1182, 2, N'dvuvx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1183, 2, N'r31ya', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1184, 2, N'5kkuq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1185, 2, N'7sajn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1186, 2, N'vqc7q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1187, 2, N't8pff', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1188, 2, N'txon2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1189, 2, N'5j1gr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1190, 2, N's9f01', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1191, 2, N'ky77c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1192, 2, N'ohqrq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1193, 2, N'xtxee', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1194, 2, N'tovsq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1195, 2, N'h571u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1196, 2, N'x1314', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1197, 2, N'vklgg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1198, 2, N'4asd0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1199, 2, N'mh66f', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1200, 2, N'mwxc8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1201, 2, N'enwjt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1202, 2, N'o1gmo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1203, 2, N'xnyw5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1204, 2, N'mhr8j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1205, 2, N's5s2e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1206, 2, N'a8awi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1207, 2, N'bd130', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1208, 2, N'iycw1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1209, 2, N'c4fyc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1210, 2, N'9skb3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1211, 2, N'efz2q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1212, 2, N'i44ft', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1213, 2, N'p1udn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1214, 2, N'tw55x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1215, 2, N'xf4gh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1216, 2, N'y03zf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1217, 2, N'sy92e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1218, 2, N'6o8ns', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1219, 2, N'n47cl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1220, 2, N'ljclt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1221, 2, N'mwoof', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1222, 2, N'9ksv1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1223, 2, N'sbf9b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1224, 2, N'1119q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1225, 2, N'eysnj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1226, 2, N'3h245', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1227, 2, N'oxsg2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1228, 2, N'5kvxe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1229, 2, N'w6mva', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1230, 2, N'my7bu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1231, 2, N'tsc5o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1232, 2, N'ydael', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1233, 2, N'1ry0n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1234, 2, N'4t9hf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1235, 2, N'qgd44', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1236, 2, N'il7n7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1237, 2, N'ek0jm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1238, 2, N'5vw1d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1239, 2, N'2krmn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1240, 2, N'ehwig', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1241, 2, N'2zz5e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1242, 2, N'npibf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1243, 2, N'mgxgg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1244, 2, N'q1oor', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1245, 2, N'j6hdn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1246, 2, N'gz1rz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1247, 2, N'bzzhe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1248, 2, N'pv4f8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1249, 2, N'qmvw0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1250, 2, N'wwkf6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1251, 2, N'n3h17', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1252, 2, N'6svs8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1253, 2, N'xx1le', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1254, 2, N'xqqb1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1255, 2, N'56jpa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1256, 2, N'6kum0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1257, 2, N'towum', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1258, 2, N'ir7ji', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1259, 2, N'69lgl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1260, 2, N'3vksd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1261, 2, N'fgiob', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1262, 2, N'qt20a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1263, 2, N'v7i1o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1264, 2, N'jbg95', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1265, 2, N'ftg34', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1266, 2, N'6uceh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1267, 2, N'lacjv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1268, 2, N'nfht6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1269, 2, N'yzhjw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1270, 2, N'80t1b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1271, 2, N'1okw8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1272, 2, N'w9pte', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1273, 2, N'5ryty', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1274, 2, N'v59gb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1275, 2, N'd3xch', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1276, 2, N'pl6h5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1277, 2, N'fbkcp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1278, 2, N'7zpk8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1279, 2, N'n0yob', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1280, 2, N'hbxua', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1281, 2, N'd0n08', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1282, 2, N'80ipt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1283, 2, N'kdix9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1284, 2, N'4gve1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1285, 2, N'5qzhy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1286, 2, N'meib9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1287, 2, N'oymg2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1288, 2, N'pxudq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1289, 2, N'gra1y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1290, 2, N'ksbph', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1291, 2, N'bpt3f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1292, 2, N'wafbv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1293, 2, N'3rgpe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1294, 2, N'w0b4t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1295, 2, N'gvsxu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1296, 2, N'op8to', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1297, 2, N'4d348', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1298, 2, N'8ftbf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1299, 2, N'ossrx', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1300, 2, N'ykvwb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1301, 2, N'tqg5a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1302, 2, N'p75i0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1303, 2, N'hcwx1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1304, 2, N'zymqg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1305, 2, N'rhazf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1306, 2, N'ydaa6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1307, 2, N'd4mr5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1308, 2, N'n773t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1309, 2, N'ajkk8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1310, 2, N'm6507', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1311, 2, N'a8epu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1312, 2, N'lqr0m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1313, 2, N'm75lx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1314, 2, N'mze1n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1315, 2, N'20s6g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1316, 2, N'h6z02', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1317, 2, N'1hjc5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1318, 2, N'ez66u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1319, 2, N'7qhqh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1320, 2, N'co9ww', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1321, 2, N'w1emf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1322, 2, N'kpijn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1323, 2, N'o017u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1324, 2, N'ex2qs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1325, 2, N'w3hgq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1326, 2, N'lsbzd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1327, 2, N'27cdg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1328, 2, N'ad76v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1329, 2, N'zrxtg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1330, 2, N'gzk5c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1331, 2, N'pvse9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1332, 2, N'3t753', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1333, 2, N'1nsfu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1334, 2, N'qxx1u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1335, 2, N'b0543', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1336, 2, N'efyak', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1337, 2, N'wifwy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1338, 2, N'ho8dn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1339, 2, N'qfbd4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1340, 2, N'l8r90', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1341, 2, N'sbslb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1342, 2, N'yzyl5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1343, 2, N'x56vg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1344, 2, N'sh6rn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1345, 2, N'bztoe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1346, 2, N'6z2as', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1347, 2, N'fxzk2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1348, 2, N'uz4v9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1349, 2, N'r0xiz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1350, 2, N'uip6l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1351, 2, N'dc9vy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1352, 2, N'3sehe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1353, 2, N'97x2z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1354, 2, N'9gw3w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1355, 2, N'3nks5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1356, 2, N'lbkyt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1357, 2, N'xj6zo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1358, 2, N'dydw9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1359, 2, N'buxqa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1360, 2, N'uc4tz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1361, 2, N'owwks', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1362, 2, N'01rzn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1363, 2, N'1iqxr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1364, 2, N'za8ow', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1365, 2, N'lca4u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1366, 2, N'iz4rl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1367, 2, N'ig18e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1368, 2, N'awwgy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1369, 2, N'lgnih', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1370, 2, N'3e98k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1371, 2, N'tdq6o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1372, 2, N'lw2zk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1373, 2, N'a7aof', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1374, 2, N'urrtr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1375, 2, N'co2zl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1376, 2, N'fz1w0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1377, 2, N'd05g1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1378, 2, N'e04u3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1379, 2, N'o466y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1380, 2, N'nf9dx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1381, 2, N'mxqri', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1382, 2, N'fl0vi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1383, 2, N'w4g9g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1384, 2, N'kc3wa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1385, 2, N'3x60c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1386, 2, N'ir5b7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1387, 2, N'9zy9o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1388, 2, N'pjn8v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1389, 2, N'39img', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1390, 2, N'ty7zn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1391, 2, N'llnd3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1392, 2, N'y10oa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1393, 2, N'yqzyi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1394, 2, N'6ghu1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1395, 2, N'ay5ah', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1396, 2, N'4pttt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1397, 2, N'uufxw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1398, 2, N'xmvfz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1399, 2, N'xt987', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1400, 2, N'mktdj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1401, 2, N'mqm8n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1402, 2, N'xqm69', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1403, 2, N'jhg5p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1404, 2, N'ekbcv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1405, 2, N'uvb5d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1406, 2, N'qz7d4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1407, 2, N't5qjg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1408, 2, N'dhhj8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1409, 2, N'hazgq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1410, 2, N'qnes3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1411, 2, N'cirsz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1412, 2, N'1pr47', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1413, 2, N'8sjbp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1414, 2, N'o06ym', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1415, 2, N'6d1dn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1416, 2, N't64px', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1417, 2, N'dvoj1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1418, 2, N'kn8up', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1419, 2, N'x0mma', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1420, 2, N'y1x0b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1421, 2, N'zqpg7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1422, 2, N'9qoef', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1423, 2, N'5uch4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1424, 2, N'md9jf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1425, 2, N'b2mjy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1426, 2, N'f0pcz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1427, 2, N'2idn7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1428, 2, N'wfim2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1429, 2, N'384ot', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1430, 2, N'dyesx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1431, 2, N'u1nva', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1432, 2, N'7egr1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1433, 2, N'ibmpn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1434, 2, N'wqykh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1435, 2, N'h5xrl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1436, 2, N'c88zv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1437, 2, N'rv6oe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1438, 2, N'b5sma', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1439, 2, N's91ut', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1440, 2, N'2wob7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1441, 2, N'w94kq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1442, 2, N'ze6k8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1443, 2, N'8gq5k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1444, 2, N'xe7ll', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1445, 2, N'08mjz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1446, 2, N'idc7s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1447, 2, N'pt619', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1448, 2, N'r0w8o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1449, 2, N'69hob', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1450, 2, N'ms5j5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1451, 2, N'xzdzg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1452, 2, N'xxvvi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1453, 2, N'wc81t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1454, 2, N'pjz63', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1455, 2, N'6s96p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1456, 2, N'118in', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1457, 2, N'0i2b5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1458, 2, N'0phum', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1459, 2, N'4fb02', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1460, 2, N'4bp5v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1461, 2, N'c29q9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1462, 2, N'fzgjp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1463, 2, N'5znhr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1464, 2, N'nj662', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1465, 2, N'9beu8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1466, 2, N'1rjev', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1467, 2, N'zlcwk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1468, 2, N'7jlc0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1469, 2, N'ai7eq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1470, 2, N'f23io', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1471, 2, N'uftcw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1472, 2, N'ayosh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1473, 2, N'xqcy0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1474, 2, N'uw06u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1475, 2, N'e83f2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1476, 2, N'1e9d3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1477, 2, N'8xaza', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1478, 2, N'u2a9j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1479, 2, N'i435c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1480, 2, N'tfjo6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1481, 2, N'sb6xj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1482, 2, N'wlnj5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1483, 2, N'6ykzi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1484, 2, N'9pnxf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1485, 2, N'1v0xl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1486, 2, N'kf8di', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1487, 2, N'v5uhk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1488, 2, N'71nqo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1489, 2, N'io0em', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1490, 2, N'ttewd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1491, 2, N'e2vje', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1492, 2, N'6kjm8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1493, 2, N'rnkbj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1494, 2, N'bedol', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1495, 2, N'ic7i6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1496, 2, N'm5vk1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1497, 2, N'1bl9e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1498, 2, N'2jldn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1499, 2, N'wsar7', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1500, 2, N'4ez5l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1501, 2, N'ppzk5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1502, 2, N'b5mm1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1503, 2, N'by8uh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1504, 2, N'pbk6r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1505, 2, N'22abz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1506, 2, N'zcqkc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1507, 2, N'if09m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1508, 2, N'llbed', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1509, 2, N'669ll', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1510, 2, N'7tpjr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1511, 2, N'333nt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1512, 2, N'wpxvf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1513, 2, N'9pckt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1514, 2, N'579i6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1515, 2, N'eaf2v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1516, 2, N'53yz1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1517, 2, N'gwg2j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1518, 2, N'omnpz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1519, 2, N'5xp9d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1520, 2, N'q4z2q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1521, 2, N'9thnn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1522, 2, N'2ya2x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1523, 2, N'31838', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1524, 2, N'njjbe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1525, 2, N'tutta', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1526, 2, N'qugye', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1527, 2, N'be6j1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1528, 2, N'wo3pq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1529, 2, N'0lv26', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1530, 2, N'ezva0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1531, 2, N'hvxy6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1532, 2, N'p9xm7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1533, 2, N'hrlyw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1534, 2, N'y5zcm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1535, 2, N'8q4un', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1536, 2, N'h91x6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1537, 2, N'18g86', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1538, 2, N'qqhml', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1539, 2, N'w0qri', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1540, 2, N'ja7gh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1541, 2, N'j9ty2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1542, 2, N'10dkz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1543, 2, N'qiaqg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1544, 2, N'iln1g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1545, 2, N'hxm0z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1546, 2, N'h9mle', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1547, 2, N'hbvpw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1548, 2, N'1psgf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1549, 2, N'zn7x5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1550, 2, N'o09la', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1551, 2, N'7xf99', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1552, 2, N'wx38u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1553, 2, N'1o1gr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1554, 2, N'oxv4p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1555, 2, N'33gwq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1556, 2, N'40z5l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1557, 2, N'rablg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1558, 2, N'u6vqa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1559, 2, N'evtwn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1560, 2, N'kv0fq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1561, 2, N'1ef6g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1562, 2, N'eqtse', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1563, 2, N'588wc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1564, 2, N'1nq97', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1565, 2, N'sbe3l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1566, 2, N'hjuig', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1567, 2, N'j9tou', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1568, 2, N'm4fec', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1569, 2, N'dmcle', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1570, 2, N'fx6tw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1571, 2, N'7e1h7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1572, 2, N'z9lu8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1573, 2, N'45km5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1574, 2, N'6otcz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1575, 2, N'6hl73', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1576, 2, N'g93yf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1577, 2, N'umbwi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1578, 2, N'ehlq5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1579, 2, N'mtugh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1580, 2, N'ibzph', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1581, 2, N'1d44z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1582, 2, N'z34n1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1583, 2, N'zgwpo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1584, 2, N'r4ye0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1585, 2, N'zcdhm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1586, 2, N'nxfzv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1587, 2, N'ejnrn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1588, 2, N'qsg6s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1589, 2, N'ln7zf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1590, 2, N'g6e10', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1591, 2, N'omvzs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1592, 2, N'yaxrm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1593, 2, N'cxf2w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1594, 2, N'q2fb8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1595, 2, N'9x2vo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1596, 2, N'lenbf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1597, 2, N'qsn9g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1598, 2, N'2xy8z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1599, 2, N'p5ytq', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1600, 2, N'yifcy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1601, 2, N'o0c31', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1602, 2, N'0uakh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1603, 2, N'twvm5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1604, 2, N'tjfv4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1605, 2, N'2ehms', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1606, 2, N'd8if0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1607, 2, N'd9ln1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1608, 2, N'0puiq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1609, 2, N'hxn1f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1610, 2, N'2kmx6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1611, 2, N'ocui6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1612, 2, N'js0lx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1613, 2, N'2l4ud', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1614, 2, N'uliuf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1615, 2, N'dz7fw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1616, 2, N'e0qgz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1617, 2, N'3wvil', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1618, 2, N'apdqr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1619, 2, N'hziuy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1620, 2, N'532xv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1621, 2, N'rc2s3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1622, 2, N'yfov1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1623, 2, N'tcuv4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1624, 2, N'f0wid', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1625, 2, N'ei1c7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1626, 2, N'ormr1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1627, 2, N'l82ui', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1628, 2, N'03dpx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1629, 2, N'5arz8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1630, 2, N'ffw0s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1631, 2, N'fgtur', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1632, 2, N'ilzup', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1633, 2, N'h274q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1634, 2, N'uj9nd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1635, 2, N'lxgvh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1636, 2, N'e0cd2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1637, 2, N'i4w9v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1638, 2, N'eoid9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1639, 2, N'pesap', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1640, 2, N'ddxjo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1641, 2, N'5fjwg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1642, 2, N'sa8mm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1643, 2, N'rjv1g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1644, 2, N'nf8il', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1645, 2, N'ga6ny', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1646, 2, N'hegfe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1647, 2, N'bd2z6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1648, 2, N'cua2c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1649, 2, N'eq60r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1650, 2, N'gs13c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1651, 2, N'8eo7h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1652, 2, N'5j578', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1653, 2, N'o32il', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1654, 2, N'oq64d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1655, 2, N'2efgh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1656, 2, N'0eg6s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1657, 2, N'znndg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1658, 2, N'6y5sb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1659, 2, N'3zd4y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1660, 2, N'lxyod', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1661, 2, N'zv6zj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1662, 2, N'39i0r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1663, 2, N'0d9oj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1664, 2, N'bqycp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1665, 2, N'0uo2k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1666, 2, N'dblr5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1667, 2, N'cp122', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1668, 2, N'dqx4m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1669, 2, N'7peal', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1670, 2, N'z0yuw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1671, 2, N'49w9m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1672, 2, N'ehdpg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1673, 2, N'1x04o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1674, 2, N'lmgwg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1675, 2, N'u24zr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1676, 2, N'kqnru', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1677, 2, N'mn05a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1678, 2, N'd31qy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1679, 2, N'5nixu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1680, 2, N'jykw9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1681, 2, N'nuboc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1682, 2, N'ce6rb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1683, 2, N'y4v43', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1684, 2, N'o653l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1685, 2, N'ru08k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1686, 2, N'hugeh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1687, 2, N'wg1rg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1688, 2, N'2lm28', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1689, 2, N'87jo9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1690, 2, N'b2n4g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1691, 2, N'm2qks', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1692, 2, N'33de4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1693, 2, N's81kp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1694, 2, N'scdxa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1695, 2, N'cuc5m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1696, 2, N'ukl8j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1697, 2, N'pgl84', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1698, 2, N'3zq9m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1699, 2, N'8hh8q', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1700, 2, N'af99q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1701, 2, N'8y04d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1702, 2, N'2zv88', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1703, 2, N'tsf5p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1704, 2, N'lw3pv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1705, 2, N'2wekb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1706, 2, N'5meom', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1707, 2, N'okmrk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1708, 2, N'0qr5c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1709, 2, N'eerb3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1710, 2, N'qcmse', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1711, 2, N'nmuny', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1712, 2, N'lup2i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1713, 2, N'pvgwt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1714, 2, N'jfxuy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1715, 2, N'5e7mr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1716, 2, N'xecrv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1717, 2, N'29vk8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1718, 2, N'c0938', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1719, 2, N'gbzwx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1720, 2, N't85ru', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1721, 2, N'ko24i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1722, 2, N'ioh6a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1723, 2, N'gr7hp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1724, 2, N'p95xr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1725, 2, N'tg3vs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1726, 2, N'4plz8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1727, 2, N'zjv7k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1728, 2, N'nh1bz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1729, 2, N'xsd31', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1730, 2, N'ydrhh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1731, 2, N'tdhab', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1732, 2, N'evglo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1733, 2, N'3ds7k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1734, 2, N'76a7b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1735, 2, N'hh383', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1736, 2, N'ada33', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1737, 2, N'07dro', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1738, 2, N'vbu6g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1739, 2, N'2apx6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1740, 2, N'uafs4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1741, 2, N'2duf9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1742, 2, N'mjjha', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1743, 2, N'aunsx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1744, 2, N'59aty', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1745, 2, N'5ld0j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1746, 2, N'h2gbj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1747, 2, N'a8r9b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1748, 2, N'wn8sc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1749, 2, N'm1n5f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1750, 2, N'hx79b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1751, 2, N'uaw38', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1752, 2, N'q9362', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1753, 2, N'tci7a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1754, 2, N'cdnqb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1755, 2, N'sbsqm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1756, 2, N'e7ivb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1757, 2, N't4hay', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1758, 2, N'9lybu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1759, 2, N'wtczs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1760, 2, N'jtp5d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1761, 2, N'ekq8t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1762, 2, N'tsfr4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1763, 2, N't1i4j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1764, 2, N'y5hja', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1765, 2, N'0pm6o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1766, 2, N'8927c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1767, 2, N'urms7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1768, 2, N'jojre', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1769, 2, N'rghga', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1770, 2, N'5lhp3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1771, 2, N'omg5m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1772, 2, N'z7uuu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1773, 2, N'uzhok', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1774, 2, N'bo07a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1775, 2, N'kw0es', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1776, 2, N'uig5s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1777, 2, N'x1nex', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1778, 2, N'hlrgh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1779, 2, N'l3y6u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1780, 2, N'28268', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1781, 2, N'qvjpt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1782, 2, N'2wbm1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1783, 2, N'r1zb7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1784, 2, N'2md1c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1785, 2, N'07tzy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1786, 2, N'q73uz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1787, 2, N'wpj6c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1788, 2, N'cs7u5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1789, 2, N'vjeo0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1790, 2, N'uex91', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1791, 2, N'q5b4i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1792, 2, N'sbt0c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1793, 2, N'42qwf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1794, 2, N'br284', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1795, 2, N'jos5q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1796, 2, N'r2f9d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1797, 2, N'mk33j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1798, 2, N'0opyt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1799, 2, N'b8gsa', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1800, 2, N'23siy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1801, 2, N'clyfr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1802, 2, N'bmfn1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1803, 2, N'05ux0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1804, 2, N'u9xno', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1805, 2, N'wcep3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1806, 2, N'kha5x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1807, 2, N'yk6kb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1808, 2, N'avylh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1809, 2, N'ojb73', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1810, 2, N'fot1p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1811, 2, N'3ff4c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1812, 2, N'ahjlg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1813, 2, N'3lkzd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1814, 2, N'p8jv0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1815, 2, N'9lmfa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1816, 2, N'nahvx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1817, 2, N'6yip4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1818, 2, N'sfcia', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1819, 2, N'2lmen', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1820, 2, N'c9l3n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1821, 2, N'gf7bq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1822, 2, N's294z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1823, 2, N'99xxk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1824, 2, N'fd45u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1825, 2, N'k6bu7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1826, 2, N'x8h17', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1827, 2, N'oynir', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1828, 2, N'00h9m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1829, 2, N'zfitb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1830, 2, N'3yy3i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1831, 2, N'9eqjd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1832, 2, N'kdme2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1833, 2, N'tvi6l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1834, 2, N'kvpgt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1835, 2, N'p65t4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1836, 2, N'exstd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1837, 2, N'9knt7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1838, 2, N'jieeg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1839, 2, N'wncg2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1840, 2, N'e6li0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1841, 2, N'hirk2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1842, 2, N'di6p8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1843, 2, N'wv3a3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1844, 2, N'ihz9b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1845, 2, N'brk96', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1846, 2, N'c3z0z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1847, 2, N'hmk26', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1848, 2, N'12d03', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1849, 2, N'bmzgu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1850, 2, N'btcnt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1851, 2, N'7hmgz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1852, 2, N'z7rn0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1853, 2, N'ktfz0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1854, 2, N'kkbdb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1855, 2, N'qd9f9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1856, 2, N'z2ep5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1857, 2, N's1mh2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1858, 2, N'aaddh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1859, 2, N'3k09t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1860, 2, N'sg9qk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1861, 2, N'0s8ld', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1862, 2, N'4hgg9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1863, 2, N'63cri', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1864, 2, N'th87z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1865, 2, N'jh76h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1866, 2, N'fm9vr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1867, 2, N's2xfe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1868, 2, N'92ad7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1869, 2, N'236dk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1870, 2, N'aij1a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1871, 2, N'lic0a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1872, 2, N'tvbd7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1873, 2, N'riuzq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1874, 2, N'df6mi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1875, 2, N'0g496', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1876, 2, N'qk3wh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1877, 2, N'7divg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1878, 2, N'k06fv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1879, 2, N'o06fq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1880, 2, N'ujhxg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1881, 2, N'4m6sj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1882, 2, N'end4t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1883, 2, N'i1p6a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1884, 2, N'na8tg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1885, 2, N'ni014', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1886, 2, N'ajztm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1887, 2, N'hdgqm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1888, 2, N'vhzmb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1889, 2, N'6wcvm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1890, 2, N'wlafc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1891, 2, N'ukyq2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1892, 2, N'vveyj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1893, 2, N'4yurm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1894, 2, N'fu8to', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1895, 2, N'glwrk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1896, 2, N'0gfoh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1897, 2, N'yjtq2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1898, 2, N'7p0x1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1899, 2, N'acadh', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1900, 2, N'icujh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1901, 2, N'cmr05', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1902, 2, N'ixggb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1903, 2, N'pq0ru', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1904, 2, N'vedzp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1905, 2, N'z4l2o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1906, 2, N'dktkb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1907, 2, N'yv6gf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1908, 2, N'm22ut', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1909, 2, N'jiuwl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1910, 2, N'tmstv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1911, 2, N'd953r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1912, 2, N'hbyl1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1913, 2, N'8e6en', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1914, 2, N'4utmh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1915, 2, N'2lsgg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1916, 2, N'rkyq4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1917, 2, N'11ay7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1918, 2, N'yzcz7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1919, 2, N'ldq3v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1920, 2, N'fmpir', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1921, 2, N'92gl3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1922, 2, N'1qzxa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1923, 2, N'7mira', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1924, 2, N'gehgy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1925, 2, N'er4o6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1926, 2, N'z5zua', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1927, 2, N'f4q84', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1928, 2, N'8vy5g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1929, 2, N'iaoya', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1930, 2, N'8492o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1931, 2, N'aejtn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1932, 2, N's81pd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1933, 2, N'61ew5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1934, 2, N'c6jwc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1935, 2, N'vpmaq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1936, 2, N'ecfo7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1937, 2, N'457ga', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1938, 2, N'av6vm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1939, 2, N'93j1j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1940, 2, N'r5238', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1941, 2, N'cvn03', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1942, 2, N'u1idi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1943, 2, N'p3nri', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1944, 2, N'b48w4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1945, 2, N'qaxjc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1946, 2, N'1gu09', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1947, 2, N'iklq5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1948, 2, N'jsgmp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1949, 2, N'in2n6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1950, 2, N'gq2th', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1951, 2, N'x7f9r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1952, 2, N'b7dyc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1953, 2, N'ohre9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1954, 2, N'fr7v9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1955, 2, N'txwhv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1956, 2, N'dhkm6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1957, 2, N'lobtm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1958, 2, N'lem83', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1959, 2, N'moska', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1960, 2, N'b5yn1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1961, 2, N'ysgty', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1962, 2, N'9k8no', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1963, 2, N'4w010', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1964, 2, N'ag82y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1965, 2, N'bf91x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1966, 2, N'felgu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1967, 2, N'ht7vh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1968, 2, N'2hr4m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1969, 2, N'af8t9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1970, 2, N'zx0ta', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1971, 2, N'566y0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1972, 2, N'ttp6t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1973, 2, N'4913h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1974, 2, N'lzfu8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1975, 2, N'3yepx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1976, 2, N'5gp17', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1977, 2, N'ro2gz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1978, 2, N'kxi4y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1979, 2, N'i1vks', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1980, 2, N'bofmy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1981, 2, N'argvg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1982, 2, N'g2qb5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1983, 2, N'mey8c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1984, 2, N'qhue6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1985, 2, N'xql6z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1986, 2, N'bd37w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1987, 2, N'qbdc7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1988, 2, N'9igas', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1989, 2, N'rgh9l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1990, 2, N'edwib', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1991, 2, N'43bpa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1992, 2, N'tgj5f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1993, 2, N'd9too', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1994, 2, N'lavbc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1995, 2, N'iauvo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1996, 2, N'rjlvu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1997, 2, N'8ru52', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1998, 2, N'x9xcn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1999, 2, N'28k4p', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2000, 2, N'rx2ua', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2001, 3, N't6xyw', 0, 1)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2002, 3, N'uplby', 0, 1)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2003, 3, N'r67vj', 0, 1)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2004, 3, N'67e7w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2005, 3, N'2ov09', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2006, 3, N'0h61j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2007, 3, N'z8y7x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2008, 3, N'kd7ra', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2009, 3, N'hxhvd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2010, 3, N'02ojv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2011, 3, N'aunu6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2012, 3, N'el7z5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2013, 3, N'mtt28', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2014, 3, N'sha88', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2015, 3, N'39w7o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2016, 3, N'eh9xi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2017, 3, N'82xfi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2018, 3, N'fveas', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2019, 3, N'9giwy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2020, 3, N'ydowu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2021, 3, N't2qk2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2022, 3, N'a7qf1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2023, 3, N'7lkq7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2024, 3, N't6ou3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2025, 3, N'7c9p9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2026, 3, N'x1ai0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2027, 3, N'b2ncz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2028, 3, N'fmnmi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2029, 3, N'hf8iv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2030, 3, N'y51ye', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2031, 3, N'1y43w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2032, 3, N'q2bkf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2033, 3, N'i7hp0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2034, 3, N'e8h11', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2035, 3, N'hsblw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2036, 3, N'2d04l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2037, 3, N'1ald8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2038, 3, N'm8tqi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2039, 3, N'mkch9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2040, 3, N'j7tsq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2041, 3, N'0xa67', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2042, 3, N'jxsh3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2043, 3, N'mbh9n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2044, 3, N'iwdqo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2045, 3, N'go1so', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2046, 3, N'6q4mm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2047, 3, N'4uinv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2048, 3, N'd9ogz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2049, 3, N'zpmw6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2050, 3, N'ldc30', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2051, 3, N'x4ddk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2052, 3, N'l6rrb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2053, 3, N'22g49', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2054, 3, N'234oj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2055, 3, N'ih71z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2056, 3, N'0bewd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2057, 3, N'3navz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2058, 3, N'9qecj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2059, 3, N'gs6f6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2060, 3, N'6jsxe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2061, 3, N'riyur', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2062, 3, N'q7lou', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2063, 3, N'k24oh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2064, 3, N'p2uf9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2065, 3, N'ly1ec', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2066, 3, N'0k243', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2067, 3, N'qsrsw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2068, 3, N'uyqei', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2069, 3, N'ce0s9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2070, 3, N'oxs7r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2071, 3, N'dzny2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2072, 3, N'2rtr1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2073, 3, N'ffrvd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2074, 3, N'1lm1x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2075, 3, N'0mq66', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2076, 3, N'g8ify', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2077, 3, N'c14nz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2078, 3, N'1f3z3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2079, 3, N'ce9md', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2080, 3, N'7xeph', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2081, 3, N'dk0k0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2082, 3, N'1jr1w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2083, 3, N'4io2z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2084, 3, N'okd5m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2085, 3, N'vsx8u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2086, 3, N'vnd39', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2087, 3, N's437u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2088, 3, N'1aux8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2089, 3, N'rybd9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2090, 3, N'40gxy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2091, 3, N'wtjdv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2092, 3, N'vx2ze', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2093, 3, N'nfy1d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2094, 3, N'aoqh7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2095, 3, N'nzq64', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2096, 3, N'7qt9z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2097, 3, N'5gqem', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2098, 3, N'9u0l9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2099, 3, N'di4su', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2100, 3, N'maja9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2101, 3, N'pj80l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2102, 3, N'6dmiy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2103, 3, N'fe39i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2104, 3, N'hztoe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2105, 3, N'pyei3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2106, 3, N'e47ls', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2107, 3, N'7gtak', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2108, 3, N'vh02q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2109, 3, N'6isx4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2110, 3, N'9p5kn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2111, 3, N'wq46t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2112, 3, N'1f06g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2113, 3, N'bfa00', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2114, 3, N'8v2zx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2115, 3, N'9918i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2116, 3, N'hfrn4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2117, 3, N'z9x85', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2118, 3, N'qlxqs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2119, 3, N'qr4vo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2120, 3, N'0h166', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2121, 3, N'owfxn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2122, 3, N'xy6xm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2123, 3, N'vxmbr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2124, 3, N'csc4j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2125, 3, N'w7mhg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2126, 3, N'sffur', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2127, 3, N'9ourq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2128, 3, N'c4aui', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2129, 3, N'1p9d6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2130, 3, N'2e2em', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2131, 3, N'if6wj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2132, 3, N'qj8q5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2133, 3, N'rtmgn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2134, 3, N'hd4uo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2135, 3, N'hrrwr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2136, 3, N'h8ikn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2137, 3, N'nmbhj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2138, 3, N'3r8ia', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2139, 3, N'35ty0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2140, 3, N'ic30z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2141, 3, N'zjhze', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2142, 3, N'0ykeb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2143, 3, N'sbyds', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2144, 3, N'ere7t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2145, 3, N'zfwuv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2146, 3, N'm825j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2147, 3, N'efsux', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2148, 3, N'delds', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2149, 3, N'fg3hr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2150, 3, N'1hqgv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2151, 3, N'185h9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2152, 3, N'uxxe2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2153, 3, N'25p56', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2154, 3, N'ntdpp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2155, 3, N'agbon', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2156, 3, N'tlpc3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2157, 3, N'erwjs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2158, 3, N'gjkud', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2159, 3, N'prhlz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2160, 3, N'k08ke', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2161, 3, N'ida0v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2162, 3, N'u6q3q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2163, 3, N'iiulx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2164, 3, N'kignz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2165, 3, N'disl9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2166, 3, N's90zc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2167, 3, N'2ne8u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2168, 3, N'aq6x7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2169, 3, N'j2qe4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2170, 3, N'h76xo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2171, 3, N'buuvb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2172, 3, N'auy0d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2173, 3, N'vg11x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2174, 3, N'4dv0w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2175, 3, N'3mspp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2176, 3, N'l1or2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2177, 3, N'udckb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2178, 3, N'h2t7u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2179, 3, N'q1ful', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2180, 3, N'dazr9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2181, 3, N'dlfav', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2182, 3, N'zcffz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2183, 3, N'igh7t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2184, 3, N'sdrzp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2185, 3, N'cuygg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2186, 3, N'bh8em', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2187, 3, N'kb6rz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2188, 3, N'i7czm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2189, 3, N'fxohl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2190, 3, N'juhb2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2191, 3, N'9t9b7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2192, 3, N'sx94t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2193, 3, N'rea2p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2194, 3, N'hj0ik', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2195, 3, N'vb2nk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2196, 3, N'ofr56', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2197, 3, N'r97ln', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2198, 3, N'1c5tg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2199, 3, N'v7ig4', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2200, 3, N'bxw1d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2201, 3, N'a490h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2202, 3, N'71w1t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2203, 3, N'nfe7b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2204, 3, N'sgzoy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2205, 3, N'fogbz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2206, 3, N'x3wti', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2207, 3, N'0tz16', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2208, 3, N'xagdp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2209, 3, N'9pda3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2210, 3, N'p3kel', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2211, 3, N'47hd8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2212, 3, N'vx7au', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2213, 3, N'efcs2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2214, 3, N'3qnao', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2215, 3, N's9v9y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2216, 3, N'zkfij', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2217, 3, N'3srho', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2218, 3, N'3mw2k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2219, 3, N'9cftl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2220, 3, N'4nuha', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2221, 3, N'9qj03', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2222, 3, N'4lioj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2223, 3, N'krz10', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2224, 3, N'vx4e9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2225, 3, N'q3uzo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2226, 3, N'p3cx4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2227, 3, N'lz8hk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2228, 3, N'ni0ot', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2229, 3, N'rehsa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2230, 3, N'rmo3z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2231, 3, N'gtqit', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2232, 3, N'f5umn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2233, 3, N'ajuu8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2234, 3, N'vtsqm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2235, 3, N'm6qvr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2236, 3, N'lwcz6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2237, 3, N'dpi7x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2238, 3, N'2jzxf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2239, 3, N'ryoas', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2240, 3, N'huxuo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2241, 3, N'748qm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2242, 3, N'jd40i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2243, 3, N's34pj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2244, 3, N'vbw6f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2245, 3, N'l34k5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2246, 3, N'yspck', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2247, 3, N'19rl9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2248, 3, N'jq2vn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2249, 3, N'zo9pw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2250, 3, N'y4906', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2251, 3, N'g70od', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2252, 3, N'd9xvy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2253, 3, N'1y1qq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2254, 3, N'tltpa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2255, 3, N'fibsq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2256, 3, N'74pyg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2257, 3, N'3sygd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2258, 3, N'4idi5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2259, 3, N'j2h6w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2260, 3, N'bws9d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2261, 3, N'mlt01', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2262, 3, N'76h8f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2263, 3, N'ju9o4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2264, 3, N'j9vnv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2265, 3, N'kilu1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2266, 3, N'mbe6p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2267, 3, N'kmpu4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2268, 3, N's87og', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2269, 3, N'8becv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2270, 3, N'z22cm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2271, 3, N'bafn2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2272, 3, N'd999p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2273, 3, N'51ks5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2274, 3, N'6eotl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2275, 3, N'kbhgx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2276, 3, N'jdj8b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2277, 3, N'tibto', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2278, 3, N'jhc20', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2279, 3, N's989k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2280, 3, N'g0wgz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2281, 3, N'uoj0c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2282, 3, N'9380t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2283, 3, N'a0a75', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2284, 3, N'wz1ew', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2285, 3, N'zcw32', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2286, 3, N'ldi6q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2287, 3, N'trcjr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2288, 3, N'f9lro', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2289, 3, N'pimj0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2290, 3, N'19bdx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2291, 3, N'q8rt9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2292, 3, N's1p70', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2293, 3, N'6vcja', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2294, 3, N'sy0pz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2295, 3, N'xojzg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2296, 3, N'rzmdb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2297, 3, N'lbei9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2298, 3, N'u9sk9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2299, 3, N'ntn0s', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2300, 3, N'4gdjh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2301, 3, N'djvna', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2302, 3, N'cz2nr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2303, 3, N'2om6o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2304, 3, N'4q3jp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2305, 3, N'tfpqm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2306, 3, N'dbthm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2307, 3, N'kwd57', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2308, 3, N'cp0i7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2309, 3, N'5hf2g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2310, 3, N'8hqly', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2311, 3, N'on33y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2312, 3, N'83fb7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2313, 3, N'bfvbh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2314, 3, N'flq9m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2315, 3, N'pzulu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2316, 3, N'l9xjn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2317, 3, N'6uht7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2318, 3, N'73kh8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2319, 3, N'jkzl6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2320, 3, N'zwevb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2321, 3, N'x0q9i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2322, 3, N'y2rim', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2323, 3, N'9g5xb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2324, 3, N'q7cdj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2325, 3, N'mbjbc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2326, 3, N'eajp5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2327, 3, N'z4biz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2328, 3, N'fdikj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2329, 3, N'flb59', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2330, 3, N'dpbjp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2331, 3, N'1ubly', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2332, 3, N'wrp6e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2333, 3, N'ysbmx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2334, 3, N'eew85', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2335, 3, N'mz23e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2336, 3, N'a9ob9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2337, 3, N'z8a9d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2338, 3, N'e30td', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2339, 3, N'yylfv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2340, 3, N'wjyh4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2341, 3, N'92dod', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2342, 3, N'c2hgy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2343, 3, N'wco7o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2344, 3, N'zscis', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2345, 3, N'lnc4g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2346, 3, N'yowis', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2347, 3, N'1kgh9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2348, 3, N'75v6b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2349, 3, N'mvu5q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2350, 3, N'wkn05', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2351, 3, N'ehpzt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2352, 3, N'vzjhp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2353, 3, N'xf9y6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2354, 3, N'm6h8r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2355, 3, N'46fgg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2356, 3, N'03hnu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2357, 3, N'oa5nn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2358, 3, N'u4rxn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2359, 3, N'hwnro', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2360, 3, N'gw58e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2361, 3, N'zcpja', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2362, 3, N'hbit3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2363, 3, N'2s5xa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2364, 3, N'wkwkm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2365, 3, N'rotuj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2366, 3, N'isy29', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2367, 3, N'd7ij4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2368, 3, N'lvwmf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2369, 3, N'sw84v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2370, 3, N'z00q1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2371, 3, N'6auwx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2372, 3, N'lt491', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2373, 3, N'zmqtz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2374, 3, N'4jw2z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2375, 3, N'bxjf3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2376, 3, N'5qy8u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2377, 3, N's2ibd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2378, 3, N'dnwwt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2379, 3, N'11xuq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2380, 3, N'gfof1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2381, 3, N'pe700', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2382, 3, N'i0p21', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2383, 3, N'546pj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2384, 3, N'6doqv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2385, 3, N'qx9j8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2386, 3, N'jayyx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2387, 3, N'zbtge', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2388, 3, N'n4sl4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2389, 3, N'n734y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2390, 3, N'64hlt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2391, 3, N'c18tk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2392, 3, N'2ey2q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2393, 3, N'hc0ec', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2394, 3, N'3lzl6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2395, 3, N'cvdwi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2396, 3, N't3fub', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2397, 3, N'o2nev', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2398, 3, N'8c96l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2399, 3, N'if04w', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2400, 3, N'kgz14', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2401, 3, N'vf6or', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2402, 3, N'rxml1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2403, 3, N'98d1b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2404, 3, N'ozvte', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2405, 3, N'0l39x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2406, 3, N'65i97', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2407, 3, N'mdo0p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2408, 3, N'j68xe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2409, 3, N'k0yem', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2410, 3, N'jb83i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2411, 3, N'vugxd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2412, 3, N'km70v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2413, 3, N'vonop', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2414, 3, N'5unl1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2415, 3, N's18p3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2416, 3, N'axywo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2417, 3, N'46p1l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2418, 3, N'171we', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2419, 3, N'78hcs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2420, 3, N'5njzr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2421, 3, N'zyxbz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2422, 3, N'4w13d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2423, 3, N'xxkm0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2424, 3, N'z9vdx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2425, 3, N'720g4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2426, 3, N'tu668', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2427, 3, N'wn9fy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2428, 3, N'fjnbr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2429, 3, N'fg8tr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2430, 3, N'kx4l2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2431, 3, N'61gct', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2432, 3, N'68qhf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2433, 3, N'kz45q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2434, 3, N'jxfyu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2435, 3, N'qvuvr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2436, 3, N'14gzu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2437, 3, N'5zueb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2438, 3, N'5h7v1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2439, 3, N'h2g6h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2440, 3, N'plcdh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2441, 3, N'wsf0m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2442, 3, N'khuu2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2443, 3, N'c10xj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2444, 3, N'uf03v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2445, 3, N'c0u6m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2446, 3, N'xpyoc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2447, 3, N'p1ds7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2448, 3, N'nt321', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2449, 3, N'xwn2z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2450, 3, N'qctww', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2451, 3, N'kvjrf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2452, 3, N'67joy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2453, 3, N'5tgsn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2454, 3, N'kxiz5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2455, 3, N'al8b7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2456, 3, N'pn2h6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2457, 3, N'v5b21', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2458, 3, N'3rvma', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2459, 3, N'qkpd6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2460, 3, N'eq4po', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2461, 3, N'2330v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2462, 3, N'8xiuz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2463, 3, N'tfbrc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2464, 3, N'9rn0t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2465, 3, N'2c5yp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2466, 3, N'z54f3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2467, 3, N'8sm2d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2468, 3, N'2blg2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2469, 3, N'gjbwr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2470, 3, N'ki7a6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2471, 3, N'wce6w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2472, 3, N'07ek5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2473, 3, N'd3c01', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2474, 3, N'a2jok', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2475, 3, N'8gh7m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2476, 3, N'tbihe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2477, 3, N'r83ig', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2478, 3, N'5oqgn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2479, 3, N'46akz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2480, 3, N'ngk5q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2481, 3, N'r9tz8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2482, 3, N'q5gtd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2483, 3, N'zy7go', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2484, 3, N'e94t5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2485, 3, N'wmdbq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2486, 3, N'bf7h9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2487, 3, N'm0n0x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2488, 3, N'roej0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2489, 3, N'ah6dx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2490, 3, N'f945u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2491, 3, N'om0a4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2492, 3, N'f5sj7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2493, 3, N'k78t0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2494, 3, N'8lgt7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2495, 3, N'05u34', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2496, 3, N'ppank', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2497, 3, N'blcwv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2498, 3, N'a9m6r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2499, 3, N'v64mp', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2500, 3, N'dimmy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2501, 3, N'42l84', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2502, 3, N't17go', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2503, 3, N'z5e85', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2504, 3, N'85l80', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2505, 3, N'98kbl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2506, 3, N'3ain1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2507, 3, N'hcyyq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2508, 3, N'jae2c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2509, 3, N'icgs2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2510, 3, N'016qr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2511, 3, N'h6ovz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2512, 3, N'5rkwb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2513, 3, N'tttph', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2514, 3, N'whqrv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2515, 3, N'81t6r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2516, 3, N'722iu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2517, 3, N'bd16t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2518, 3, N'kyc9u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2519, 3, N'10r1t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2520, 3, N'zs1kf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2521, 3, N'tlo4s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2522, 3, N'qmrd2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2523, 3, N'dzbc9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2524, 3, N'p1x56', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2525, 3, N'8eq64', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2526, 3, N'hk2n2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2527, 3, N'pardb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2528, 3, N'0y6nc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2529, 3, N'7g8hr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2530, 3, N'czp1d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2531, 3, N'755nh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2532, 3, N'o4sal', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2533, 3, N'guelm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2534, 3, N'ch8aj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2535, 3, N'15j39', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2536, 3, N'1fjp2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2537, 3, N's5aj5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2538, 3, N'tfe5w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2539, 3, N'5g5c6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2540, 3, N'nbx4o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2541, 3, N'41osm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2542, 3, N'cvcoq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2543, 3, N'jvci3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2544, 3, N'kt5p3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2545, 3, N'7dcoo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2546, 3, N'u9h6v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2547, 3, N'zspa7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2548, 3, N'1qs62', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2549, 3, N'8c0on', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2550, 3, N'jdxiv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2551, 3, N'4ghbq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2552, 3, N'1y9e2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2553, 3, N'cng20', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2554, 3, N'1fbkc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2555, 3, N'4b8x4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2556, 3, N'4nxbe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2557, 3, N'ql8k1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2558, 3, N'tkotg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2559, 3, N'crnez', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2560, 3, N'u67yw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2561, 3, N'dcmg1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2562, 3, N'2hugw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2563, 3, N'na89l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2564, 3, N'1p5bh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2565, 3, N'q1re9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2566, 3, N'mx37j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2567, 3, N'7p9pa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2568, 3, N'o92s8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2569, 3, N'lzh72', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2570, 3, N'ctn38', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2571, 3, N'fb5qf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2572, 3, N'muiho', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2573, 3, N'fox6y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2574, 3, N'8as97', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2575, 3, N'1xmc6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2576, 3, N'0uul7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2577, 3, N'3ja8e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2578, 3, N'6ttjy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2579, 3, N'40ud3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2580, 3, N'7ckj4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2581, 3, N'cao6g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2582, 3, N'sy3to', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2583, 3, N'1a6kv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2584, 3, N'5ny21', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2585, 3, N'oqikc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2586, 3, N'bcjj9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2587, 3, N'yjkr4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2588, 3, N'35e1w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2589, 3, N'i0956', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2590, 3, N'44ks7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2591, 3, N'tnssq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2592, 3, N'v1e3f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2593, 3, N'pptu0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2594, 3, N'szpp1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2595, 3, N'aj7fs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2596, 3, N'xrnni', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2597, 3, N'g10lp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2598, 3, N'k02bj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2599, 3, N'b0kvg', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2600, 3, N'3hofo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2601, 3, N'eo507', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2602, 3, N'kqn93', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2603, 3, N'eo0u9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2604, 3, N'yyhfp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2605, 3, N'17of0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2606, 3, N'j8l9z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2607, 3, N'pci9e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2608, 3, N'159of', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2609, 3, N'3n3if', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2610, 3, N'xazwr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2611, 3, N'eajzw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2612, 3, N'hazax', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2613, 3, N'lenjn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2614, 3, N'bf1qh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2615, 3, N'2y39w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2616, 3, N'odgac', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2617, 3, N'iizrv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2618, 3, N'p2tm7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2619, 3, N'1f904', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2620, 3, N'z9t4d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2621, 3, N'rjjpz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2622, 3, N'pgjdi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2623, 3, N'd4z7p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2624, 3, N'cp6y7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2625, 3, N'jwotp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2626, 3, N'wzcf6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2627, 3, N'oul7u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2628, 3, N'99j2f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2629, 3, N'itqe3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2630, 3, N'6qbl2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2631, 3, N'jd564', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2632, 3, N'5509c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2633, 3, N'zeeg3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2634, 3, N'st1mp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2635, 3, N'cfetz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2636, 3, N'zgjzt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2637, 3, N'gy1nx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2638, 3, N'lzodz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2639, 3, N'eijzp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2640, 3, N'eoklk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2641, 3, N'nzy6z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2642, 3, N'd8lhe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2643, 3, N'zvaq6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2644, 3, N'bn1sr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2645, 3, N'3eyxk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2646, 3, N'35odu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2647, 3, N'l57of', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2648, 3, N'r95yt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2649, 3, N'mng9a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2650, 3, N'si33n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2651, 3, N'1x13r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2652, 3, N'iabv5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2653, 3, N'huix2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2654, 3, N'3xwkp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2655, 3, N'brc8e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2656, 3, N'q8zw2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2657, 3, N'vcuz3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2658, 3, N'xee77', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2659, 3, N'q8j2m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2660, 3, N'2ftgh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2661, 3, N'4wsom', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2662, 3, N'ju2ya', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2663, 3, N'jlo3j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2664, 3, N'f9s3f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2665, 3, N'ztym8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2666, 3, N'dhjwm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2667, 3, N'losp7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2668, 3, N'9tgnt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2669, 3, N'clp7x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2670, 3, N'etqtg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2671, 3, N'3w0ar', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2672, 3, N'l7gpi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2673, 3, N'bkgmy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2674, 3, N'5285j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2675, 3, N'v3ejd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2676, 3, N'ne1z4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2677, 3, N't00pt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2678, 3, N'yys7w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2679, 3, N'cn0fs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2680, 3, N'1fdi2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2681, 3, N'luujv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2682, 3, N'asq7e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2683, 3, N'gfqvy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2684, 3, N'ku02a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2685, 3, N'gkbjh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2686, 3, N'ic91l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2687, 3, N'ibt6s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2688, 3, N'8gq4t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2689, 3, N'giu3p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2690, 3, N'66fqh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2691, 3, N'gokhv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2692, 3, N'atlcm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2693, 3, N'7tyv5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2694, 3, N'fwud0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2695, 3, N'ee6j3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2696, 3, N'80h4k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2697, 3, N'm7stf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2698, 3, N'40llr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2699, 3, N'p4nrv', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2700, 3, N'wt97j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2701, 3, N'kmb0c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2702, 3, N'craox', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2703, 3, N'klq2a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2704, 3, N'aafqb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2705, 3, N'pkivk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2706, 3, N'j0oyh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2707, 3, N'p0kua', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2708, 3, N'952rc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2709, 3, N'm07xg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2710, 3, N'dnvqu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2711, 3, N'wos64', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2712, 3, N'9dqp2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2713, 3, N'mcmhi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2714, 3, N'tb61b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2715, 3, N'fixoz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2716, 3, N'ynvoh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2717, 3, N'6e8du', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2718, 3, N'ahn0b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2719, 3, N'6onyz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2720, 3, N'jn0px', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2721, 3, N'cr4pp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2722, 3, N'n0ehf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2723, 3, N'vsbh6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2724, 3, N'heiwh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2725, 3, N'lxf0e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2726, 3, N'049yp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2727, 3, N'lwf1f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2728, 3, N'oksyg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2729, 3, N'kdgup', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2730, 3, N'nnf1s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2731, 3, N'eeeil', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2732, 3, N'oldky', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2733, 3, N't0q14', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2734, 3, N'9nkcs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2735, 3, N'7wup6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2736, 3, N'iqvk1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2737, 3, N'nzhgl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2738, 3, N'gs6q0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2739, 3, N'cgh9x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2740, 3, N'twp0q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2741, 3, N'adcju', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2742, 3, N'ruzmc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2743, 3, N'703tk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2744, 3, N'3skpy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2745, 3, N'qq3lp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2746, 3, N'0pu1m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2747, 3, N'va440', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2748, 3, N'kw8v3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2749, 3, N'v3un3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2750, 3, N'mnxz4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2751, 3, N'am9c9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2752, 3, N'tj034', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2753, 3, N'c989r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2754, 3, N'6583a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2755, 3, N'gtywc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2756, 3, N'x6qsd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2757, 3, N'n256m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2758, 3, N'ja24g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2759, 3, N'a6f11', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2760, 3, N'v5u66', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2761, 3, N'qp3yy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2762, 3, N'qxn9m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2763, 3, N'x2izr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2764, 3, N'kebxi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2765, 3, N'5cdw9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2766, 3, N'ko74q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2767, 3, N'2luww', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2768, 3, N'88hi5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2769, 3, N'vx3st', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2770, 3, N'ixpjr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2771, 3, N'r37ya', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2772, 3, N'olgyn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2773, 3, N'c0ttt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2774, 3, N'livds', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2775, 3, N'l732w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2776, 3, N'ijud1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2777, 3, N'w8xn9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2778, 3, N'8n6vi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2779, 3, N'w1s42', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2780, 3, N'5dj8h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2781, 3, N'acm0f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2782, 3, N'uafb1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2783, 3, N'e0d71', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2784, 3, N'dcftv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2785, 3, N'7la46', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2786, 3, N'tp891', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2787, 3, N'e9w61', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2788, 3, N'uv6hp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2789, 3, N'8i54e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2790, 3, N'5yudz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2791, 3, N'280nj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2792, 3, N'ybs4v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2793, 3, N'ecgjw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2794, 3, N'eeggh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2795, 3, N'rf7ew', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2796, 3, N'zqfza', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2797, 3, N'545k9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2798, 3, N'gjiwc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2799, 3, N'sdcwk', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2800, 3, N'6cvh9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2801, 3, N'0ro5h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2802, 3, N'xav0u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2803, 3, N'i6230', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2804, 3, N'kg5kq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2805, 3, N'55udy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2806, 3, N'odl40', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2807, 3, N'x480j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2808, 3, N'nq9dm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2809, 3, N'fysc4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2810, 3, N'wli59', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2811, 3, N'zgl1e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2812, 3, N'57kh2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2813, 3, N'tz096', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2814, 3, N'n7ctm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2815, 3, N'3h28k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2816, 3, N'gnrjc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2817, 3, N'd4p5b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2818, 3, N'qshvo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2819, 3, N'pg2k2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2820, 3, N'q8sfr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2821, 3, N'yiztf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2822, 3, N'snnq8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2823, 3, N'rqbez', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2824, 3, N'zk58q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2825, 3, N'50qe7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2826, 3, N'xosf4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2827, 3, N'i5l1n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2828, 3, N'4f6zs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2829, 3, N'ce0x7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2830, 3, N'9exuc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2831, 3, N'gctzw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2832, 3, N'82uvs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2833, 3, N'd5iwz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2834, 3, N'vej05', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2835, 3, N'tngqn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2836, 3, N'093h7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2837, 3, N's18cx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2838, 3, N'flwfp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2839, 3, N'bvkgp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2840, 3, N'h6e7l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2841, 3, N'457ys', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2842, 3, N'26dm5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2843, 3, N'99nx9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2844, 3, N'm6f8u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2845, 3, N'jsdl4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2846, 3, N'8d9af', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2847, 3, N'3555d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2848, 3, N'x3jt5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2849, 3, N'iijkq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2850, 3, N'ciwhc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2851, 3, N'l1fnb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2852, 3, N'm1v4u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2853, 3, N'z7cgc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2854, 3, N'derul', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2855, 3, N'swvdl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2856, 3, N'bi351', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2857, 3, N'0q174', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2858, 3, N'czr30', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2859, 3, N'5hp9f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2860, 3, N'lfchm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2861, 3, N'80b5u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2862, 3, N'yfbba', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2863, 3, N'd80c3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2864, 3, N'ifem9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2865, 3, N'nwx3p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2866, 3, N'khv7a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2867, 3, N'5fvs3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2868, 3, N'ap5ng', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2869, 3, N'6xq3x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2870, 3, N'7qmg7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2871, 3, N'fb0i8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2872, 3, N'lchqj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2873, 3, N'quebe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2874, 3, N'7mii2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2875, 3, N'3k1gd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2876, 3, N'zg4gs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2877, 3, N'44oa5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2878, 3, N'4pnus', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2879, 3, N'7hpez', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2880, 3, N'mtoyz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2881, 3, N'uidne', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2882, 3, N'5ktei', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2883, 3, N'fib7p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2884, 3, N'wfdfk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2885, 3, N's9y05', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2886, 3, N'v4wr0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2887, 3, N'g1gr7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2888, 3, N'v0a5a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2889, 3, N'u6ilm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2890, 3, N'zfrzd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2891, 3, N'gpjnh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2892, 3, N'vtnss', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2893, 3, N'axcoc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2894, 3, N'ncua3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2895, 3, N'5eif0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2896, 3, N'v1mof', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2897, 3, N'qm7nu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2898, 3, N'0s2jm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2899, 3, N'bnsn9', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2900, 3, N'734j8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2901, 3, N'xvr5h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2902, 3, N'chdxv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2903, 3, N'4h8nc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2904, 3, N'yzy4m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2905, 3, N'5kky1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2906, 3, N'rw4g3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2907, 3, N'26dps', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2908, 3, N'45bfr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2909, 3, N'soeyr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2910, 3, N'4oflk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2911, 3, N'hfa6d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2912, 3, N'nk2ez', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2913, 3, N'qn643', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2914, 3, N'7dt4h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2915, 3, N'3ysm4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2916, 3, N'qfwg6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2917, 3, N'drt5v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2918, 3, N'w6hmf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2919, 3, N'tc7qb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2920, 3, N'esk5u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2921, 3, N'14kdr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2922, 3, N'twxcw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2923, 3, N'hywhw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2924, 3, N'83aig', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2925, 3, N'b6hzy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2926, 3, N'10ckz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2927, 3, N'851wf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2928, 3, N'igqoc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2929, 3, N'aiez7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2930, 3, N'5pz3c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2931, 3, N'krbyt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2932, 3, N'5xuoz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2933, 3, N'2umnx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2934, 3, N'm79cn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2935, 3, N'2nwff', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2936, 3, N'21r13', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2937, 3, N'lbiio', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2938, 3, N'r3cdj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2939, 3, N'uvbyj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2940, 3, N'q51bu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2941, 3, N'7pwpk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2942, 3, N'755t0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2943, 3, N'dg2vo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2944, 3, N'1le9g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2945, 3, N't5632', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2946, 3, N'gl75z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2947, 3, N'6aph5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2948, 3, N'5o37q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2949, 3, N'w7tmf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2950, 3, N'o2qks', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2951, 3, N'f014b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2952, 3, N'ct3we', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2953, 3, N'v8a34', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2954, 3, N'd0vzs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2955, 3, N'nshsu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2956, 3, N'vmuxo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2957, 3, N'n5wnu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2958, 3, N'fiuf2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2959, 3, N'mug35', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2960, 3, N'x7zsc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2961, 3, N'yg02f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2962, 3, N'xtjkp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2963, 3, N'09gi1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2964, 3, N'zlwjy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2965, 3, N'4fq6f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2966, 3, N'2lnx6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2967, 3, N'ywbvz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2968, 3, N'gf3h6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2969, 3, N'v9kzc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2970, 3, N'no7cf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2971, 3, N'mkp3h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2972, 3, N't03wm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2973, 3, N'lgwn1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2974, 3, N'd7utu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2975, 3, N'urpmc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2976, 3, N'54042', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2977, 3, N'oolru', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2978, 3, N'ohhng', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2979, 3, N'pmh5v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2980, 3, N'pn788', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2981, 3, N'q3nrv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2982, 3, N'45c1m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2983, 3, N'y9838', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2984, 3, N'64e3m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2985, 3, N'6zhne', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2986, 3, N'hkt0x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2987, 3, N'r725m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2988, 3, N'ub46z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2989, 3, N'teqar', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2990, 3, N'pnn6z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2991, 3, N'ujevb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2992, 3, N'0vamn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2993, 3, N'ulle4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2994, 3, N'0hdrn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2995, 3, N'5ahd3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2996, 3, N'2ig5z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2997, 3, N'46xbc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2998, 3, N'i3g3v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2999, 3, N'9artf', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3000, 3, N'h2mf1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3001, 4, N'sg6io', 0, 1)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3002, 4, N'yctob', 0, 1)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3003, 4, N'vm3pq', 1, 1)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3004, 4, N'zpvdj', 1, 1)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3005, 4, N'811hk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3006, 4, N'fdbw5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3007, 4, N'3ml3j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3008, 4, N'prvy3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3009, 4, N'3pmtv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3010, 4, N'41zd9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3011, 4, N'svtaq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3012, 4, N'0oz7i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3013, 4, N'ub7sh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3014, 4, N'ja9ga', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3015, 4, N'i37jp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3016, 4, N'spiwp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3017, 4, N'oo8wn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3018, 4, N'h3kns', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3019, 4, N'a2xpj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3020, 4, N'2s3lm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3021, 4, N'31sc1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3022, 4, N'yyju7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3023, 4, N'kgds4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3024, 4, N'fdkfa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3025, 4, N'p0wxa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3026, 4, N'pfsax', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3027, 4, N'aw6kv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3028, 4, N'w555y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3029, 4, N'ttzpi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3030, 4, N'4zfud', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3031, 4, N'zixl6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3032, 4, N'df5cl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3033, 4, N'tfj77', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3034, 4, N'yk36i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3035, 4, N'khpqr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3036, 4, N'6agpf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3037, 4, N'09777', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3038, 4, N'18vnr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3039, 4, N'ra2tf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3040, 4, N'nj2st', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3041, 4, N't6im3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3042, 4, N'r3g49', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3043, 4, N'd9p6v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3044, 4, N'thm9f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3045, 4, N'zzpp0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3046, 4, N'jo5ld', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3047, 4, N'wix5w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3048, 4, N'41vdq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3049, 4, N'810oo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3050, 4, N'ru67v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3051, 4, N'f72n4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3052, 4, N'4q3vt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3053, 4, N'c750n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3054, 4, N'4luk0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3055, 4, N'2witg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3056, 4, N'78bai', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3057, 4, N'ys8z8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3058, 4, N'yqka1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3059, 4, N'n79un', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3060, 4, N'b6aau', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3061, 4, N'gavh3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3062, 4, N'szig7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3063, 4, N'6p2m4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3064, 4, N'u9f2y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3065, 4, N'oattm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3066, 4, N'4xyge', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3067, 4, N'b7aqc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3068, 4, N'y706p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3069, 4, N'9hdd4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3070, 4, N'8fwz3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3071, 4, N'c0img', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3072, 4, N'frc48', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3073, 4, N'5acc6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3074, 4, N'9pmkg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3075, 4, N'xijmy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3076, 4, N'g7pyo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3077, 4, N'za8mb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3078, 4, N'kzxk6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3079, 4, N'h467t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3080, 4, N'8ebh5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3081, 4, N's2mtf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3082, 4, N'4q5x9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3083, 4, N'ibopj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3084, 4, N'4bzav', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3085, 4, N'j1bn9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3086, 4, N'2lm2z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3087, 4, N'c5h26', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3088, 4, N'6ypgh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3089, 4, N'339lx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3090, 4, N'fqrxz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3091, 4, N'6obwv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3092, 4, N'018tn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3093, 4, N'tdc87', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3094, 4, N'n4vsm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3095, 4, N'fws21', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3096, 4, N'q1004', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3097, 4, N'm4zd2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3098, 4, N'x4vgf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3099, 4, N'f053y', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3100, 4, N'z1bnk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3101, 4, N'k48kt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3102, 4, N'k6i4f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3103, 4, N'8aiza', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3104, 4, N'yo8fk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3105, 4, N'sipnh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3106, 4, N'p0yec', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3107, 4, N'z0npt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3108, 4, N's5ous', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3109, 4, N'0v1bg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3110, 4, N'fsg39', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3111, 4, N'l26d1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3112, 4, N'covdd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3113, 4, N'uhd1q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3114, 4, N'ix2gs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3115, 4, N'3aowt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3116, 4, N'7rogb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3117, 4, N'7t5f1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3118, 4, N'73jxr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3119, 4, N'dklq7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3120, 4, N'ts9u7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3121, 4, N'sz9kg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3122, 4, N'lnju4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3123, 4, N'uaobg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3124, 4, N'al8at', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3125, 4, N'pnfzo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3126, 4, N'sz8z9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3127, 4, N'pr3it', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3128, 4, N'iuu8p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3129, 4, N'ttz36', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3130, 4, N'd6jk7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3131, 4, N'it8bs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3132, 4, N'euk6x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3133, 4, N'wpuup', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3134, 4, N'dgfr7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3135, 4, N'q09u9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3136, 4, N'5yl2l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3137, 4, N'wpx11', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3138, 4, N'5t1zp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3139, 4, N'yjyl3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3140, 4, N'e8fn3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3141, 4, N'611mq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3142, 4, N'rtnbx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3143, 4, N'pirvb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3144, 4, N'g123t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3145, 4, N'uppcj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3146, 4, N'gcy15', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3147, 4, N'6t89p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3148, 4, N'5xllj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3149, 4, N'mfzc9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3150, 4, N'q1djx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3151, 4, N'mgl4j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3152, 4, N'rlzdk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3153, 4, N'p5wg1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3154, 4, N'6ksfg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3155, 4, N'sqrth', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3156, 4, N'ozmc3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3157, 4, N'p8ods', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3158, 4, N'0hez7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3159, 4, N't8hb3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3160, 4, N'rstlc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3161, 4, N'gi7de', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3162, 4, N'6y1w4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3163, 4, N'28xk4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3164, 4, N'rqtxa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3165, 4, N'zg2hx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3166, 4, N'uiq00', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3167, 4, N'6fb9x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3168, 4, N'gbk8w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3169, 4, N'cpr5f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3170, 4, N'ul7gm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3171, 4, N'a95kn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3172, 4, N'aqzqu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3173, 4, N'yhb58', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3174, 4, N'w7xxy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3175, 4, N'qfub8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3176, 4, N'jy7cc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3177, 4, N'jkko0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3178, 4, N'6k0wx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3179, 4, N'zl4o7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3180, 4, N'4nv6t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3181, 4, N'xxkr5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3182, 4, N'4p4md', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3183, 4, N'lsxok', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3184, 4, N'n6xfb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3185, 4, N'mgba8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3186, 4, N'elfdd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3187, 4, N'6casp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3188, 4, N'v93s5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3189, 4, N'rposl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3190, 4, N'hyqeu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3191, 4, N'70q5g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3192, 4, N'rwks1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3193, 4, N'sj0ih', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3194, 4, N'jse8y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3195, 4, N'ndfju', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3196, 4, N'61ty1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3197, 4, N'q5btf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3198, 4, N'fwfl7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3199, 4, N'9zk0n', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3200, 4, N'hzgkc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3201, 4, N'ytrpg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3202, 4, N'4ugkk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3203, 4, N'zdv0k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3204, 4, N'xihcb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3205, 4, N'wn2bz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3206, 4, N'y2o6m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3207, 4, N'hviwd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3208, 4, N'7ownl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3209, 4, N'uq4bi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3210, 4, N'6dtqz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3211, 4, N'8rdip', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3212, 4, N'k0qzr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3213, 4, N'bgj7c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3214, 4, N'e49xm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3215, 4, N'iw41q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3216, 4, N'gt033', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3217, 4, N'vi7go', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3218, 4, N'zr9g2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3219, 4, N'g865j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3220, 4, N'og68d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3221, 4, N'bd6dr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3222, 4, N'mxm1j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3223, 4, N'19x66', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3224, 4, N'3ictn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3225, 4, N'w435g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3226, 4, N'k09rc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3227, 4, N'aw2z1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3228, 4, N'rm4zb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3229, 4, N'cfi7a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3230, 4, N'gl98q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3231, 4, N'gdmvq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3232, 4, N'gkb7g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3233, 4, N'wy4zi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3234, 4, N'eh7ep', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3235, 4, N'qomsk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3236, 4, N'rw549', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3237, 4, N'90ab6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3238, 4, N'6kgiv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3239, 4, N'gl6tp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3240, 4, N'nkty6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3241, 4, N'8n4s9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3242, 4, N'104k9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3243, 4, N'upg7h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3244, 4, N'5x33m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3245, 4, N'4bzti', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3246, 4, N'fr3d7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3247, 4, N'hdg8a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3248, 4, N'v5rbe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3249, 4, N'fp5ja', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3250, 4, N'1e9lt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3251, 4, N'zqzmb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3252, 4, N'7ykj3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3253, 4, N'k71n1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3254, 4, N'qii6v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3255, 4, N'ag2zg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3256, 4, N'ofqtr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3257, 4, N'brrth', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3258, 4, N'1n46d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3259, 4, N'7uhh3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3260, 4, N'iyrru', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3261, 4, N't5dzt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3262, 4, N'tyafw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3263, 4, N'1i122', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3264, 4, N'3phga', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3265, 4, N'dnl2y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3266, 4, N'p8u58', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3267, 4, N'0y888', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3268, 4, N'go1ax', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3269, 4, N'cmzkm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3270, 4, N'y2ppa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3271, 4, N'3qkqr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3272, 4, N'ftkbd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3273, 4, N'vdfh6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3274, 4, N'dj23w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3275, 4, N'oxht8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3276, 4, N'0ybq9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3277, 4, N'wte5f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3278, 4, N'jnsr2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3279, 4, N'we06b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3280, 4, N'8hroj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3281, 4, N'pav3v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3282, 4, N'fj1s0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3283, 4, N'rr3br', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3284, 4, N'c9jcw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3285, 4, N'z1kb9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3286, 4, N'k7kr9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3287, 4, N'sgxhu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3288, 4, N'w7lj9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3289, 4, N'av91l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3290, 4, N'fkzp9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3291, 4, N'98p1t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3292, 4, N'xzu4l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3293, 4, N'i9kti', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3294, 4, N'k3vq4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3295, 4, N'ex9cv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3296, 4, N'e2tz4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3297, 4, N'9h4r9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3298, 4, N'u16y7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3299, 4, N'7nq81', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3300, 4, N'blqsb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3301, 4, N'lyiv5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3302, 4, N'l8mfp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3303, 4, N'5f4al', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3304, 4, N'ae2tx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3305, 4, N't77s7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3306, 4, N'0gblu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3307, 4, N'2mays', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3308, 4, N'k8iwx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3309, 4, N'wo0jc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3310, 4, N'1sqx1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3311, 4, N'6t64s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3312, 4, N'n10ye', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3313, 4, N'f6bvw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3314, 4, N'segra', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3315, 4, N'b5f6b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3316, 4, N'ehxqf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3317, 4, N'h0ouy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3318, 4, N'jpfgf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3319, 4, N'tiuss', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3320, 4, N'znfwt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3321, 4, N'xm9wz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3322, 4, N'ao93o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3323, 4, N'fdkt6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3324, 4, N'psr6n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3325, 4, N'c8alr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3326, 4, N'2lwnm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3327, 4, N'0cb6r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3328, 4, N'5014x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3329, 4, N'4pm29', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3330, 4, N'p8bwd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3331, 4, N'g6ijq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3332, 4, N'ymxf6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3333, 4, N'y1wqx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3334, 4, N'dcnbb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3335, 4, N'y1wis', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3336, 4, N'wwimb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3337, 4, N'4kakf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3338, 4, N'431p3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3339, 4, N'tdv78', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3340, 4, N'd35e6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3341, 4, N'nu9vo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3342, 4, N'pk903', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3343, 4, N'celec', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3344, 4, N'o1ll3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3345, 4, N'jk8ir', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3346, 4, N'ufyjp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3347, 4, N'30dpy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3348, 4, N'jkp50', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3349, 4, N'u3bv0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3350, 4, N'o2r5u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3351, 4, N'msulw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3352, 4, N'cw1d3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3353, 4, N'kv0ka', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3354, 4, N'ma5q2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3355, 4, N'empvj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3356, 4, N'pjmrd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3357, 4, N'2x2zd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3358, 4, N'kg13v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3359, 4, N'xslbp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3360, 4, N'8d0uo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3361, 4, N'o6bdp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3362, 4, N'ac9cg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3363, 4, N'3jjab', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3364, 4, N'w2ah0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3365, 4, N'fic4f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3366, 4, N'vanfk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3367, 4, N'ms1dy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3368, 4, N'6vzjd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3369, 4, N'hgzw2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3370, 4, N'nila2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3371, 4, N'fdt4i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3372, 4, N'f3h74', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3373, 4, N'9z314', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3374, 4, N'lrgle', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3375, 4, N'bd0ds', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3376, 4, N'8tqc1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3377, 4, N'mymmf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3378, 4, N'j864t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3379, 4, N'co1pd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3380, 4, N'sn81q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3381, 4, N'5ba61', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3382, 4, N'bmqmj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3383, 4, N'wnegr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3384, 4, N'lmrvv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3385, 4, N'mvm2c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3386, 4, N'wll99', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3387, 4, N'vvyv5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3388, 4, N'lyqvd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3389, 4, N'7suu7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3390, 4, N'yku82', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3391, 4, N'g6mge', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3392, 4, N'kzi3f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3393, 4, N'0bqny', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3394, 4, N'aytlg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3395, 4, N'x56sy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3396, 4, N'4b14n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3397, 4, N'm0mh2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3398, 4, N'zisru', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3399, 4, N'vqwpn', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3400, 4, N'5cg66', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3401, 4, N'90j2f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3402, 4, N'l94sk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3403, 4, N'j7nq2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3404, 4, N'9yiu8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3405, 4, N'1gc0u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3406, 4, N'giqe2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3407, 4, N'1458n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3408, 4, N'vrtcr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3409, 4, N'zoagk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3410, 4, N'xcgxn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3411, 4, N'h3w8e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3412, 4, N'3ysi8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3413, 4, N'dtzzs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3414, 4, N'pcoch', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3415, 4, N'segdi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3416, 4, N'ng5p6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3417, 4, N'eb20u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3418, 4, N'7i74u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3419, 4, N'68ldo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3420, 4, N'fzky5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3421, 4, N'vydq5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3422, 4, N'cxsz1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3423, 4, N'w3cl4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3424, 4, N'b08ev', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3425, 4, N'gfusk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3426, 4, N'u2czd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3427, 4, N'x5hul', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3428, 4, N'q8m5s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3429, 4, N'kzid7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3430, 4, N'd5ajm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3431, 4, N'o1fdy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3432, 4, N'qdvfl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3433, 4, N'jv3vd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3434, 4, N'1wsao', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3435, 4, N'cocwk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3436, 4, N'r6quh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3437, 4, N'y22my', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3438, 4, N'6ze54', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3439, 4, N'mngui', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3440, 4, N'z6w9g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3441, 4, N'rma5j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3442, 4, N'ayt2h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3443, 4, N'twa8w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3444, 4, N'r2q7h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3445, 4, N'bsxfb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3446, 4, N'zhsov', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3447, 4, N'ukroz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3448, 4, N'l27cx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3449, 4, N'hglxl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3450, 4, N'zni70', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3451, 4, N'6qy1f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3452, 4, N'8z43u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3453, 4, N'2gfgx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3454, 4, N'ifvik', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3455, 4, N'z5nja', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3456, 4, N'5g93m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3457, 4, N'm9uxy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3458, 4, N'evzj1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3459, 4, N'w7ds4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3460, 4, N'aafad', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3461, 4, N't19xb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3462, 4, N'bcp1j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3463, 4, N'2zbrh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3464, 4, N'3wsrt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3465, 4, N'wpmry', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3466, 4, N'114o9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3467, 4, N'4b902', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3468, 4, N'ua7vw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3469, 4, N'bg798', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3470, 4, N'76vkb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3471, 4, N'osxqq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3472, 4, N'epr9k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3473, 4, N'jha2p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3474, 4, N'1zlyx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3475, 4, N'3z64r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3476, 4, N'qrms0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3477, 4, N'5gunu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3478, 4, N'lntjy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3479, 4, N'fs7ln', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3480, 4, N'4ffth', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3481, 4, N'hv7xi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3482, 4, N'zw29a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3483, 4, N'wc8io', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3484, 4, N'dxxie', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3485, 4, N'ngbar', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3486, 4, N'k1vrx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3487, 4, N'km3lt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3488, 4, N'kj6e4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3489, 4, N'zvtjb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3490, 4, N'duz6j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3491, 4, N'hs7p4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3492, 4, N'bt6f7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3493, 4, N'8akm0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3494, 4, N'jjxzd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3495, 4, N'40sno', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3496, 4, N'1w18o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3497, 4, N'0byiq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3498, 4, N'1pnrr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3499, 4, N'0m0h6', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3500, 4, N'ylht2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3501, 4, N'36a3o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3502, 4, N'q9tbc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3503, 4, N'o271h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3504, 4, N'6mb68', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3505, 4, N'45fhm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3506, 4, N's9lq0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3507, 4, N'qoigu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3508, 4, N'3b549', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3509, 4, N'25mpc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3510, 4, N'8o9a9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3511, 4, N'mjlu7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3512, 4, N'702q5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3513, 4, N'qyckv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3514, 4, N'at1gn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3515, 4, N'5rg6f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3516, 4, N'8t0eo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3517, 4, N'dalro', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3518, 4, N'gdyjw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3519, 4, N'cio8t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3520, 4, N'e2b3c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3521, 4, N'px2we', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3522, 4, N'4cpo8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3523, 4, N'oayc2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3524, 4, N'pmv6o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3525, 4, N'75rtk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3526, 4, N'wchnb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3527, 4, N'gs7c9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3528, 4, N'phymt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3529, 4, N'dxjki', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3530, 4, N'cumgd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3531, 4, N'1heof', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3532, 4, N'tfjlr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3533, 4, N'14cn2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3534, 4, N'6cvcm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3535, 4, N'iyjnk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3536, 4, N'jwhki', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3537, 4, N'c0bjj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3538, 4, N'8ns6p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3539, 4, N'k8m41', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3540, 4, N'iv6sm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3541, 4, N'98j44', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3542, 4, N'd81d6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3543, 4, N'788dp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3544, 4, N'b32d3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3545, 4, N'stzxb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3546, 4, N'klovb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3547, 4, N'xzy8i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3548, 4, N'dqhog', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3549, 4, N'awpas', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3550, 4, N'l9jo0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3551, 4, N'p22y3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3552, 4, N'pjw2u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3553, 4, N'1tfbi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3554, 4, N'hj94l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3555, 4, N'uwo62', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3556, 4, N'6ezfz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3557, 4, N'kc94w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3558, 4, N'579e2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3559, 4, N'44o3p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3560, 4, N'rqn1k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3561, 4, N'c9odg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3562, 4, N'3o667', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3563, 4, N'kurck', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3564, 4, N'yulpn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3565, 4, N'kj4br', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3566, 4, N'zhurl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3567, 4, N'p174x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3568, 4, N'ky6y3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3569, 4, N'qadhs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3570, 4, N'knmt0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3571, 4, N'7f7oa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3572, 4, N'3emvq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3573, 4, N'v4ovr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3574, 4, N'txxp9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3575, 4, N'axxw6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3576, 4, N'jgxtg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3577, 4, N'm4a1n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3578, 4, N'k3s34', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3579, 4, N'flkhh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3580, 4, N'wwrz8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3581, 4, N'x07uz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3582, 4, N'jsls0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3583, 4, N'wr2oe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3584, 4, N'04whg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3585, 4, N'ze3u4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3586, 4, N'ympok', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3587, 4, N'xy7ut', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3588, 4, N'v7qbe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3589, 4, N'2s9dh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3590, 4, N'yt6cq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3591, 4, N'19jtj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3592, 4, N's7m0a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3593, 4, N'6c7id', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3594, 4, N'8th5s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3595, 4, N'3nudo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3596, 4, N'hfznf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3597, 4, N'fqm7s', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3598, 4, N'xoolb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3599, 4, N'yu0bh', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3600, 4, N'0u19i', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3601, 4, N'elbux', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3602, 4, N'npgec', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3603, 4, N'nh9u5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3604, 4, N'pz9zq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3605, 4, N'uf633', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3606, 4, N'ixt5y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3607, 4, N'wn0eb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3608, 4, N'4p2ke', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3609, 4, N'iijiy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3610, 4, N'rvgf1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3611, 4, N'avcsy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3612, 4, N'8oh0o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3613, 4, N'05kqq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3614, 4, N'9q4sb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3615, 4, N'a7yui', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3616, 4, N'l5yfm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3617, 4, N'wroex', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3618, 4, N'alhpd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3619, 4, N'qic5o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3620, 4, N'm721y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3621, 4, N'a0xe1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3622, 4, N'd7rkm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3623, 4, N'czbn1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3624, 4, N'irg2p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3625, 4, N'xjppv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3626, 4, N'142g5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3627, 4, N'od6ql', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3628, 4, N'64jmu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3629, 4, N'd46ca', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3630, 4, N'0gydf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3631, 4, N'519ma', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3632, 4, N'1lita', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3633, 4, N'iekp8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3634, 4, N'93ub5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3635, 4, N'oh3im', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3636, 4, N'3mmo4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3637, 4, N'ugyb9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3638, 4, N'wduqu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3639, 4, N'uv0ml', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3640, 4, N'8trda', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3641, 4, N'7wwi0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3642, 4, N'x719h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3643, 4, N'o83yp', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3644, 4, N'cpjpm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3645, 4, N'6ierk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3646, 4, N'2rr6n', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3647, 4, N'j5in7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3648, 4, N'8tqkl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3649, 4, N'ymvif', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3650, 4, N'w2b6j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3651, 4, N'tkc1e', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3652, 4, N'yrf78', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3653, 4, N'gq4v7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3654, 4, N't0p1r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3655, 4, N's99dx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3656, 4, N'tx5ly', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3657, 4, N'apux4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3658, 4, N'92qji', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3659, 4, N'qosmf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3660, 4, N'ir9kw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3661, 4, N'6njp0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3662, 4, N'uk8ev', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3663, 4, N'bw3j7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3664, 4, N'05h18', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3665, 4, N'0jgta', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3666, 4, N'eqx8p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3667, 4, N'cxuy2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3668, 4, N'xgf6j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3669, 4, N'z4myg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3670, 4, N'4ujoo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3671, 4, N'mkhm5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3672, 4, N'wg0ov', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3673, 4, N'exays', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3674, 4, N'obfqk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3675, 4, N'u0kri', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3676, 4, N'66smg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3677, 4, N'ugitc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3678, 4, N'1ph3f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3679, 4, N'qp0kf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3680, 4, N'b4xf2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3681, 4, N'2p2e4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3682, 4, N'w90e9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3683, 4, N'0ynhb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3684, 4, N'7oqw0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3685, 4, N'83ml4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3686, 4, N'f99mh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3687, 4, N'cimun', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3688, 4, N'enezq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3689, 4, N'1zd3o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3690, 4, N'1btjh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3691, 4, N'xnbo4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3692, 4, N'9drjz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3693, 4, N'wan67', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3694, 4, N'sl336', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3695, 4, N'tj1f8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3696, 4, N'izs6c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3697, 4, N'dq0et', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3698, 4, N'yg80o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3699, 4, N'b64a3', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3700, 4, N'1mg56', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3701, 4, N'qizmy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3702, 4, N'ow5pv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3703, 4, N'juvhv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3704, 4, N'gkjni', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3705, 4, N'lndp4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3706, 4, N'xo0mh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3707, 4, N'6sx9w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3708, 4, N'50oqe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3709, 4, N'cksee', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3710, 4, N'rkxow', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3711, 4, N'rc3xu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3712, 4, N'cekra', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3713, 4, N'a5tiy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3714, 4, N'17vv0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3715, 4, N'q52if', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3716, 4, N'b48kn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3717, 4, N'm0m0z', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3718, 4, N'3z9ot', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3719, 4, N'0p6pe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3720, 4, N'h1kqn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3721, 4, N'uybxf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3722, 4, N'vjurt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3723, 4, N'ig9dx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3724, 4, N'js3s4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3725, 4, N'b7gca', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3726, 4, N'a9nd8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3727, 4, N'jts73', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3728, 4, N'yyyue', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3729, 4, N'tes5k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3730, 4, N'tp215', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3731, 4, N'z82vl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3732, 4, N'wr9xf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3733, 4, N'w6qsj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3734, 4, N'zyck9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3735, 4, N'u4jnk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3736, 4, N'6ol1q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3737, 4, N'ugvij', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3738, 4, N'l06vg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3739, 4, N'gzaos', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3740, 4, N'xyavv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3741, 4, N'5ms1l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3742, 4, N'4zoko', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3743, 4, N'ifihu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3744, 4, N'pkij8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3745, 4, N'81re3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3746, 4, N'5345x', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3747, 4, N'io0gu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3748, 4, N'hy47o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3749, 4, N'wmwg8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3750, 4, N'aq34c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3751, 4, N'np0ww', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3752, 4, N'e5n8q', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3753, 4, N'b4twf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3754, 4, N'3pbwm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3755, 4, N'1ql5m', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3756, 4, N'wekf3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3757, 4, N'o9a3k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3758, 4, N'3xdtq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3759, 4, N'mk5qm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3760, 4, N'129ae', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3761, 4, N'uphrk', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3762, 4, N'6e5ka', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3763, 4, N'9uifb', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3764, 4, N'b40mm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3765, 4, N'glsfa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3766, 4, N'ru4su', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3767, 4, N'3fkbi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3768, 4, N'82ssn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3769, 4, N'y23sr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3770, 4, N'1c0ol', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3771, 4, N'6cxx8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3772, 4, N'j7cq3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3773, 4, N'mkm0h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3774, 4, N'4kg7c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3775, 4, N'jlh9y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3776, 4, N'ns9xi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3777, 4, N'o3phx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3778, 4, N'0rwd8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3779, 4, N'b0bya', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3780, 4, N'oqclx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3781, 4, N'r53lc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3782, 4, N'v5x9u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3783, 4, N'17oio', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3784, 4, N's4fcr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3785, 4, N'mxc8b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3786, 4, N'sks8j', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3787, 4, N'7pya0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3788, 4, N'sadfc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3789, 4, N'43xsh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3790, 4, N'em3jr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3791, 4, N'uk93k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3792, 4, N'425kt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3793, 4, N'kmzzx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3794, 4, N'ljnr5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3795, 4, N's0aaw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3796, 4, N'sau06', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3797, 4, N'gqjqz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3798, 4, N'wp4z6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3799, 4, N'ze2w1', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3800, 4, N'se756', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3801, 4, N'48mn8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3802, 4, N'3k9h2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3803, 4, N'3ieom', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3804, 4, N'4diaa', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3805, 4, N'5pyvf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3806, 4, N'o8ojd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3807, 4, N'ndy4c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3808, 4, N'ie5r6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3809, 4, N'mqw7c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3810, 4, N'raoj6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3811, 4, N'p564a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3812, 4, N'pk0hu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3813, 4, N'460do', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3814, 4, N'0ujmd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3815, 4, N'0i1dy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3816, 4, N'p21sy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3817, 4, N'ntemy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3818, 4, N'sg44w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3819, 4, N'8nx7b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3820, 4, N'pztsm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3821, 4, N'70cfg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3822, 4, N'he3gv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3823, 4, N'xtitg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3824, 4, N'l2oo6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3825, 4, N'tzpzf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3826, 4, N'mu4bi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3827, 4, N'ziig1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3828, 4, N'xr8fr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3829, 4, N'onxj9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3830, 4, N'pfe00', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3831, 4, N'xlew2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3832, 4, N'hkna4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3833, 4, N'wk175', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3834, 4, N'okc1t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3835, 4, N'43j7r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3836, 4, N'gcgz0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3837, 4, N'hqdlv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3838, 4, N'ndwnu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3839, 4, N'md8k5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3840, 4, N'ev0nv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3841, 4, N'ecmg6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3842, 4, N'4chev', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3843, 4, N'fexjw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3844, 4, N'ggqlr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3845, 4, N'kyygg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3846, 4, N'058cn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3847, 4, N'ul3ew', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3848, 4, N'ed6o1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3849, 4, N'l6r1p', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3850, 4, N'iqzyy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3851, 4, N'7fo5k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3852, 4, N'qofag', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3853, 4, N'9ef0b', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3854, 4, N'3ksxs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3855, 4, N'cjbug', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3856, 4, N'og618', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3857, 4, N'jfknq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3858, 4, N'o674f', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3859, 4, N'076i2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3860, 4, N'h010v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3861, 4, N'77bfw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3862, 4, N'ye4z6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3863, 4, N'krob6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3864, 4, N'332kw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3865, 4, N'7myr1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3866, 4, N'fm329', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3867, 4, N'ypfga', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3868, 4, N'mee11', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3869, 4, N'kci85', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3870, 4, N'it4l9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3871, 4, N'n7qex', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3872, 4, N'ujuoq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3873, 4, N'llbzh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3874, 4, N'4libu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3875, 4, N'yzbsm', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3876, 4, N'5e0vs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3877, 4, N'wrr3v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3878, 4, N'08bsq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3879, 4, N'ct0kq', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3880, 4, N'8at0a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3881, 4, N'7l31k', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3882, 4, N'x6722', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3883, 4, N'qs854', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3884, 4, N'34idr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3885, 4, N'6kzvr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3886, 4, N'f90cn', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3887, 4, N'4vauv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3888, 4, N'lyzt8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3889, 4, N'3bjz9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3890, 4, N'uu4qx', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3891, 4, N'e2pie', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3892, 4, N'xvike', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3893, 4, N'yf5o8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3894, 4, N'5sojt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3895, 4, N'fezfy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3896, 4, N'4a9v7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3897, 4, N'uekpi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3898, 4, N'cf2p8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3899, 4, N'zppoj', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3900, 4, N'yg41d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3901, 4, N'bgv7r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3902, 4, N'acjuj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3903, 4, N'wvxmu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3904, 4, N't4qg5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3905, 4, N'z08l3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3906, 4, N'0yl5a', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3907, 4, N'ygir5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3908, 4, N'ntn7h', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3909, 4, N'96hfl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3910, 4, N'e1c30', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3911, 4, N'3zx5o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3912, 4, N'lijd1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3913, 4, N'l1ouv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3914, 4, N'qmfqh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3915, 4, N'art86', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3916, 4, N'3s29y', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3917, 4, N'8vrfg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3918, 4, N'8smdu', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3919, 4, N'ejjf6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3920, 4, N'hsxu5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3921, 4, N'1wwwz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3922, 4, N'lgz9u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3923, 4, N'2qko3', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3924, 4, N'zkinw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3925, 4, N'8ab6c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3926, 4, N'0hocy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3927, 4, N'l5he7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3928, 4, N'l94p5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3929, 4, N'23mt1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3930, 4, N'y95lh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3931, 4, N'7jk86', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3932, 4, N'0vzu8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3933, 4, N'e2xlj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3934, 4, N'7ifrs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3935, 4, N'zp2s4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3936, 4, N'fxseo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3937, 4, N'1mc40', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3938, 4, N'bvjhg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3939, 4, N'0kkr0', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3940, 4, N'9gbk4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3941, 4, N'p3n2r', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3942, 4, N'rq1e1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3943, 4, N'dcvgh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3944, 4, N'2z2uh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3945, 4, N'm97k2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3946, 4, N'pfl24', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3947, 4, N'9wik8', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3948, 4, N'78jnj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3949, 4, N'v3eqd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3950, 4, N'xzej7', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3951, 4, N'jnqcs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3952, 4, N'p6dac', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3953, 4, N'mf9j2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3954, 4, N'q4khj', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3955, 4, N'4qolw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3956, 4, N's5rhe', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3957, 4, N'0bb4v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3958, 4, N'vgf2t', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3959, 4, N'b4jk6', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3960, 4, N'q44yw', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3961, 4, N'3o6ad', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3962, 4, N'38eq9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3963, 4, N'uo56l', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3964, 4, N'ldfyg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3965, 4, N'kysxi', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3966, 4, N'9hepg', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3967, 4, N'ya3vl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3968, 4, N'leb11', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3969, 4, N'wcz29', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3970, 4, N'w9m9v', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3971, 4, N'mygrl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3972, 4, N'e5i1d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3973, 4, N'w4zkl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3974, 4, N'uvku9', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3975, 4, N'gbn7u', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3976, 4, N'i90yv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3977, 4, N'a4e33', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3978, 4, N'93ljh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3979, 4, N'q5jxf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3980, 4, N'1mpro', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3981, 4, N'ay19o', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3982, 4, N'kli6d', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3983, 4, N'efufd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3984, 4, N'1z5ql', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3985, 4, N'0jbnt', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3986, 4, N'l2z13', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3987, 4, N'5ujkv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3988, 4, N'lcfos', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3989, 4, N'yupgc', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3990, 4, N'kldun', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3991, 4, N'br8fy', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3992, 4, N'0xnpd', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3993, 4, N'svrdh', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3994, 4, N'u6ku1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3995, 4, N'zur7w', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3996, 4, N'f44li', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3997, 4, N'ayeo1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3998, 4, N'ovdv4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3999, 4, N'yy0la', 0, 0)
GO
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (4000, 4, N'ddm8r', 0, 0)
SET IDENTITY_INSERT [dbo].[DiscountCodeDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([ID], [Name]) VALUES (1, N'Bé trai')
INSERT [dbo].[Gender] ([ID], [Name]) VALUES (2, N'Bé gái')
INSERT [dbo].[Gender] ([ID], [Name]) VALUES (3, N'Tất cả')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[ImportCoupon] ON 

INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (3, CAST(N'2021-12-17T10:24:53.013' AS DateTime), 0, 3, 1)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (4, CAST(N'2021-12-20T15:26:58.830' AS DateTime), 0, 3, 1)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (5, CAST(N'2023-05-17T08:14:41.217' AS DateTime), 0, 3, 1)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (6, CAST(N'2023-05-17T08:52:08.830' AS DateTime), 0, 3, 1)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (7, CAST(N'2023-05-19T20:56:42.373' AS DateTime), 0, 3, 1)
SET IDENTITY_INSERT [dbo].[ImportCoupon] OFF
GO
SET IDENTITY_INSERT [dbo].[ImportCouponDetail] ON 

INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (3, 3, 1, 200000, 100)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (4, 4, 1, 150000, 100)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (5, 5, 1, 50000, 100)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (6, 5, 2, 100000, 100)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (7, 5, 3, 50000, 100)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (8, 5, 4, 100000, 100)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (9, 6, 3, 100000, 100)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (10, 7, 4, 100000, 100)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (11, 7, 2, 50000, 100)
SET IDENTITY_INSERT [dbo].[ImportCouponDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemCart] ON 

INSERT [dbo].[ItemCart] ([ID], [UserID], [ProductID], [Quantity], [Total]) VALUES (10, 3, 4, 1, CAST(159000.00 AS Decimal(18, 2)))
INSERT [dbo].[ItemCart] ([ID], [UserID], [ProductID], [Quantity], [Total]) VALUES (15, 22, 1, 1, CAST(9000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ItemCart] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Sent]) VALUES (142, 20, 3, N'gre', CAST(N'2023-05-17T08:34:42.027' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Sent]) VALUES (143, 3, 20, N'chào bạn', CAST(N'2023-05-17T08:35:13.710' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Sent]) VALUES (144, 20, 3, N'hello', CAST(N'2023-05-17T08:35:24.610' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Sent]) VALUES (145, 22, 3, N'Hi', CAST(N'2023-05-17T08:50:49.920' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Sent]) VALUES (146, 3, 22, N'Chào bạn', CAST(N'2023-05-17T08:51:02.070' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Sent]) VALUES (147, 22, 3, N'Hello shop', CAST(N'2023-05-17T08:51:08.077' AS DateTime), 0)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Sent]) VALUES (148, 3, 22, N'chào bạn', CAST(N'2023-05-17T08:51:18.077' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (1034, 20, CAST(N'2023-05-17T08:16:37.167' AS DateTime), CAST(N'2023-05-20T08:16:37.167' AS DateTime), 10, 0, 0, 0, 0, 0, 0, CAST(89100 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (1035, 21, CAST(N'2023-05-17T08:38:52.390' AS DateTime), CAST(N'2023-05-20T08:38:52.390' AS DateTime), 20, 1, 0, 0, 0, 0, 0, CAST(90000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (1036, 22, CAST(N'2023-05-17T08:48:44.760' AS DateTime), CAST(N'2023-05-17T08:50:17.783' AS DateTime), 20, 1, 0, 0, 1, 1, 1, CAST(248100 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (1033, 1034, 3, 1, CAST(89100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (1034, 1035, 1, 10, CAST(9000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (1035, 1036, 3, 1, CAST(89100.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (1036, 1036, 4, 1, CAST(159000.00 AS Decimal(18, 2)), 0)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Producer] ON 

INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (1, N'DOLLSWORLD', 1, N'dollsworld')
SET IDENTITY_INSERT [dbo].[Producer] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (1, N'Sticker', 1, CAST(N'2023-05-16T18:04:18.700' AS DateTime), 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (2, N'Túi đeo', 1, CAST(N'2023-05-16T18:09:46.393' AS DateTime), 1, N'tui-deo')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (3, N'Cho bé trai', 1, CAST(N'2023-05-16T18:12:52.610' AS DateTime), 2, N'cho-be-trai')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (4, N'Cho bé gái', 1, CAST(N'2023-05-16T18:14:16.900' AS DateTime), 2, N'cho-be-gai')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategoryParent] ON 

INSERT [dbo].[ProductCategoryParent] ([ID], [Name], [SeoKeyword]) VALUES (1, N'Phụ kiện', N'phu-kien')
INSERT [dbo].[ProductCategoryParent] ([ID], [Name], [SeoKeyword]) VALUES (2, N'Outfits', N'out-fits')
SET IDENTITY_INSERT [dbo].[ProductCategoryParent] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [AgeID], [GenderID], [Discount], [SEOKeyword]) VALUES (1, N'BT/BG-Sticker dép Crocs', 1, N'icon-dep-croc.jpg', N'icon-dep-croc.jpg', N'icon-dep-croc.jpg', NULL, CAST(9000.00 AS Decimal(18, 2)), CAST(9000.00 AS Decimal(18, 2)), 100, N'Thông tin sản phẩm đang được cập nhật', 91, 7, 1, 1, CAST(N'2023-05-17T08:14:41.263' AS DateTime), 2, 3, 0, N'be-joy-dang-yeu')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [AgeID], [GenderID], [Discount], [SEOKeyword]) VALUES (2, N'Túi đeo chéo Ortovox đen', 2, N'tui-deo-ortovox.jpg', NULL, NULL, NULL, CAST(149000.00 AS Decimal(18, 2)), CAST(134100.00 AS Decimal(18, 2)), 200, N'Thông tin sản phẩm đang được cập nhật', 0, 0, 1, 1, CAST(N'2023-05-19T20:56:42.407' AS DateTime), 2, 3, 10, N'tui-deo-cheo-ortovox-den')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [AgeID], [GenderID], [Discount], [SEOKeyword]) VALUES (3, N'BT-Áo Polo TN Carters navy sọc đỏ trắng', 3, N'ao-polo-carter-5.jpg', NULL, NULL, NULL, CAST(99000.00 AS Decimal(18, 2)), CAST(89100.00 AS Decimal(18, 2)), 199, N'Thông tin sản phẩm đang được cập nhật', 2, 1, 1, 1, CAST(N'2023-05-17T08:52:08.837' AS DateTime), 2, 1, 10, N'bt-ao-polo-tn-carters-navy-soc-do-trang')
INSERT [dbo].[Products] ([ID], [Name], [CategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [AgeID], [GenderID], [Discount], [SEOKeyword]) VALUES (4, N'BG-Đầm TD Carters chân voan l2 navy hoa', 4, N'dam-carter-6.jpg', NULL, NULL, NULL, CAST(159000.00 AS Decimal(18, 2)), CAST(159000.00 AS Decimal(18, 2)), 199, N'Thông tin sản phẩm đang được cập nhật', 0, 1, 1, 1, CAST(N'2023-05-19T20:56:42.380' AS DateTime), 2, 2, 0, N'bg-dam-td-carters-chan-voan-l2-navy-hoa')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductViewed] ON 

INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (1, 3, 1, CAST(N'2023-05-16T18:07:54.420' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (7, 21, 1, CAST(N'2023-05-17T08:37:39.083' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (8, 22, 3, CAST(N'2023-05-17T08:50:27.773' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (9, 22, 1, CAST(N'2023-05-19T20:40:02.120' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductViewed] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([ID], [ProductID], [UserID], [Star], [Content]) VALUES (1, 1, 3, 5, N'ok')
INSERT [dbo].[Rating] ([ID], [ProductID], [UserID], [Star], [Content]) VALUES (4, 3, 22, 5, N'Good')
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (1, N'ProductManage', N'Sản phẩm')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (2, N'DiscountCodeManage', N'Mã giảm giá')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (4, N'ImportProductManage', N'Nhập hàng')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (5, N'OrderManage', N'Đơn đặt hàng')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (6, N'ProducerManage', N'Nhà sản xuất')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (7, N'ProductCategoryManage', N'Danh mục')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (9, N'QAManage', N'Hỏi đáp')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (10, N'StatisticManage', N'Thống kê')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (19, N'DecentralizationManage', N'Phân quyền')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (20, N'Chat', N'Chat với KH')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (23, N'AdminHome', N'AdminHome')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (24, N'SupplierManage', N'Nhà cung cấp')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (1, N'Tổng hợp', N'TP.HCM', N'1234567890', N'tonghop@gmail.com', 1, CAST(N'2021-12-17T10:17:30.927' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (3, 1, N'12345678', N'Admin', N'CT', N'admin@gmail.com', N'1234567890', 1, N'123456', CAST(549000 AS Decimal(18, 0)), N'admin.jpg', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (20, 2, N'12345678', N'khuong nguyen', N'CanTho', N'dsd@gmail.com', N'0907892191', 1, NULL, CAST(0 AS Decimal(18, 0)), N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (21, 2, N'12345678', N'khuong nguyen', N'CanTho', N'fdsfdsf@gmail.com', N'0907892198', 1, NULL, CAST(0 AS Decimal(18, 0)), N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (22, 2, N'12345678', N'khuong nguyen', N'CanTho', N'lapankhuongnguyen@gmail.com', N'0907892193', 1, NULL, CAST(248100 AS Decimal(18, 0)), N'user.png', 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserDiscountCode] ON 

INSERT [dbo].[UserDiscountCode] ([ID], [UserID], [DiscountCodeDetailID]) VALUES (36, 20, 1)
INSERT [dbo].[UserDiscountCode] ([ID], [UserID], [DiscountCodeDetailID]) VALUES (37, 20, 2003)
INSERT [dbo].[UserDiscountCode] ([ID], [UserID], [DiscountCodeDetailID]) VALUES (38, 21, 2)
INSERT [dbo].[UserDiscountCode] ([ID], [UserID], [DiscountCodeDetailID]) VALUES (39, 21, 3003)
INSERT [dbo].[UserDiscountCode] ([ID], [UserID], [DiscountCodeDetailID]) VALUES (40, 21, 2)
INSERT [dbo].[UserDiscountCode] ([ID], [UserID], [DiscountCodeDetailID]) VALUES (41, 22, 2)
INSERT [dbo].[UserDiscountCode] ([ID], [UserID], [DiscountCodeDetailID]) VALUES (42, 22, 3004)
SET IDENTITY_INSERT [dbo].[UserDiscountCode] OFF
GO
SET IDENTITY_INSERT [dbo].[UsersSpin] ON 

INSERT [dbo].[UsersSpin] ([ID], [UserID], [NumberOfSpins]) VALUES (15, 20, 0)
INSERT [dbo].[UsersSpin] ([ID], [UserID], [NumberOfSpins]) VALUES (16, 21, 0)
INSERT [dbo].[UsersSpin] ([ID], [UserID], [NumberOfSpins]) VALUES (17, 21, 1)
INSERT [dbo].[UsersSpin] ([ID], [UserID], [NumberOfSpins]) VALUES (18, 22, 1)
SET IDENTITY_INSERT [dbo].[UsersSpin] OFF
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (2, N'Client')
SET IDENTITY_INSERT [dbo].[UserType] OFF
GO
ALTER TABLE [dbo].[Decentralization] ADD  DEFAULT ((0)) FOR [UserTypeID]
GO
ALTER TABLE [dbo].[ImportCoupon] ADD  DEFAULT ((0)) FOR [UserID]
GO
ALTER TABLE [dbo].[ImportCoupon] ADD  DEFAULT ((0)) FOR [SupplierID]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsDelivere]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsReceived]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT ((0)) FOR [IsRating]
GO
ALTER TABLE [dbo].[Producer] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__AgeID__0D7A0286]  DEFAULT ((0)) FOR [AgeID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Gender__1AD3FDA4]  DEFAULT ((0)) FOR [GenderID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Discou__1CBC4616]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[ProductViewed] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [Date]
GO
ALTER TABLE [dbo].[QA] ADD  CONSTRAINT [DF__QA__DateQuestion__41B8C09B]  DEFAULT ('1900-01-01T00:00:00.000') FOR [DateQuestion]
GO
ALTER TABLE [dbo].[QA] ADD  CONSTRAINT [DF__QA__DateAnswer__42ACE4D4]  DEFAULT ('1900-01-01T00:00:00.000') FOR [DateAnswer]
GO
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('1900-01-01T00:00:00.000') FOR [LastUpdatedDate]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [UserTypeID]
GO
ALTER TABLE [dbo].[Decentralization]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Decentralization_dbo.Role_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Decentralization] CHECK CONSTRAINT [FK_dbo.Decentralization_dbo.Role_RoleID]
GO
ALTER TABLE [dbo].[Decentralization]  WITH CHECK ADD  CONSTRAINT [FK_Decentralization_UserType] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
GO
ALTER TABLE [dbo].[Decentralization] CHECK CONSTRAINT [FK_Decentralization_UserType]
GO
ALTER TABLE [dbo].[DiscountCode]  WITH CHECK ADD  CONSTRAINT [FK_DiscountCode_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[DiscountCode] CHECK CONSTRAINT [FK_DiscountCode_User]
GO
ALTER TABLE [dbo].[DiscountCodeDetail]  WITH CHECK ADD  CONSTRAINT [FK_DiscountCodeDetail_DiscountCode] FOREIGN KEY([DiscountCodeID])
REFERENCES [dbo].[DiscountCode] ([ID])
GO
ALTER TABLE [dbo].[DiscountCodeDetail] CHECK CONSTRAINT [FK_DiscountCodeDetail_DiscountCode]
GO
ALTER TABLE [dbo].[ImportCoupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCoupon_dbo.Supplier_SupplierID] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImportCoupon] CHECK CONSTRAINT [FK_dbo.ImportCoupon_dbo.Supplier_SupplierID]
GO
ALTER TABLE [dbo].[ImportCoupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCoupon_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImportCoupon] CHECK CONSTRAINT [FK_dbo.ImportCoupon_dbo.User_UserID]
GO
ALTER TABLE [dbo].[ImportCouponDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.ImportCoupon_ImportCouponID] FOREIGN KEY([ImportCouponID])
REFERENCES [dbo].[ImportCoupon] ([ID])
GO
ALTER TABLE [dbo].[ImportCouponDetail] CHECK CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.ImportCoupon_ImportCouponID]
GO
ALTER TABLE [dbo].[ImportCouponDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[ImportCouponDetail] CHECK CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ItemCart]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cart_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ItemCart] CHECK CONSTRAINT [FK_dbo.Cart_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ItemCart]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cart_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ItemCart] CHECK CONSTRAINT [FK_dbo.Cart_dbo.User_UserID]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([FromUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([ToUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_OrderID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductCategory_dbo.ProductCategoryParent_ParentID] FOREIGN KEY([ParentID])
REFERENCES [dbo].[ProductCategoryParent] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_dbo.ProductCategory_dbo.ProductCategoryParent_ParentID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Ages_AgeID] FOREIGN KEY([AgeID])
REFERENCES [dbo].[Age] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Ages_AgeID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Gender_GenderID] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Gender_GenderID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Producer_ProducerID] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Producer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Producer_ProducerID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.ProductCategory_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategory] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.ProductCategory_CategoryID]
GO
ALTER TABLE [dbo].[ProductViewed]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductViewed_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductViewed] CHECK CONSTRAINT [FK_dbo.ProductViewed_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ProductViewed]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductViewed_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductViewed] CHECK CONSTRAINT [FK_dbo.ProductViewed_dbo.User_UserID]
GO
ALTER TABLE [dbo].[QA]  WITH CHECK ADD FOREIGN KEY([UserAnswerID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[QA]  WITH CHECK ADD FOREIGN KEY([UserAskID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[QA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QA_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QA] CHECK CONSTRAINT [FK_dbo.QA_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rating_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_dbo.Rating_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rating_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_dbo.Rating_dbo.User_UserID]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.UserType_UserTypeID] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.UserType_UserTypeID]
GO
ALTER TABLE [dbo].[UserDiscountCode]  WITH CHECK ADD  CONSTRAINT [FK_UserDiscountCode_DiscountCodeDetail] FOREIGN KEY([DiscountCodeDetailID])
REFERENCES [dbo].[DiscountCodeDetail] ([ID])
GO
ALTER TABLE [dbo].[UserDiscountCode] CHECK CONSTRAINT [FK_UserDiscountCode_DiscountCodeDetail]
GO
ALTER TABLE [dbo].[UserDiscountCode]  WITH CHECK ADD  CONSTRAINT [FK_UserDiscountCode_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserDiscountCode] CHECK CONSTRAINT [FK_UserDiscountCode_User]
GO
ALTER TABLE [dbo].[UsersSpin]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Receiver') DROP SERVICE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender') DROP SERVICE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Receiver') DROP QUEUE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender') DROP QUEUE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65') DROP CONTRACT [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ID') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ID/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/FromUserID') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ToUserID') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Content') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Content/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/CreatedDate') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Sent') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Sent/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/EndMessage') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Receiver') DROP SERVICE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender') DROP SERVICE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Receiver') DROP QUEUE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender') DROP QUEUE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b') DROP CONTRACT [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ID') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ID/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/FromUserID') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ToUserID') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Content') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Content/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/CreatedDate') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Sent') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Sent/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/EndMessage') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver') DROP SERVICE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender') DROP SERVICE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver') DROP QUEUE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender') DROP QUEUE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc') DROP CONTRACT [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/EndMessage') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver') DROP SERVICE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender') DROP SERVICE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver') DROP QUEUE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender') DROP QUEUE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8') DROP CONTRACT [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/EndMessage') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Receiver') DROP SERVICE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender') DROP SERVICE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Receiver') DROP QUEUE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender') DROP QUEUE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1') DROP CONTRACT [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ID') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ID/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/FromUserID') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ToUserID') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Content') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Content/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/CreatedDate') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Sent') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Sent/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/EndMessage') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Receiver') DROP SERVICE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender') DROP SERVICE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Receiver') DROP QUEUE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender') DROP QUEUE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0') DROP CONTRACT [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ID') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ID/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/FromUserID') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ToUserID') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Content') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Content/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/CreatedDate') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Sent') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Sent/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/EndMessage') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Receiver') DROP SERVICE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender') DROP SERVICE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Receiver') DROP QUEUE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender') DROP QUEUE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2') DROP CONTRACT [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ID') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ID/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/FromUserID') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ToUserID') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Content') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Content/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/CreatedDate') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Sent') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Sent/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/EndMessage') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Receiver') DROP SERVICE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender') DROP SERVICE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Receiver') DROP QUEUE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender') DROP QUEUE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac') DROP CONTRACT [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ID') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ID/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/FromUserID') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ToUserID') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Content') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Content/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/CreatedDate') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Sent') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Sent/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/EndMessage') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver') DROP SERVICE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender') DROP SERVICE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver') DROP QUEUE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender') DROP QUEUE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e') DROP CONTRACT [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/EndMessage') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Receiver') DROP SERVICE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender') DROP SERVICE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Receiver') DROP QUEUE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender') DROP QUEUE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6') DROP CONTRACT [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ID') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ID/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/FromUserID') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ToUserID') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Content') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Content/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/CreatedDate') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Sent') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Sent/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/EndMessage') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Receiver') DROP SERVICE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender') DROP SERVICE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Receiver') DROP QUEUE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender') DROP QUEUE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a') DROP CONTRACT [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ID') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ID/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/FromUserID') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ToUserID') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Content') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Content/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Sent') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Sent/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/EndMessage') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Receiver') DROP SERVICE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender') DROP SERVICE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Receiver') DROP QUEUE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender') DROP QUEUE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8') DROP CONTRACT [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ID') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ID/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/FromUserID') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ToUserID') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Content') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Content/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/CreatedDate') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Sent') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Sent/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/EndMessage') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Receiver') DROP SERVICE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender') DROP SERVICE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Receiver') DROP QUEUE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender') DROP QUEUE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504') DROP CONTRACT [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ID') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ID/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/FromUserID') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ToUserID') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Content') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Content/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/CreatedDate') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Sent') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Sent/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/EndMessage') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Receiver') DROP SERVICE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender') DROP SERVICE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Receiver') DROP QUEUE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender') DROP QUEUE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340') DROP CONTRACT [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ID') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ID/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/FromUserID') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ToUserID') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Content') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Content/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/CreatedDate') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Sent') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Sent/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/EndMessage') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Receiver') DROP SERVICE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender') DROP SERVICE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Receiver') DROP QUEUE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender') DROP QUEUE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363') DROP CONTRACT [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ID') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ID/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/FromUserID') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ToUserID') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Content') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Content/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/CreatedDate') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Sent') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Sent/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/EndMessage') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Receiver') DROP SERVICE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender') DROP SERVICE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Receiver') DROP QUEUE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender') DROP QUEUE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33') DROP CONTRACT [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ID') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ID/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/FromUserID') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ToUserID') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Content') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Content/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/CreatedDate') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Sent') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Sent/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/EndMessage') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Receiver') DROP SERVICE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender') DROP SERVICE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Receiver') DROP QUEUE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender') DROP QUEUE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5') DROP CONTRACT [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ID') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ID/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/FromUserID') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ToUserID') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Content') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Content/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/CreatedDate') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Sent') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Sent/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/EndMessage') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Receiver') DROP SERVICE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender') DROP SERVICE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Receiver') DROP QUEUE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender') DROP QUEUE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712') DROP CONTRACT [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ID') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ID/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/FromUserID') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ToUserID') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Content') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Content/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/CreatedDate') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Sent') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Sent/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/EndMessage') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Receiver') DROP SERVICE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender') DROP SERVICE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Receiver') DROP QUEUE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender') DROP QUEUE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a') DROP CONTRACT [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ID') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ID/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/FromUserID') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ToUserID') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Content') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Content/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Sent') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Sent/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/EndMessage') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Receiver') DROP SERVICE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender') DROP SERVICE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Receiver') DROP QUEUE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender') DROP QUEUE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090') DROP CONTRACT [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ID') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ID/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/FromUserID') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ToUserID') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Content') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Content/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/CreatedDate') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Sent') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Sent/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/EndMessage') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Receiver') DROP SERVICE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender') DROP SERVICE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Receiver') DROP QUEUE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender') DROP QUEUE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59') DROP CONTRACT [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ID') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ID/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/FromUserID') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ToUserID') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Content') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Content/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/CreatedDate') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Sent') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Sent/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/EndMessage') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Receiver') DROP SERVICE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender') DROP SERVICE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Receiver') DROP QUEUE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender') DROP QUEUE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca') DROP CONTRACT [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ID') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ID/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/FromUserID') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ToUserID') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Content') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Content/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/CreatedDate') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Sent') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Sent/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/EndMessage') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Receiver') DROP SERVICE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender') DROP SERVICE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Receiver') DROP QUEUE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender') DROP QUEUE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459') DROP CONTRACT [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ID') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ID/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/FromUserID') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ToUserID') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Content') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Content/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/CreatedDate') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Sent') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Sent/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/EndMessage') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Receiver') DROP SERVICE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender') DROP SERVICE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Receiver') DROP QUEUE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender') DROP QUEUE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a') DROP CONTRACT [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ID') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ID/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/FromUserID') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ToUserID') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Content') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Content/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Sent') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Sent/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/EndMessage') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver') DROP SERVICE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender') DROP SERVICE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver') DROP QUEUE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender') DROP QUEUE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39') DROP CONTRACT [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/EndMessage') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver') DROP SERVICE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender') DROP SERVICE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver') DROP QUEUE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender') DROP QUEUE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a') DROP CONTRACT [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/EndMessage') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Receiver') DROP SERVICE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender') DROP SERVICE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Receiver') DROP QUEUE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender') DROP QUEUE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70') DROP CONTRACT [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ID') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ID/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/FromUserID') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ToUserID') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Content') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Content/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/CreatedDate') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Sent') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Sent/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/EndMessage') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Receiver') DROP SERVICE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender') DROP SERVICE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Receiver') DROP QUEUE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender') DROP QUEUE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e') DROP CONTRACT [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ID') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ID/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/FromUserID') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ToUserID') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Content') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Content/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/CreatedDate') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Sent') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Sent/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/EndMessage') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Receiver') DROP SERVICE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender') DROP SERVICE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Receiver') DROP QUEUE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender') DROP QUEUE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827') DROP CONTRACT [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ID') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ID/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/FromUserID') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ToUserID') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Content') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Content/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/CreatedDate') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Sent') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Sent/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/EndMessage') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Receiver') DROP SERVICE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender') DROP SERVICE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Receiver') DROP QUEUE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender') DROP QUEUE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9') DROP CONTRACT [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/ID') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/ID/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateOrder') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateShip') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateShip/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Offer') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Offer/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsPaid') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsCancel') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelete') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelivere') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsApproved') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsReceived') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Total') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Total/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/EndMessage') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Receiver') DROP SERVICE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender') DROP SERVICE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Receiver') DROP QUEUE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender') DROP QUEUE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138') DROP CONTRACT [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/ID') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/ID/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateOrder') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateShip') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateShip/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Offer') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Offer/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsPaid') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsCancel') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelete') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelivere') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsApproved') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsReceived') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Total') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Total/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/EndMessage') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Receiver') DROP SERVICE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender') DROP SERVICE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Receiver') DROP QUEUE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender') DROP QUEUE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393') DROP CONTRACT [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/ID') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/ID/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateOrder') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateShip') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateShip/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Offer') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Offer/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsPaid') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsCancel') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelete') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelivere') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsApproved') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsReceived') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Total') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Total/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/EndMessage') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Receiver') DROP SERVICE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender') DROP SERVICE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Receiver') DROP QUEUE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender') DROP QUEUE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f') DROP CONTRACT [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/ID') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/ID/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateOrder') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateShip') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateShip/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Offer') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Offer/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsPaid') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsCancel') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelete') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelivere') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsApproved') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsReceived') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Total') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Total/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/EndMessage') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Receiver') DROP SERVICE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender') DROP SERVICE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Receiver') DROP QUEUE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender') DROP QUEUE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b') DROP CONTRACT [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/ID') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/ID/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateOrder') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateShip') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateShip/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Offer') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Offer/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsPaid') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsCancel') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelete') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelivere') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsApproved') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsReceived') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Total') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Total/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/EndMessage') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Receiver') DROP SERVICE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender') DROP SERVICE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Receiver') DROP QUEUE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender') DROP QUEUE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b') DROP CONTRACT [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/ID') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/ID/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateOrder') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateShip') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateShip/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Offer') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Offer/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsPaid') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsCancel') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelete') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelivere') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsApproved') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsReceived') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Total') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Total/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/EndMessage') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Receiver') DROP SERVICE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender') DROP SERVICE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Receiver') DROP QUEUE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender') DROP QUEUE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d') DROP CONTRACT [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/ID') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/ID/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateOrder') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateShip') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateShip/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Offer') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Offer/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsPaid') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsCancel') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelete') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelivere') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsApproved') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsReceived') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Total') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Total/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/EndMessage') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Receiver') DROP SERVICE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender') DROP SERVICE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Receiver') DROP QUEUE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender') DROP QUEUE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63') DROP CONTRACT [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/ID') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/ID/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateOrder') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateShip') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateShip/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Offer') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Offer/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsPaid') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsCancel') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelete') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelivere') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsApproved') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsReceived') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Total') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Total/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/EndMessage') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Receiver') DROP SERVICE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender') DROP SERVICE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Receiver') DROP QUEUE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender') DROP QUEUE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0') DROP CONTRACT [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/ID') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/ID/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateOrder') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateShip') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateShip/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Offer') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Offer/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsPaid') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsCancel') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelete') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelivere') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsApproved') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsReceived') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Total') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Total/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/EndMessage') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_QueueActivationSender]    Script Date: 5/19/2023 9:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Receiver') DROP SERVICE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender') DROP SERVICE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Receiver') DROP QUEUE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender') DROP QUEUE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789') DROP CONTRACT [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/ID') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/ID/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateOrder') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateShip') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateShip/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Offer') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Offer/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsPaid') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsCancel') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelete') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelivere') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsApproved') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsReceived') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Total') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Total/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/EndMessage') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_QueueActivationSender];

        
    END
END
GO
USE [master]
GO
ALTER DATABASE [ShopPhuKien] SET  READ_WRITE 
GO
