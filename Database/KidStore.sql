USE [master]
GO
/****** Object:  Database [KidStore]    Script Date: 4/19/2024 9:35:45 AM ******/
CREATE DATABASE [KidStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KidStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SONTTSE171846\MSSQL\DATA\KidStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KidStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SONTTSE171846\MSSQL\DATA\KidStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [KidStore] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KidStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KidStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KidStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KidStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KidStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KidStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [KidStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KidStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KidStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KidStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KidStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KidStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KidStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KidStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KidStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KidStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KidStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KidStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KidStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KidStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KidStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KidStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KidStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KidStore] SET RECOVERY FULL 
GO
ALTER DATABASE [KidStore] SET  MULTI_USER 
GO
ALTER DATABASE [KidStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KidStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KidStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KidStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KidStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KidStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KidStore', N'ON'
GO
ALTER DATABASE [KidStore] SET QUERY_STORE = ON
GO
ALTER DATABASE [KidStore] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [KidStore]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/19/2024 9:35:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[full_name] [nvarchar](255) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](255) NULL,
	[active] [bit] NULL,
	[role_id] [int] NULL,
	[payment_id] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/19/2024 9:35:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](255) NULL,
	[approve] [bit] NULL,
	[name_staff] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 4/19/2024 9:35:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[image_id] [int] IDENTITY(1,1) NOT NULL,
	[imageToy] [nvarchar](max) NULL,
	[toy_id] [int] NULL,
	[main] [bit] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 4/19/2024 9:35:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[news_id] [int] IDENTITY(1,1) NOT NULL,
	[tittle] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[date] [date] NULL,
	[staff] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/19/2024 9:35:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] NOT NULL,
	[user_id] [int] NULL,
	[status] [nvarchar](max) NULL,
	[create_date] [date] NULL,
	[voucher_id] [int] NULL,
	[payment_type] [bit] NULL,
	[total_amount] [float] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/19/2024 9:35:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[toy_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[amount] [money] NULL,
	[order_detail_id] [int] NOT NULL,
	[order_id] [int] NULL,
	[warranty_code] [nchar](10) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 4/19/2024 9:35:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] NOT NULL,
	[bank_name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/19/2024 9:35:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] NOT NULL,
	[role_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Toy]    Script Date: 4/19/2024 9:35:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Toy](
	[toy_id] [int] IDENTITY(1,1) NOT NULL,
	[toy_name] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[description] [nvarchar](max) NULL,
	[category_id] [int] NULL,
	[discount] [float] NULL,
	[approve] [bit] NULL,
	[warranty_time] [int] NULL,
	[name_staff] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[toy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 4/19/2024 9:35:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[voucher_id] [int] NOT NULL,
	[voucher_name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[date_expiration] [date] NULL,
	[voucher_discount] [float] NULL,
	[voucher_limit] [int] NULL,
	[voucher_limit_price] [money] NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [active], [role_id], [payment_id]) VALUES (1, N'admin', N'1', N'Admin', N'123456789', N'Hồ Chí Minh', 1, 1, NULL)
INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [active], [role_id], [payment_id]) VALUES (2, N'staff', N'1', N'Staff', N'123456789', N'Vũng Tàu', 1, 2, NULL)
INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [active], [role_id], [payment_id]) VALUES (3, N'customer', N'1', N'Customer', N'123456789', N'Nha Trang', 1, 3, NULL)
INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [active], [role_id], [payment_id]) VALUES (21, N'quoc', N'd', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [active], [role_id], [payment_id]) VALUES (22, N'son', N'1', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (1, N'Đồ Chơi Lắp Ghép', 1, N'staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (2, N'Đồ Chơi Sáng Tạo ', 1, N'staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (3, N'Đồ Chơi Vận Động ', 1, N'staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (4, N'Đồ Chơi Mầm Non', 1, N'staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (5, N'Đồ Chơi Bay', 1, N'staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (6, N'Đồ Chơi Robot ', 1, N'staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (7, N'Đồ Chơi Sưu Tập', 1, N'staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (8, N'Đồ Chơi Phương Tiện', 1, N'staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (9, N'Đồ Chơi Theo Phim', 0, N'Staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (10, N'Kẹo Đồ Chơi', 0, N'Staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (11, N'Đồ Dùng Học Tập', 0, N'Staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (12, N'Đồ Thời Trang', 0, N'Staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (13, N'Thế Giới Động Vật', 0, N'Staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (14, N'Búp Bê', 0, N'Staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (15, N'Đồ Chơi Mô Phỏng', 0, N'Staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (16, N'Thú Bông', 0, N'Staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (17, N'Game', 0, N'Staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (18, N'Xe Đạp & Scooter', 0, N'Staff')
INSERT [dbo].[Category] ([category_id], [category_name], [approve], [name_staff]) VALUES (19, N'Đồ Dùng Cho Em Bé', 0, N'Staff')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (1, N'https://www.mykingdom.com.vn/cdn/shop/files/6941848233653_1.jpg?v=1711523586&width=990', 1, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (2, N'https://www.mykingdom.com.vn/cdn/shop/files/6941848252470_1.jpg?v=1711526016&width=990', 2, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (3, N'https://www.mykingdom.com.vn/cdn/shop/files/pop-mart-disney-stitch-on-a-date-6941848254726_1.jpg?v=1708480803&width=990', 3, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (4, N'https://www.mykingdom.com.vn/cdn/shop/products/grw39_2.jpg?v=1706986544&width=990', 4, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (5, N'https://www.mykingdom.com.vn/cdn/shop/products/mykingdom-6060759_1__1.jpg?v=1706990334&width=990', 5, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (6, N'https://www.mykingdom.com.vn/cdn/shop/products/k5904_1.jpg?v=1684908216&width=990', 6, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (7, N'https://www.mykingdom.com.vn/cdn/shop/products/60411-26-12_1.jpg?v=1707216630&width=990', 7, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (8, N'https://www.mykingdom.com.vn/cdn/shop/products/60399_1.jpg?v=1707216268&width=990', 8, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (9, N'https://www.mykingdom.com.vn/cdn/shop/products/60415_1.jpg?v=1707216784&width=990', 9, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (10, N'https://www.mykingdom.com.vn/cdn/shop/products/vt2059_2.jpg?v=1685018790&width=990', 10, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (11, N'https://www.mykingdom.com.vn/cdn/shop/products/T6088___BL_3.jpg?v=1684940407&width=990', 11, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (12, N'https://www.mykingdom.com.vn/cdn/shop/products/vt2028109-wht_1.jpg?v=1685003356&width=990', 12, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (13, N'https://www.mykingdom.com.vn/cdn/shop/products/07_220_1.jpg?v=1684813422&width=493', 13, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (14, N'https://www.mykingdom.com.vn/cdn/shop/files/eca12596e4e8da03a4f43039dc45d49f.jpg?v=1706799174&width=493', 14, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (15, N'https://www.mykingdom.com.vn/cdn/shop/files/258669004fe9569286204486bca2efb0.jpg?v=1706781194&width=493', 15, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (16, N'https://www.mykingdom.com.vn/cdn/shop/products/6041531_6.jpg?v=1706965947&width=493', 16, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (17, N'https://www.mykingdom.com.vn/cdn/shop/products/vta26_3__1_fabe24f3-081c-474a-8bb2-52d96ef2ae65.jpg?v=1706986053&width=493', 17, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (18, N'https://www.mykingdom.com.vn/cdn/shop/products/MT39900_39124_1.jpg?v=1684886078&width=1100', 18, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (19, N'https://www.mykingdom.com.vn/cdn/shop/products/6055924_3.jpg?v=1684972296&width=493', 19, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (20, N'https://www.mykingdom.com.vn/cdn/shop/products/R75200-YEL_1.jpg?v=1684893113&width=493', 20, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (21, N'https://www.mykingdom.com.vn/cdn/shop/products/6024397-tiki-th.jpg?v=1684988850&width=990', 21, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (22, N'https://www.mykingdom.com.vn/cdn/shop/products/1423004871_1.jpg?v=1685027159&width=990', 22, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (23, N'https://www.mykingdom.com.vn/cdn/shop/products/212-358_2_1.jpg?v=1684983259&width=990', 23, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (24, N'https://www.mykingdom.com.vn/cdn/shop/products/ro203m-3_gr-bk_3.jpg?v=1684913663&width=990', 24, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (25, N'https://www.mykingdom.com.vn/cdn/shop/products/vtf8_3.jpg?v=1685019508&width=990', 25, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (26, N'https://www.mykingdom.com.vn/cdn/shop/products/vtk908.gr-tiki-at.jpg?v=1685042210&width=990', 26, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (27, N'https://www.mykingdom.com.vn/cdn/shop/products/ffc84_8.jpg?v=1685002500&width=990', 27, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (28, N'https://www.mykingdom.com.vn/cdn/shop/products/889-191_3.png?v=1685011784&width=990', 28, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (29, N'https://www.mykingdom.com.vn/cdn/shop/products/1_14_1.jpg?v=1685001423&width=990', 29, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (30, N'https://www.mykingdom.com.vn/cdn/shop/files/6958985026697_1.jpg?v=1712629560&width=493', 30, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (31, N'https://www.mykingdom.com.vn/cdn/shop/files/mo-hinh-panda-roll-kindergarten-52toys-6958985026451_5.jpg?v=1713262241&width=493', 31, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (32, N'https://www.mykingdom.com.vn/cdn/shop/files/6958985024259_4.jpg?v=1712629157&width=493', 32, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (33, N'https://www.mykingdom.com.vn/cdn/shop/products/cb-a2709559-4778_1.jpg?v=1707218510&width=493', 33, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (34, N'https://www.mykingdom.com.vn/cdn/shop/products/ttsr23yqm01_2.jpg?v=1707218404&width=493', 34, 1)
INSERT [dbo].[Image] ([image_id], [imageToy], [toy_id], [main]) VALUES (35, N'https://www.mykingdom.com.vn/cdn/shop/products/cb-a2678579-4778_1.jpg?v=1707218470&width=493', 35, 1)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([news_id], [tittle], [image], [date], [staff], [description]) VALUES (1, N'Có Gì Trong Bộ Ảo Thuật Eddy''S Magic 50 Chiêu?', N'https://www.mykingdom.com.vn/cdn/shop/articles/ao-thuat-eddys-magic-50-chieu_thumbnail.jpg?v=1713350545', CAST(N'2024-07-14' AS Date), N'BTV Trần Diệu', N'Ảo Thuật Eddy''S Magic 50 Chiêu là một sản phẩm cực hot tại Mykingdom, thỏa mãn đam mê trở thành ảo thuật gia của các bạn nhỏ. 
                                        Với các đạo cụ chuyên nghiệp cùng DVD hướng dẫn cực kỳ chi tiết, sản phẩm đã giúp rất nhiều bạn nhỏ đánh lừa đôi mắt của người xem. 
                                        Không chần chờ gì nữa, chúng ta hãy cùng khám phá xem bộ đồ chơi này có gì nhé!')
INSERT [dbo].[News] ([news_id], [tittle], [image], [date], [staff], [description]) VALUES (2, N'1/6 Là Ngày Gì? Nguồn Gốc Và Ý Nghĩa Trọng Đại Của Ngày Lễ Này', N'https://www.mykingdom.com.vn/cdn/shop/articles/1-6-la-ngay-gi_thumbnail.jpg?v=1713171476', CAST(N'2024-04-15' AS Date), N'BTV Trần Diệu', N'1/6 là ngày gì và tại sao trẻ em lại mong chờ ngày lễ này đến thế? Bạn hãy cùng Mykingdom giải đáp thắc mắc này và tìm hiểu thêm về nguồn gốc cũng như ý nghĩa của ngày Quốc tế thiếu nhi nhé.
                                    Ngày 1/6 Có Được Nghỉ Không?
                                    Ngày 1/6/2024 năm nay sẽ rơi vào thứ Bảy, thế nhưng Quốc tế thiếu nhi vốn nằm trong danh sách ngày nghỉ lễ theo quy định của nước ta, vậy nên người lao động sẽ không được nghỉ bù.')
INSERT [dbo].[News] ([news_id], [tittle], [image], [date], [staff], [description]) VALUES (3, N'Cách Chọn Môn Thể Thao Dành Cho Trẻ Theo Từng Độ Tuổi', N'https://www.mykingdom.com.vn/cdn/shop/articles/the-thao-danh-cho-tre-theo-tung-do-tuoi_thumbnail.jpg?v=1713151557', CAST(N'2024-04-15' AS Date), N'BTV Trần Diệu', N'Thể thao dành cho trẻ theo từng độ tuổi ảnh hưởng rất lớn đối với sự phát triển toàn diện của con. 
                                    Chơi thể thao quá sức hoặc quá nhẹ đều không thể mang lại hiệu quả mong muốn.')
INSERT [dbo].[News] ([news_id], [tittle], [image], [date], [staff], [description]) VALUES (4, N'List 10 Món Đồ Chơi Phát Triển Trí Tuệ Cho Bé', N'https://www.mykingdom.com.vn/cdn/shop/articles/do-choi-phat-trien-tri-tue-cho-be_thumbnail.jpg?v=1712919766', CAST(N'2024-04-12' AS Date), N'BTV Trần Diệu', N'Rất nhiều phụ huynh muốn mua đồ chơi phát triển trí tuệ cho bé nhưng chưa biết nên mua gì. Vậy nên KidStore đã lập danh sách dưới đây để bạn tham khảo. Đồ Chơi Học Số Và Chữ Cái  Bộ học chữ và số là món đồ chơi phát triển trí tuệ cho bé từ 3 tuổi. Ở độ tuổi này trẻ tiếp thu kiến thức cực kỳ nhanh chóng, có thể nói là độ tuổi vàng để học tập. Sản phẩm có bảng chữ cái tiếng Anh cùng các hình học nhiều màu sắc cũng như ảnh về đồ vật, con vật theo số đếm. Các hình ảnh minh họa vô cùng sống động và nhiều màu sắc nên có thể giúp bé học vui hơn mà không bị chán. 
                                    Hơn nữa, sản phẩm còn có các nút bật lên/hạ xuống, giúp trẻ tăng cường kỹ năng quan sát.')
INSERT [dbo].[News] ([news_id], [tittle], [image], [date], [staff], [description]) VALUES (5, N'Vì Sao Cần Giúp Trẻ Phát Triển Thể Lực Trong Dịp Hè?', N'https://www.mykingdom.com.vn/cdn/shop/articles/vi-sao-can-giup-tre-phat-trien-the-luc-trong-dip-he_thumbnail.jpg?v=1712891007', CAST(N'2024-04-12' AS Date), N'BTV Trần Diệu', N'Vì sao cần giúp trẻ phát triển thể lực trong dịp hè là câu hỏi khiến phụ huynh băn khoăn, bởi họ cho rằng trẻ nên được làm những gì mình muốn sau những giờ học tập mệt mỏi. 
                                    Bạn hãy cùng Mykingdom giải đáp thắc mắc ấy qua bài viết này nhé!')
INSERT [dbo].[News] ([news_id], [tittle], [image], [date], [staff], [description]) VALUES (6, N'a', N'https://i.ytimg.com/vi/QJD4rHJk2n8/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCOQIvdy4W2jBjOsz-7s40gme65Nw', CAST(N'2024-04-19' AS Date), N'Customer', N'a')
SET IDENTITY_INSERT [dbo].[News] OFF
GO
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'Staff')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (3, N'Customer')
GO
SET IDENTITY_INSERT [dbo].[Toy] ON 

INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (1, N'Mô Hình Đồ Chơi Detective Conan Carnival POP MART 6941848233653', 1, 280000.0000, N'Bộ sưu tập gồm 12 nhân vật thường và 1 nhân vật hiếm.

Kích thước: 6-9cm

Chất liệu: nhựa PVC/ABS', 7, 0.95, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (2, N'Mô Hình Universal Kung Fu Panda', 1, 280000.0000, N'Bộ sưu tập gồm 9 nhân vật thường và 1 nhân vật hiếm. Kích thước: 6-9cm Chất liệu: nhựa PVC/ABS', 7, 0.95, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (3, N'Mô Hình Disney Stitch On A Date POP MART 6941848254726', 1, 280000.0000, N'Bộ sưu tập gồm 12 nhân vật thường và 1 nhân vật hiếm. Chất liệu: PVC/ABS Kích thước: 7-10cm', 7, 0.95, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (4, N'Bộ Đường Đua Hot Wheels Xoắc Ốc Dốc Bay', 1, 650000.0000, N'THỬ THÁCH CHIỀU CAO - Chạy đến lồng của người chiến thắng trên đường đua Vòng & Khởi động Hot Wheels! Những chiếc xe chạy dọc theo đường ray và qua một vòng đưa chúng đến một cái lồng có thể cao tới 60cm trong không khí!', 8, 0.95, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (5, N'Đồ Chơi Xe Cảnh Sát Biến Hình Paw Patrol The Movie - Chase', 1, 909000.0000, N'Thương hiệu Canada. Được mô phỏng theo bộ phim hoạt hình nổi tiếng Đội Chó Cứu Hộ Paw Patrol. Từ màn ảnh nhỏ bước ra công chiếu thể giới với tên gọi Paw Patrol The Movie', 8, 0.95, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (6, N'Bộ 3 Siêu Xe Hot Wheels', 1, 199000.0000, N'Bộ ba chiếc xe mô hình được thiết kế vô cùng tinh xảo với tỷ lệ thu nhỏ 1/64 từ chiếc xe ngoài đời thật. Siêu xe được mô phỏng chính xác với hình ảnh xe thật giúp bé dễ dàng phân biệt và học hỏi về các phương tiện giao thông trong đời sống.', 8, 0.95, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (7, N'Đồ Chơi Lắp Ráp Trực Thăng Cứu Hỏa LEGO CITY 60411', 1, 209000.0000, N'Sẵn sàng cho các nhiệm vụ chữa cháy ly kỳ với Bộ LEGO® City Đồ chơi lắp ráp Trực thăng cứu hỏa! Lấy mũ bảo hiểm cứu hỏa và ống nhòm trinh sát từ ngăn chứa đồ, nhảy vào buồng lái và quay cánh quạt để bay lên không trung.', 1, 0.95, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (8, N'Đồ Chơi Lắp Ráp Xe Đua Thể Thao Xanh Lá Cây LEGO CITY 60399', 1, 209000.0000, N' Cùng các tay đua siêu ngầu chuẩn bị cho màn tăng tốc hoành tráng! Kiểm tra lốp xe và vượt qua các khúc cua, sau đó lao qua các nhiếp ảnh gia để vượt qua vạch đích trong thời gian kỷ lục', 1, 0.95, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (9, N'Đồ Chơi Lắp Ráp Xe Cảnh Sát Truy Đuổi Tội Phạm LEGO CITY 60415', 1, 599000.0000, N'Đã có một tên trộm bẻ khóa! Tiến vào buồng lái của cảnh sát và lên đường truy đuổi những tên tội phạm tại Thành phố LEGO®. Siêu xe này được trang bị cánh lướt gió lớn phía sau và lốp có cấu hình cao để tăng tốc độ và khả năng bám đường', 1, 0.95, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (10, N'Robot Mèo Con Thông Thái', NULL, 449000.0000, N'Đáng yêu và nhí nhảnh, nghịch ngợm và thông thái. Robot mèo con thông thái đã đến rồi đây. Ba mẹ đã sẵn sàng rước chú về học tập vui chơi với bé nhà mình chưa?   - Đố vui các câu hỏi thường thức hay các câu hỏi toán học cùng bé (các câu hỏi sẽ được hỏi bằng tiếng anh – Bé có thể chọn đáp án đúng bằng cách nhấn A,B,C ở trên Remote)   - Hệ thống lập trình chuỗi hành động độc đáo.   - Điều khiển linh hoạt tới, lui, trái , phải   - Chức năng tự động trình diễn  Vẻ ngoài của chú robot mèo con thông thái là sự kết hợp hài hòa giữa hai màu sắc đen và vàng, tạo nên một vẻ ngoại trang bắt mắt và vô cùng đặc biệt.  Còn chần chờ gì nữa mà ba mẹ không rước ngay một chú mèo cực kỳ thông minh về nhà để bầu bạn cùng bé.', 6, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (11, N'Robot Tương Lai (Xanh)', NULL, 419000.0000, N'Bằng sự phối hợp nhịp nhàng giữa những đường cắt và đường dập nổi, khiển cho vẻ ngoài của Robot tương lai trở nên vô cùng bắt mắt và cuốn hút.  Không những thế chú Robot tương lai còn được tích hợp những tính năng vô cùng đặc sắc có thể kể đến như:  - Di chuyển linh hoạt bằng remote điều khiển hoặc bằng cảm ứng cử chỉ tay - Hiệu ứng âm thanh sống động - Nhảy theo nhạc - Lập trình lên đến 48 bước Bộ sản phẩm Robot tương lai bao gồm:  1 x Robot tương lai (có kèm pin sạc bên trong)  1 x remote điều khiển (xài pin tiểu không kèm pin)  1 x cáp sạc USB', 6, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (12, N'Robot Lăn Lộn (Trắng)', NULL, 221000.0000, N'Cùng VECTO tham gia vào cuộc chiến giữa những chú robot lăn lộn siêu “cool ngầu” nào. -  Những chú robot được thiết kế tinh nghịch với đôi mắt phát sáng sống động.  - Các chú còn có khả năng lộn cù mèo độc đáo, xoay vòng 360 độ. - Chức năng tự động trình diễn  Chú Robot lăn lộn có ba màu sắc đỏ, cam  và trắng có thể chơi cùng 1 lúc hứa hẹn những trận chạm trán nảy lửa và sẽ mang đến cho bé những phút giây vui chơi hào hứng tràn đầy niềm vui. Bằng cách để bé tự tay điều khiển đồ chơi của mình ngay từ nhỏ, bé sẽ rèn luyện cho mình tư duy phương hướng, khả năng kiểm soát và học cách sáng tạo trong việc giải quyết vấn đề trong từng tình huống mà đồ chơi gặp phải.  Bộ sản phẩm Robot lăn lộn bao gồm:  1 x Robot lăn lộn (sử dụng pin sạc có đi kèm)  1 x Remote điều khiển (xài pin tiểu, không kèm pin)  1 x Cáp sạc USB  1 x Pin sạc', 6, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (13, N'Xe Bus Vui Học', NULL, 1029000.0000, N'Đồ chơi LEAPFROG xe bus vui học 80-601300 là đồ chơi sử dụng công nghệ tiên tiến giúp bé có thể vừa chơi vừa học cũng như có cái nhìn gần gũi hơn về thế giới xung quanh. Thông qua sản phẩm bé có thể khám phá thế giới một cách trực quan, học hỏi được nhiều điều hơn.', 2, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (14, N'Laptop Màu Xanh', NULL, 819000.0000, N'Đồ Chơi LEAPFROG laptop màu xanh 80-19150 là đồ chơi mô phỏng laptop, máy tính xách tay nhằm hỗ trợ bé có thể học tập bằng công nghệ tiên tiến. Thông qua sản phẩm bé có thể khám phá thế giới một cách trực quan, học hỏi được nhiều điều hơn.', 2, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (15, N'Xe Công Trình Chòi Chân - Máy Xúc', NULL, 999000.0000, N'Tải trọng được 50kg. ✅ Ghế tựa và chống phía sau chống xe bị bật ngửa. ✅ Vô lăng, cần số trang bị còi và các chức năng điều khiển như xe thật. ✅ Tollet di động dưới ghế. ✅ Vô lăng và cần gạt hoạt động kép có thể xúc các đồ vật nhẹ. ✅ Tặng kèm một nón bảo hiểm siêu ngầu cho bé.', 1, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (16, N'Xe Đua Đệm Khí Drone Power Racer', NULL, 500000.0000, N'Bức phá giới hạn với xe đua đệm khí siêu mạnh Drone Power Racers. Khả năng tách rời và kết hợp 2 trong 1 siêu linh hoạt giúp Drone Power Racers đạt được tốc độ tới đa khi đua trên mặt đất và bức phá ở những chặng cuối với khả năng bay tăng tốc.', 5, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (17, N'Siêu Drone Chiến Binh Bầu Trời', NULL, 500000.0000, N'DRONE - CHIẾN BINH BẦU TRỜI Bao phủ bên ngoài là một màu vàng sang trọng kết hợp cùng thiết kế mạnh mẽ, tạo nên một chiến binh bầu trời hết sức uy dũng. Chưa dừng lại ở đó Drone còn được tích hợp một chuỗi tính năng nổi trội như: - Nhào lộn 360 độ - Chế độ tự giữ độ cao - giúp việc điều khiển trở nên dễ dàng - Tính năng Headless mode độc đáo - Chế độ điều chỉnh tốc độ nhanh/ chậm', 5, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (18, N'Đồ Chơi Xe Lắp Ráp Ô Tô Lamborghini Roadster Tỉ Lệ 1:24', NULL, 599000.0000, N'Đồ chơi Maisto xe lắp ráp ô tô Lamborghini Roadster tỉ lệ 1:24 39124/MT39900 có thiết kế như thật với những đường nét mô phỏng chi tiết. Lamborghini Roadster là siêu xe mui trần, chỉ được sản xuất 800 chiếc trên toàn thế giới và là một trong những phiên bản Aventador SVJ mui trần đắt nhất trên thế giới. Bé có thể chơi cùng bạn bè hoặc bổ sung xe mô hình vào bộ sưu tập của bản thân cho phong phú hơn. ', 1, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (19, N'Ô Tô Chiến Xe Monster Jam', NULL, 209000.0000, N'Đồ chơi MONSTER JAM ô tô chiến xe 6055924 mô phỏng chân thật các chiến xe tham gia giải đấu Monster Jam. Với bất cứ những ai đam mê show thực tế này, chắc hẳn bạn đã có trong lòng chiếc xe yêu thích. Giờ đây, các cỗ máy chiến được tái hiện đầy hầm hố và ấn tượng hơn bao giờ hết!', 8, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (20, N'Xe Điều Khiển Mc Laren P1', NULL, 479000.0000, N'+ Xe Rastar có bản quyền chính hãng McLaren ngoài đời thật + Tỷ lệ 1:24 (Mỗi kích thước: Ngang, dài, cao nhỏ hơn 24 lần so với xe thật) + Xe điều khiển tiến, lùi, rẽ trái, rẽ phải + Thiết kế tinh xảo, tỉ mỉ từng chi tiết + Được làm từ nhựa và kim loại cao cấp, đảm bảo cho sự chắc chắn và độ bền của xe + Bánh xe bằng cao su giúp tăng độ bám với bề mặt, giúp xe chạy đầm và êm hơn + Bảo hành 30 ngày tại Mykingdom nếu có lỗi từ nhà sản xuất + Sản phẩm không kèm pin', 8, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (21, N'B&#7897; C�t, D&#7909;ng C&#7909; V� Khay Ch&#417;i C�t', NULL, 579000.0000, N'B&#7855;t &#273;&#7847;u cu&#7897;c phi�u l&#432;u v�o th&#7871; gi&#7899;i c&#7893; t�ch v&#7899;i B&#7897; c�t, d&#7909;ng c&#7909; v� khay ch&#417;i c�t. B&#7897; d&#7909;ng c&#7909; bao g&#7891;m:  -          453 gram c�t  -          3 khu�n h�nh bao g&#7891;m: l�u &#273;�i c�t, cua bi&#7875;n v� r�a bi&#7875;n  -          1 x&#7867;ng x�c c�t  -          1 khay ch&#417;i c�t &#273;&#432;&#7907;c in h�nh ng&#7897; ngh&#297;nh', 2, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (22, N'Bộ Khảo Cổ Truy Tìm Xương Khủng Long - T.Rex', NULL, 399000.0000, N'Đồ chơi khoa học STEAM hàng đầu nước Mỹ của nhãn hàng DISCOVERY #MINDBLOWN, hợp tác cùng kênh truyền hình nổi tiếng DISCOVERY, đem lại cho bé những trải nghiệm khoa học ứng dụng vừa học, vừa chơi. Cho đến hiện nay, con người chỉ mới phát hiện được hóa thạch của hơn 700 loài khủng long khác nhau đã tuyệt chủng. BỘ KHẢO CỔ TRUY TÌM XƯƠNG KHỦNG LONG - TYRANNOSAURUS -REX (T.REX) cho bé trải nghiệm khảo cổ và khai quật để tìm ra vết tích của loài khủng long đã tiệt chủng.', 2, 1, 1, 30, N'null')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (23, N'Xe Scooter 3 Bánh Zipper Zycom 212-357 Hồng', NULL, 608000.0000, N'Scooter là một trong những món đồ không thể thiếu cho bé. Không chỉ giúp bé học cách giữ thăng bằng, phát triển vận động thô, kết hợp tay-mắt mà chơi scooter còn giúp bé phát triển các kỹ năng xã hội, tăng khả năng giao tiếp.  Zycom Zipper là một trong những lựa chọn phù hợp nhất cho bé từ 3-5 tuổi.  - Với thiết kế có chiều cao phù hợp, có 3 nấc điều chỉnh cùng bàn để chân rộng giúp bé dễ dàng điều khiển.  - Sản phẩm được làm bằng chất liệu nhựa siêu bền, có thể sử dụng trong nhiều năm liền  - Chiều dài và độ rộng của bàn để chân, tay lái giúp bé có tư thế ổn định, đảm bảo an toàn cũng như sự thoải mái khi di chuyển  - Phanh sau an toàn, thao tác đơn giản  - Bánh xe có đèn Led  - Dễ dàng tháo lắp  - Tải trọng tối đa 20kg', 3, 1, 1, 30, N'null')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (24, N'Xe Scooter 3 Bánh Royal Baby RO203M-3 Xanh Đen', NULL, 1259000.0000, N'Xe scooter 3 bánh Royal Baby RO203M-3 xanh đen cho bé từ 4-8 tuổi là sản phẩm bán chạy nhất trong dòng sản phẩm scooter. RoyalBaby là thương hiệu chuyên sản xuất xe đạp trẻ em được yêu thích nhất tại Bắc Âu và bán chạy nhiều năm liền trên Amazon. Nhờ tập trung vào mảng xe đạp trẻ em, xe scooter trẻ em, các sản phẩm của RoyalBaby được nghiên cứu và thiết kế để đảm bảo đạt chuẩn an toàn, tiện lợi và thoải mái nhất cho bé khi sử dụng.  Khi chơi scooter, bé được học và cải thiện rất nhiều kỹ năng cần thiết như: Phát triển vận động thô, các cơ lớn như tay, chân; phát triển khả năng phản xạ và sự kết hợp tay, mắt. Ngoài ra, tham gia các hoạt động ngoài trời còn giúp bé học được kỹ năng giao tiếp, kỹ năng xã hội,...', 3, 1, 1, 30, N'null')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (25, N'Trực Thăng Điều Khiển Từ Xa WOLF FORCE (Xanh Dương)', NULL, 799000.0000, N'CHINH PHỤC BẦU TRỜI CÙNG TRỰC THĂNG WOLF FORCE VECTO  Dòng trực thăng với pin sạc thế hệ mới cho thời gian chơi lên đến 22 phút hứa hẹn sẽ là mang đến những giờ bay đầy hào hứng cho các bé.  - Công nghệ tự giữ độ cao khiến máy bay luôn ở trạng thái lơ lửng giúp việc điều khiển dễ hơn rất nhiều  - Tự do điều khiển trực thăng bay tới, lui, quẹo trái, phải  - Nút nhấn tự động cất cánh/ hạ cánh  - Chế độ chỉnh bay nhanh, bay chậm  - Nút căn chỉnh trái phải  Thiết kế phóng khoáng, nhẹ nhàng tạo nên một vẻ ngoài trang nhã nhưng không kém phần mạnh mẽ. Cơ cấu khí động học hoàn hảo giúp trực thăng có thể chuyển động mượt mà.', 5, 1, 1, 30, N'null')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (26, N'Bệ Phóng Máy Bay Nâng Cấp (Xanh Lá)', NULL, 127000.0000, N'Bệ phóng may bay - Cùng bé chinh phục bầu trời" Bé có ước mơ trở thành một phi công cừ khôi, được nhào lộn, biểu diễn những vòng xoay đẹp mắt với chiếc máy bay của mình. Bé muốn chinh phục và khám phá những điều bí ẩn trên bầu trời trong xanh. Với bệ phóng máy bay, việc chinh phục bầu trời không còn là ước mơ nữa. Với cách chơi vô cùng đơn giản: Đặt máy bay lên bệ phóng sau đó nhấn nút, máy bay sẽ lao về phía trước tựa như một tên lửa. Chưa bao giờ bầu trời lại gần bé đến thế, ba mẹ ơi còn chần chờ gì nữa mà không sắm ngay cho chú ""Phi công"" nhỏ nhà mình một bệ phóng để bé có thể biểu diễn những vòng bay đẹp mắt ngay nào.', 5, 1, 1, 30, N'null')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (27, N'Đồ Chơi Nhận Dạng Hình Khối', NULL, 299000.0000, N'Đồ chơi FISHER PRICE nhận dạng hình khối FFC84 là hãng đồ chơi dành cho trẻ sơ sinh tại Mỹ. Đồ chơi của hãng giúp cho bé có thể vui chơi, thư giãn, học hỏi, tiếp cận, vận động, di chuyển phát triển thể lực, tính phối hợp và sự tự tin của bé. Từ đó giúp bé tăng khả năng nhận thức: khuyến khích bé cảm nhận, lắng nghe, chạm vào và nhận thức thông qua các trò chơi, kích thích sự tò mò tự nhiên, cũng như xây dựng khả năng sáng tạo và trí thông minh cho bé.', 3, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (28, N'Bữa Tiệc Nhạc Nước Câu Vịt - Màu Xanh', NULL, 249000.0000, N'ho bé từ 3 tuổi là một trong những sản phẩm được ưa chuộng nhất trong dòng đồ chơi giáo dục  PEEK A BOO là thương hiệu đồ chơi - đồ dùng trẻ em với mong muốn mang lại tất cả những sản phẩm cần thiết nhất trên từng chặng đường phát triển của bé với chất lượng tốt, an toàn, giá cả phải chăng.  Câu cá là món đồ chơi không hề xa lạ với bất kỳ ai trong chúng ta. Không chỉ rèn luyện tính khéo léo, kiên trì mà món đồ chơi này còn giúp bé có được những phút giây vui vẻ bên gia đình và bạn bè, giúp tăng khả năng giao tiếp, phát triển ngôn ngữ.  Bộ đồ chơi bữa tiệc nhạc nước câu vịt màu xanh của Peek A Boo là phiên bản nâng cấp của trò chơi câu cá cổ điển, nay được nâng cấp hơn với nhiều tính năng thú vị:  Bộ đồ chơi gồm: - Hồ nước - 2 cây - 2 cần câu - 6 chú vịt', 1, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (29, N'Ngôi Nhà Vui Học', NULL, 899000.0000, N'Peek-A-Boo là thương hiệu đồ chơi giáo dục, giúp bé phát triển não bộ và các giác quan thông quá các món đồ chơi hàng ngày. Bé sẽ được vừa học vừa chơi với những trò chơi hấp dẫn, vui nhộn của Ngôi nhà vui học.', 4, 1, 1, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (30, N'Mô Hình BU2MA PANGHU Can Be Everything Series2', NULL, 280000.0000, N'Chú hổ mập Panghu đã quay trở lại rồi đây. Để xem lần này chú hổ này sẽ bày ra trò gì nữa đây nhỉ. Lần này Panghu sẽ hóa trang thành những loài động vật khác nhau. Từ rồng, thỏ, gấu koala… hay chỉ đơn giản là một chú hổ thôi. Nhưng có vẻ hóa trang thành loài nào đi nữa, cái dáng vẻ mập mạp đó vẫn không lạc đi đâu được nhỉ. Bộ sưu tập gồm 6 thiết kế và 1 thiết kế quý hiếm.', 7, 1, 0, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (31, N'Mô Hình Panda Roll Kindergarten 52TOYS 6958985026451', NULL, 280000.0000, N'Khám phế thế giới thật tươi đẹp qua bộ sưu tập Panda Roll Kindergarten. Những chú gấu trúc Panda Roll đã đến tuổi đi học mẫu giáo rồi nè. Cùng Panda Roll làm quen với những điều mới mẻ qua những bài học ở trên lớp, làm quen những người bạn mới, hay tham gia vào những trò chơi thú vị. Những thiết kế dễ thương của chú gấu trúc nhỏ này chắc chắn sẽ khiến bạn thích mê cho mà xem.', 7, 1, 0, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (32, N'Đồ Chơi Mô Hình Disney Toy Story - Lotso''s Room 52 TOYS 6958985024259', NULL, 300000.0000, N'Knock knock! Tôi có thể vào bên trong được không nhỉ? Theo chân chú gấu dâu Lotso và khám phá căn phòng của chú ta với những bộ nội thất siêu đáng yêu. Thoải mái nằm chill trên sofa tại phòng khách và lắng nghe những bài nhạc tuyệt vời. Hay lăn vào bếp và nấu những món ngon tuyệt cú mèo. Mỗi thiết kế sẽ đi kèm với những phụ kiện nhỏ đáng yêu để trang trí hoặc chơi cùng. Bộ sưu tập gồm 6 thiết kế và 1 thiết kế hiếm.', 7, 1, 0, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (33, N'Combo Mô Hình 2023 NEW BOY CHARACTER ACTION FIGURE VOL.2 BANDAI CANDY CB-A2709559-4778', NULL, 459000.0000, N'Mô hình lắp ráp chất lượng cao đến từ Nhật Bản Chi tiết đặc biệt tinh xảo đến từ các nhân vật trong thế giới Gundam Nhật Bản.', 7, 1, 0, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (34, N'Mô Hình Sanrio Thiên Đường Đào Ngọt Ngào OTHER ART TOYS TTSR23YQM01', NULL, 359000.0000, N'Mùi quả đào chín mọng thật ngọt ngào làm sao. Bộ sưu tập sẽ đưa bạn vào thiên đường với sự kết hợp đáng yêu của các nhân vật Sanrio và hương đào ngào ngạt  Thiết kế bộ sưu tập bao gồm 6 mẫu thường và 1 mẫu hiếm (Secret) với tỷ lệ 1/96. Trong trường hợp mua cả SET 6 mẫu, nếu xuất hiện mẫu hiếm (Secret) thì sẽ mất 1 mẫu thường.  *Mẫu hiếm (Secret): Là những mẫu hiếm gặp và thường được làm mờ hoặc tô đen trên vỏ hộp  Mỗi nhân vật cao khoảng 8-10 cm và được làm bằng chất liệu PVC/ABS.', 7, 1, 0, 30, N'Staff')
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time], [name_staff]) VALUES (35, N'Combo Mô Hình MOBILE SUIT GUNDAM G-FRAME FA 05 BANDAI CANDY CB-A2678579-4778', NULL, 519000.0000, N'Mô hình sưu tập chất lượng cao đến từ Nhật Bản  Chi tiết đặc biệt tinh xảo đến từ các nhân vật trong thế giới Nhật Bản.', 7, 1, 0, 30, N'Staff')
SET IDENTITY_INSERT [dbo].[Toy] OFF
GO
INSERT [dbo].[Voucher] ([voucher_id], [voucher_name], [description], [date_expiration], [voucher_discount], [voucher_limit], [voucher_limit_price]) VALUES (1, N'pass_mon', N'Giảm giá 50% cho sản phẩm có tổng đơn dưới 500000đ', CAST(N'2024-04-27' AS Date), 0.5, 1000, 500000.0000)
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Payment] FOREIGN KEY([payment_id])
REFERENCES [dbo].[Payment] ([payment_id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Payment]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Toy] FOREIGN KEY([toy_id])
REFERENCES [dbo].[Toy] ([toy_id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Toy]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([user_id])
REFERENCES [dbo].[Account] ([user_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[Voucher] ([voucher_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Voucher]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Toy] FOREIGN KEY([toy_id])
REFERENCES [dbo].[Toy] ([toy_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Toy]
GO
ALTER TABLE [dbo].[Toy]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Toy] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [KidStore] SET  READ_WRITE 
GO
