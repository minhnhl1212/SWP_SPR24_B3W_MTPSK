USE [master]
GO
/****** Object:  Database [KidStore]    Script Date: 4/24/2024 10:19:53 PM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 4/24/2024 10:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[full_name] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[isActive] [bit] NULL,
	[role_id] [int] NULL,
	[payment_id] [nchar](10) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/24/2024 10:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](max) NULL,
	[user_id] [int] NULL,
	[isActive] [bit] NULL,
	[isDisable] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 4/24/2024 10:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[image_id] [int] IDENTITY(1,1) NOT NULL,
	[image_toy] [nvarchar](max) NULL,
	[toy_id] [int] NULL,
	[main] [bit] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 4/24/2024 10:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[news_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[date] [date] NULL,
	[description] [nvarchar](max) NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/24/2024 10:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[order_date] [date] NOT NULL,
	[voucher_id] [int] NOT NULL,
	[payment_type] [bit] NULL,
	[order_amount] [money] NULL,
	[name] [nvarchar](max) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](max) NULL,
	[status_order] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/24/2024 10:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[toy_id] [int] NULL,
	[OD_price] [money] NULL,
	[quantity] [int] NULL,
	[warranty_code] [nchar](10) NULL,
	[status] [nvarchar](max) NULL,
	[description_warranty] [nvarchar](max) NULL,
	[feedback] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/24/2024 10:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Toy]    Script Date: 4/24/2024 10:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Toy](
	[toy_id] [int] IDENTITY(1,1) NOT NULL,
	[toy_name] [nvarchar](max) NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[description] [nvarchar](max) NULL,
	[category_id] [int] NULL,
	[discount] [float] NULL,
	[warranty_time] [date] NULL,
	[isActive] [bit] NULL,
	[isDisable] [bit] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_Toy] PRIMARY KEY CLUSTERED 
(
	[toy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 4/24/2024 10:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[id] [int] NOT NULL,
	[voucher_name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[date_expiration] [date] NULL,
	[voucher_discount] [float] NULL,
	[voucher_limit] [int] NULL,
	[voucher_limit_price] [money] NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [isActive], [role_id], [payment_id]) VALUES (1, N'Admin', N'1', N'Admin', N'0123456789', N'abc,xyz', 1, 1, NULL)
INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [isActive], [role_id], [payment_id]) VALUES (2, N'Staff', N'2', N'Staff', N'0123456789', N'abc,xyz', 1, 2, NULL)
INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [isActive], [role_id], [payment_id]) VALUES (3, N'Customer', N'3', N'Customer', N'0123456789', N'abc,xyz', 1, 3, NULL)
INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [isActive], [role_id], [payment_id]) VALUES (4, N'son', N'1', N'Tran Thai Son', N'0123456789', N'abc,xyz', 1, 3, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (1, N'Đồ Chơi Theo Phim', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (2, N'Đồ Chơi Phương Tiện', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (3, N'Đồ Chơi Lắp Ghép', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (4, N'Đồ Dùng Học Tập', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (5, N'Đồ Chơi Sáng Tạo', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (6, N'Đồ Thời Trang', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (7, N'Đồ Chơi Vận Động', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (8, N'Thế Giới Động Vật', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (9, N'Kẹo Đồ Chơi', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (10, N'Búp Bê', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (11, N'Đồ Chơi Mô Phỏng', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (12, N'Thú Bông', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (13, N'Robot', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (14, N'Đồ Chơi Mầm Non', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (15, N'Đồ Chơi Bay', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (16, N'Game', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (17, N'Xe Đạp & Scooter', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (18, N'Đồ Dùng Cho Bé', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (19, N'Đồ Chơi Sưu Tập', 2, 1, 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (1, N'https://www.mykingdom.com.vn/cdn/shop/files/6941848233653_1.jpg?v=1711523586&width=990', 1, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (2, N'https://www.mykingdom.com.vn/cdn/shop/files/6941848252470_1.jpg?v=1711526016&width=493', 2, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (3, N'https://www.mykingdom.com.vn/cdn/shop/files/6941848266866_1.jpg?v=1711526236&width=493', 3, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (4, N'https://www.mykingdom.com.vn/cdn/shop/products/EU881140_1_eae02694-1706-4398-a22b-82bf911d18d5.jpg?v=1706973517&width=493', 4, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (5, N'https://www.mykingdom.com.vn/cdn/shop/products/ys3037a_2_0420bf11-888e-40fb-9163-da4f149b90b6.jpg?v=1706987286&width=493', 5, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (6, N'https://www.mykingdom.com.vn/cdn/shop/products/R79300_1.jpg?v=1706970473&width=1100', 6, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (7, N'https://www.mykingdom.com.vn/cdn/shop/products/48400-_2.jpg?v=1684891367&width=493', 7, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (8, N'https://www.mykingdom.com.vn/cdn/shop/products/5588-606_1.jpg?v=1684958754&width=493', 8, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (9, N'https://www.mykingdom.com.vn/cdn/shop/products/cb-a2678579-4778_1.jpg?v=1707218470&width=493', 9, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (10, N'https://www.mykingdom.com.vn/cdn/shop/products/154006_13_c189defe-3e75-4a50-9e6f-1aca060d2e6a.jpg?v=1706982766&width=493', 10, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (11, N'https://www.mykingdom.com.vn/cdn/shop/products/cb-a2709559-4778_3.jpg?v=1707218510&width=1100', 11, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (12, N'https://www.mykingdom.com.vn/cdn/shop/files/mykingdom-balo-di-hoc-BC0105_2.jpg?v=1711361626&width=493', 12, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (13, N'https://www.mykingdom.com.vn/cdn/shop/products/mykingdom-balo-di-hoc-bp1104_1.jpg?v=1706971008&width=493', 13, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (14, N'https://www.mykingdom.com.vn/cdn/shop/products/bm1110-23.11.2023.jpg?v=1706970963&width=493', 14, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (15, N'https://www.mykingdom.com.vn/cdn/shop/products/212-358_2_1.jpg?v=1684983259&width=1100', 15, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (16, N'https://www.mykingdom.com.vn/cdn/shop/products/212-357_1.jpg?v=1684983288&width=1100', 16, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (17, N'https://www.mykingdom.com.vn/cdn/shop/products/rb12-18-nentrang_1.jpg?v=1706972457&width=493', 17, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (18, N'https://www.mykingdom.com.vn/cdn/shop/files/1bb536b3b285522271bb07d47ef73bc1.jpg?v=1706768565&width=990', 18, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (19, N'https://www.mykingdom.com.vn/cdn/shop/products/vtf8_3.jpg?v=1685019508&width=990', 19, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (20, N'https://www.mykingdom.com.vn/cdn/shop/products/vta26_3__1_fabe24f3-081c-474a-8bb2-52d96ef2ae65.jpg?v=1706986053&width=990', 20, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (21, N'https://www.mykingdom.com.vn/cdn/shop/products/6941448698388.jpg?v=1685129943&width=990', 21, 1)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([news_id], [title], [image], [date], [description], [user_id]) VALUES (1, N'FLASH SALE ĐỘC QUYỀN - NHẬN LIỀN DEAL KHỦNG', N'https://www.mykingdom.com.vn/cdn/shop/articles/flash-sale-doc-quyen-nhan-lien-deal-khung_thumbnail.jpg?v=1712634980', CAST(N'2024-04-22' AS Date), N'Sale khủng duy nhất 3 ngày từ 10/4 - 12/4 tại Mykingdom dành cho các khách hàng yêu quý. Rất nhiều đồ chơi giảm giá đến 35% từ GABBY DOLLHOUSE, RASTAR, BEYBLADE 6,... đang chờ bạn đấy. Đừng chần chờ gì mà hãy click ngay vào đường link: https://www.mykingdom.com.vn/pages/flash-sale và bắt đầu mua sắm nào!  Xe Lamborghini Sesto Elemento Thương hiệu RASTAR  SKU R53700  Giảm 35% chỉ còn 467.000 VNĐ (Giá gốc 719.000 VNĐ)  Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.  Xe Lamborghini Sesto Elemento có bản quyền chính hãng từ thương hiệu xe Lamborghini nổi tiếng toàn cầu. Xe được mô phỏng hoàn hảo từ xe Lamborghini Sesto Elemento thật theo tỉ lệ 1:18, và được sản xuất từ nhựa và kim loại cao cấp, vô cùng chắc chắn và tinh xảo. Ngoài trưng bày, bé có thể điều khiển xe chạy trên đường đua và trình diễn các pha ôm cua, vượt chướng ngại vật cực đỉnh.', 2)
INSERT [dbo].[News] ([news_id], [title], [image], [date], [description], [user_id]) VALUES (2, N'Ý Nghĩa Tết Thiếu Nhi 1/6 Và Các Hoạt Động Trong Ngày Lễ', N'https://www.mykingdom.com.vn/cdn/shop/articles/tet-thieu-nhi-1-6_thumbnail.jpg?v=1713781048', CAST(N'2024-04-22' AS Date), N'Tết Thiếu nhi 1/6 là ngày lễ dành cho các em nhỏ trên toàn thế giới, là dịp để các bé được vui chơi thỏa thích và nhận những món quà thật ý nghĩa từ những người thân yêu. Tuy dịp lễ này đã rất phổ biến nhưng liệu bạn có biết những hoạt động thú vị trong ngày lễ này cũng như ngày Quốc tế Thiếu nhi dành cho trẻ em từ bao nhiêu tuổi chưa? Nếu chưa thì hãy cùng Mykingdom tìm hiểu qua bài viết sau đây nhé.  Ý Nghĩa Của Tết Thiếu Nhi 1/6  Tết Thiếu Nhi là cơ hội để trẻ em được vui chơi thỏa thích trong ngày dành riêng cho mình. Các bé sẽ được ba mẹ đưa đến những địa điểm mà mình yêu thích, được nhận những lời chúc đầy yêu thương và ý nghĩa từ gia đình. Tất cả những điều đó không chỉ khiến trẻ em trên thế giới trở nên hạnh phúc, mà còn góp phần to lớn trong hành trình nuôi dưỡng một tâm hồn giàu đẹp và tinh thần mạnh mẽ cho trẻ em.', 2)
INSERT [dbo].[News] ([news_id], [title], [image], [date], [description], [user_id]) VALUES (3, N'Gợi Ý 5 Món Quà 1/6 Cho Bé Trai Yêu Xe Đồ Chơi', N'https://www.mykingdom.com.vn/cdn/shop/articles/qua-1-6-cho-be-trai_thumbnail.jpg?v=1713756618', CAST(N'2024-04-22' AS Date), N'Xe đồ chơi luôn là đam mê của các bé trai, giúp con tìm hiểu về phương tiện giao thông cũng như thỏa mãn đam mê học hỏi về các dòng xe. Nếu ba mẹ đang phân vân việc chọn quà 1/6 cho bé trai giữa các loại xe điều khiển, xe die-cast, xe xe mô hình… thì tham khảo ngay 5 gợi ý của Mykingdom.  Đồ Chơi Xe Cá Mập Bơi Trong Nước- Chạy Trên Cạn (Xanh) VECTO VT16A01 Một chiếc xe điều khiển từ xe vừa có thể chạy trên cạn, vừa có thể chơi đùa dưới nước thì bé nào mà không thích phải không nào? Mẫu xe vô cùng độc lạ của nhà VECTO hứa hẹn sẽ là món quà 1/6 cho bé trai hoàn hảo. Đồ Chơi Xe Cá Mập Bơi Trong Nước- Chạy Trên Cạn (Xanh) có ngoại hình như một con cá mập thực thụ, với động cơ mạnh mẽ vượt mọi địa hình. Khả năng chống thấm nước của sản phẩm cũng cực kỳ đỉnh cao, cho phép bé vui chơi mà không lo ngại gì.', 2)
INSERT [dbo].[News] ([news_id], [title], [image], [date], [description], [user_id]) VALUES (4, N'Flash Sales Bùng Nổ - Cả Rổ Quà Xinh', N'https://www.mykingdom.com.vn/cdn/shop/articles/Flash-Sales-bung-no-ca-ro-qua-xinh_thumbnail.jpg?v=1713497811', CAST(N'2024-04-22' AS Date), N'Tưng bừng tham gia Flash Sales độc quyền trên website Mykingdom từ ngày 20/4 - 22/4 ngay thôi nào! Hàng loạt đồ chơi giảm giá đến 50% đang chờ đợi bạn và bé cưng. Nhanh tay bỏ vào giỏ hàng đồ chơi của các thương hiệu: DOLLSWORLD, KINETIC SAND, MINIFORCE,... Chi tiết chương trình tham khảo tại: https://www.mykingdom.com.vn/pages/flash-sale   Siêu Robot Hộ Thần Tam Long Hợp Thể Trioh V MINIFORCE 503010M Thương hiệu MINIFORCE  SKU 503010M  Giảm 50% chỉ còn 670.000 VNĐ (Giá gốc 1.339.000 VNĐ)  Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.     Siêu Robot Hộ Thần Tam Long Hợp Thể Trioh V là đồ chơi được mô phỏng từ nhân vật Tam Long Hợp Thể - Hộ Thần Trioh V trong bộ phim Miniforce V - Biệt đội siêu nhân nhí. Sản phẩm giúp bé thỏa sức sáng tạo và nhập vai cùng 2 kiểu biến hình cực đỉnh. Trẻ dễ dàng biến hình siêu robot sang 3 xe khủng long (khủng long bạo chúa, ba sừng, phẩy sừng) và ngược lại.', 2)
INSERT [dbo].[News] ([news_id], [title], [image], [date], [description], [user_id]) VALUES (5, N'Ngất Ngây Với Loạt Quà 1/6 Cho Bé Gái Siêu Đáng Yêu Và Hữu Ích', N'https://www.mykingdom.com.vn/cdn/shop/articles/mykingdom-qua-1-6-cho-be-gai-image.jpg?v=1686018767', CAST(N'2024-04-22' AS Date), N'Quốc tế Thiếu nhi 1/6 là dịp bé được vui chơi thỏa thích, nhận những lời chúc tốt đẹp cùng những món quà bất ngờ từ người thân. Tuy nhiên, không ít phụ huynh băn khoăn là nên mua quà gì nhân ngày 1/6 để đảm bảo vừa ý nghĩa, hữu ích mà lại vừa phù hợp với bé.  Ở bài viết trước, Mykingdom đã gợi ý đến ba mẹ những món quà 1/6 ý nghĩa cho bé trai. Còn bài này sẽ là top 8 món quà 1/6 cho bé gái đáng mua nhất để ba mẹ tham khảo.  Túi Purse Pet Mèo Con Đáng Yêu Xuống phố tự tin hơn với Túi Purse Pet Mèo Con Đáng Yêu nào. Đây sẽ là món quà 1/6 cho bé gái sành điệu, thời thượng vì chiếc túi có thiết kế cực xinh. Túi có màu hồng pastel, thân túi được phủ một lớp lông mềm mại. Túi được mô phỏng theo một bạn mèo con, với dôi tai nhỏ bằng da màu hồng và đôi mắt to tròn, long lanh hệt như trong truyện tranh. Không chỉ là phụ kiện thời trang, sản phẩm còn có hơn 30 âm thanh làm nũng đáng yêu để bé tương tác. Chiếc túi mèo con còn tích hợp 3 chế độ âm thanh mới với giai điệu nhạc vui nhộn, luôn sẵn sàng chill cùng bé ở mọi nơi.', 2)
INSERT [dbo].[News] ([news_id], [title], [image], [date], [description], [user_id]) VALUES (6, N'Có Gì Trong Bộ Ảo Thuật Eddy''S Magic 50 Chiêu?', N'https://www.mykingdom.com.vn/cdn/shop/articles/ao-thuat-eddys-magic-50-chieu_thumbnail.jpg?v=1713350545', CAST(N'2024-04-22' AS Date), N'Ảo Thuật Eddy''S Magic 50 Chiêu là một sản phẩm cực hot tại Mykingdom, thỏa mãn đam mê trở thành ảo thuật gia của các bạn nhỏ. Với các đạo cụ chuyên nghiệp cùng DVD hướng dẫn cực kỳ chi tiết, sản phẩm đã giúp rất nhiều bạn nhỏ đánh lừa đôi mắt của người xem. Không chần chờ gì nữa, chúng ta hãy cùng khám phá xem bộ đồ chơi này có gì nhé!  Các Trò Ảo Thuật Trong Đồ Chơi Ảo Thuật Eddy''S Magic 50 Chiêu Bộ dụng cụ Ảo thuật Eddy’s Magic 50 chiêu sáng tạo gồm có các loại đạo cụ như: Chiếc mũ ma thuật, gậy phép, bộ bài ảo thuật, xúc xắc, hộp ma thuật, ngón tay giả và ruy băng, cùng một số vật dụng khác đang chờ bé đập hộp và khám phá.  Trẻ có thể xem DVD đi kèm có cung cấp hướng dẫn chi tiết về cách thức thực hiện các chiêu ảo thuật, cũng như các mẹo để thực hành ảo thuật dễ dàng và thú vị hơn bao giờ hết. Một số trò ảo thuật nổi tiếng mà trẻ có thể thực hiện với bộ đồ chơi này như:   Chú thỏ chui ra từ chiếc mũ của ảo thuật gia Rút dải ruy băng ra từ tay không Đồng xu đi xuyên qua khối rắn bằng đồng Làm khăn biến mất trong lòng bàn tay Ảo thuật với các lá bài Kéo dài ngón tay. Một bộ đồ chơi chứa đến 50 trò ảo thuật, giúp việc sáng tạo và thực hành là không giới hạn. Phụ huynh có thể thử nghiệm và tìm hiểu các thủ thuật từ đơn giản đến phức tạp với bé nhà mình để hỗ trợ con lúc cần thiết, từ đó tạo ra những kỷ niệm đáng nhớ và gắn kết thêm tình cảm trong gia đình.', 2)
INSERT [dbo].[News] ([news_id], [title], [image], [date], [description], [user_id]) VALUES (7, N'KHUYẾN MÃI TƯNG BỪNG - MỪNG ĐẠI LỄ 30/4', N'https://www.mykingdom.com.vn/cdn/shop/articles/khuyen-mai-tung-bung-mung-dai-le-30-4_thumbnail.jpg?v=1713326599', CAST(N'2024-04-22' AS Date), N'Mua sắm đồ chơi để bé chơi lễ với giá giảm đến 40% cùng Mykingdom. Chương trình diễn ra từ 18/4 - 30/4, với ưu đãi cực khủng từ các thương hiệu: PEEK A BOO , PLAYDOH, MAISTO,... Bạn có thể tham gia chương trình bằng cách click vào đường link: https://www.mykingdom.com.vn/collections/mung-dai-le-30-thang-4   Thảm Xốp Lắp Ghép Cho Bé PEEK A BOO PAB6868 Thương hiệu PEEK A BOO  SKU PAB6868  Giảm 40% chỉ còn 221.000 VNĐ (Giá gốc 369.000 VNĐ)  Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.  Khi bé đang tập bò hoặc tập đi thì ba mẹ nào cũng muốn tạo nên một không gian để con thoải mái vận động mà không lo bị ngã đau. Để giải quyết vấn đề đó, Mykingdom cung cấp Đồ Chơi PEEK A BOO Thảm Xốp Lắp Ghép Cho Bé. Bề mặt dày 1cm chống trượt, thiết kế hình con vật đáng yêu sẽ đem đến những giờ vui chơi thoải mái cho trẻ.', 2)
INSERT [dbo].[News] ([news_id], [title], [image], [date], [description], [user_id]) VALUES (8, N'Top 4 Trò Ảo Thuật Đồng Xu Đơn Giản Cho Trẻ Em', N'https://www.mykingdom.com.vn/cdn/shop/articles/ao-thuat-dong-xu_thumbnail.jpg?v=1713262518', CAST(N'2024-04-22' AS Date), N'Ảo thuật đồng xu vốn hết sức quen thuộc với mọi người, vừa dễ kiếm vật liệu mà các trò ảo thuật còn cực kỳ đa dạng. Vậy nên các trò ảo thuật với đồng xu chưa bao giờ là lỗi thời. Khác với ảo thuật bài, ảo thuật đồng xu không có bất kỳ khái niệm toán học nào, chỉ đơn thuần là kỹ năng và sự kiên trì tập luyện của nhà ảo thuật. Bởi lẽ đó, để thực hiện được trò ảo thuật một cách mượt mà nhất thì bạn phải bỏ ra rất nhiều thời gian để tập. Thế nhưng, có một số đạo cụ ảo thuật giúp những trò ảo thuật trở nên đơn giản hơn mà không tốn quá nhiều thời gian tập luyện, bạn hãy cùng Mykingdom khám phá nhé!  Đồ Chơi Trẻ Em: Bộ 3 Trò Ảo Thuật Đồng Xu Bộ 3 Trò Ảo Thuật Đồng Xu sẽ giúp bé thực hiện được 3 trò ảo thuật cơ bản với đồng xu có kích thước lớn. Bé có thể dễ dàng qua mặt người xem với các trò ảo thuật như đồng xu ma thuật hay kết hợp đồng xu,... Sau khi thành thạo và có thể biểu diễn được cho nhiều người xem, bé sẽ ngày càng trở nên tự tin và mong muốn được học hỏi nhiều hơn về ảo thuật đấy.', 2)
INSERT [dbo].[News] ([news_id], [title], [image], [date], [description], [user_id]) VALUES (9, N'Ý Tưởng Mua Quà Tặng 1/6 Cho Bé Phát Triển Kỹ Năng Và Tư Duy', N'https://www.mykingdom.com.vn/cdn/shop/articles/mykingdom-mua-qua-1-6-cho-be-image.jpg?v=1686018723', CAST(N'2024-04-22' AS Date), N'Quốc tế Thiếu nhi hay còn gọi là Tết thiếu nhi diễn ra vào ngày 1/6 hằng năm. Đây là dịp người lớn thể hiện tình cảm, sự quan tâm của mình dành cho bé thông qua những món quà tặng 1/6 cũng như những lời chúc tốt đẹp hay những hoạt động vui chơi lý thú. Vậy ba mẹ đã có ý tưởng gì để tạo bất ngờ cho bé vào ngày đặc biệt này chưa? Nếu vẫn còn phân vân, thì ba mẹ đừng bỏ qua những gợi ý mua quà tặng 1/6 cho bé trai và bé gái dưới đây nhé!  Quà Tặng 1/6 Cho Bé Trai Các bé trai thường có tính cách năng động, tinh nghịch. Vì vậy khi mua quà tặng 1/6 cho bé trai, ba mẹ có thể chọn những món đồ chơi như xe ô tô, đồ chơi lắp ráp, đồ chơi khoa học, đồ chơi ảo thuật...  Những món đồ chơi này được hầu hết các bé trai yêu thích. Chúng không chỉ mang đến những giờ vui chơi vui nhộn mà còn giúp bé tăng cường vận động, sự khéo léo, phát triển tư duy và kích thích sáng tạo.  Xe Điều Khiển Từ Xa Rastar Audi R8 New Version Nhắc đến đồ chơi cho bé trai nhất định không bỏ qua đồ chơi xe ô tô điều khiển. Loại đồ chơi này khiến các bé trai mê tít bởi thiết kế chân thực như xe thật, chức năng điều khiển thông minh cùng màu sắc bắt mắt.  Với đồ chơi Xe R/C 1:14 Ferrari Laferrari Aperta Màu Đỏ RASTAR R75800 của Rastar, bé có thể tự tay điều khiển chiếc xe tiến, lùi, rẽ trái, rẽ phải tới bất cứ đâu bé muốn. Hơn nữa, món đồ chơi này còn khơi dậy niềm đam mê khám phá thế giới, tăng cường vận động cho bé rất hiệu quả.', 2)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (1, 3, CAST(N'2024-04-23' AS Date), 1, 1, 716040.0000, N'Tran Thai Son', N'0382818421', N'hcm', N'Đã Giao Hàng')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (2, 3, CAST(N'2024-04-23' AS Date), 1, 1, 83420.0000, N'Tráº§n ThÃ¡i SÆ¡n', N'0392859431', N'hcm', N'Đã Giao Hàng')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (3, 3, CAST(N'2024-04-24' AS Date), 1, 1, 958000.0000, N'son', N'0939291029', N'hcm', N'Đang Xử Lí')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (4, 3, CAST(N'2024-04-24' AS Date), 1, 0, 487860.0000, N'Son', N'0392948234', N'hcm', N'Đã Giao Hàng')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (5, 3, CAST(N'2024-04-24' AS Date), 1, 0, 36400.0000, N'Tien', N'0329284928', N'HCM', N'Đã Giao Hàng')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (6, 3, CAST(N'2024-04-24' AS Date), 1, 0, 255750.0000, N'Tien', N'0392918234', N'hcm', N'Đã Giao Hàng')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (7, 3, CAST(N'2024-04-24' AS Date), 1, 0, 266000.0000, N'a', N'1111111111', N'a', N'Từ Chối Bán Hàng')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty], [feedback]) VALUES (1, 1, 11, 358020.0000, 2, N'DCS[NTASWg', N'Đang Xử Lí', NULL, NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty], [feedback]) VALUES (2, 2, 5, 83420.0000, 1, N'kbEa`ZhfBU', N'Đã Nhận Hàng', NULL, NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty], [feedback]) VALUES (3, 4, 9, 487860.0000, 1, N'AYbBAODIPb', N'Không Có Yêu Cầu Bảo Hành', NULL, NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty], [feedback]) VALUES (4, 5, 4, 36400.0000, 1, N'hUKhFXZb`I', N'Không Có Yêu Cầu Bảo Hành', NULL, NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty], [feedback]) VALUES (5, 6, 2, 255750.0000, 1, N'WLXMYO`\KQ', N'Đã Giao Hàng', NULL, NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty], [feedback]) VALUES (6, 7, 1, 266000.0000, 1, N'aDQeIPdRKU', N'Không Có Yêu Cầu Bảo Hành', NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'Staff')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (3, N'Customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Toy] ON 

INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (1, N'Mô Hình Đồ Chơi Detective Conan Carnival POP MART', NULL, 280000.0000, N'Mô Hình Detective Conan Carnival 6941848233653 Cùng hoà nhập vào lễ hội đầy tưng bừng cùng các nhân vật trong bộ truyên tranh nổi tiếng Thám tử lừng danh Conan. Bạn sẽ được chiêm ngưỡng các bộ trang phục vô cùng ấn tượng của các nhân vật, được chìm đắm vào các hoạt động và câu chuyện mà mỗi nhân vật mang lại.

Bộ sưu tập gồm 12 nhân vật thường và 1 nhân vật hiếm.

Kích thước: 6-9cm

Chất liệu: nhựa PVC/ABS', 1, 0.95, CAST(N'2024-07-22' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (2, N'Mô Hình Universal Kung Fu Panda', NULL, 275000.0000, N'Các chú gấu Panda trong Kung Fu Panda được khắc hoạ thành các mô hình vô cùng đáng yêu và thú vị. Mỗi chú gấu diễn tả một tư thế, hành động có trong bộ phim nổi tiếng này. Với mỗi mô hình sẽ mang ý nghĩa khác nhau, chắc chắn sẽ giúp bạn liên tưởng đến ngay câu chuyện được nhắc đến trong bộ phim. Bộ sưu tập gồm 9 nhân vật thường và 1 nhân vật hiếm. Kích thước: 6-9cm Chất liệu: nhựa PVC/ABS', 19, 0.93, CAST(N'2024-06-23' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (3, N'Mô Hình Dimoo Animal Kingdom', NULL, 260000.0000, N'Cậu bạn Dimoo với tạo hình vô cùng ngầu và ấn tượng trong Vương quốc động vật. Một cậu bạn được khoác lên mình một nhân vật khác nhau, mang trong mình một câu chuyện cần được khám phá. Bộ sưu tập gồm 12 nhân vật thường và 1 nhân vật hiếm.

Kích thước: 7-8cm Chất liệu: PVC/ABS', 1, 0.97, CAST(N'2024-06-25' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (4, N'Xe Thú Cưng Vui Nhộn - Ếch Crash', NULL, 40000.0000, N'Rev and roll là bộ phim hoạt hình có nội dung vô cùng độc đáo- kể về chuyến phiêu lưu mạo hiểm của những bạn nhỏ và chiếc siêu xe thú cưng của mình.

Xe thú cưng vui nhộn - Ếch Crash

- Xe thú cưng vui nhộn - Ếch Crash là sự kết hợp độc đáo giữa xe cứu hỏa và nhân vật với Crash với tinh cách nghịch ngợm, hiếu động.
- Xe thú cưng vui nhộn – Ếch Crash có khả năng đực biệt, khi lưỡi của chú ếch Crash chạm đất sẽ giúp xe nhảy lên, vượt chướng ngại vật phía trước.
- Sưu tập ngay trọn bộ 5 nhân vật: Chó Rumble, Mèo Alley, Voi Spritzer, Ếch Spritzer, Ngựa Tipper trong phim hoạt hình được các bé yêu thích Rev and Roll.
- Thiết kế đẹp mắt, với chất liệu nhựa cao cấp.

Thông tin sản phẩm:
- Sản phẩm sử dụng nhựa cao cấp, đảm bảo an toàn cho bé.
- Sản phẩm không sử dụng Pin', 1, 0.91, CAST(N'2024-07-27' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (5, N'Xe Buýt Bánh Đà Nhún Nhảy GoGo Bus', NULL, 97000.0000, N'Gogo Bus - Xe buýt biến hình thông minh là phim hoạt hình được yêu thích của các bạn nhỏ với chiếc xe biến hình thành nhiều phương tiện giao thông khác nhau Xe bánh đà nhún nhảy GoGo Bus với chức năng:

- Đẩy, xe chạy nhanh về phía trước

- Xe vừa chạy, vừa nhún nhảy tạo độ vui nhộn cho bé

Giúp bé khám phá phương tiện giao thông cùng với hoạt động của bánh đà

Xe được làm bằng chất liệu nhựa cao cấp

Tăng trí tưởng tượng cho bé và phát triển vận động tinh', 1, 0.86, CAST(N'2024-08-10' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (6, N'Xe Điều Khiển 1:24 Ferrari FXXK Evo', NULL, 383000.0000, N'Xe điều khiển Ferrari FXXK Evo R79300 của thương hiệu RASTAR, được mua bản quyền và mô phỏng lại chính xác với tỷ lệ thu nhỏ 1:24. Sở hữu thiết kế chân thực như một chiếc xe ngoài đời thật, sản phẩm không chỉ là món đồ chơi giải trí sau những giờ học tập mệt mỏi mà còn giúp bé có thêm kiến thức về các loại phương tiện giao thông.

Siêu xe điều khiển RASTAR R79300 với các chức năng mạnh mẽ, hình dáng lôi cuốn, là một người bạn tuyệt vời không thể thiếu trong bộ sưu tập “xế hộp” của bé. Sản phẩm có các đặc điểm nổi bật sau:

Mô hình xe điều khiển được sản xuất theo quy trình chất lượng cao, tuân thủ các tiêu chuẩn nghiêm ngặt của châu Âu, hoàn toàn không chứa chất gây hại. 
Xe có màu sắc nổi bật, hình dáng sang trọng, mạnh mẽ, giúp kích thích thị giác của bé.
Thiết kế an toàn, không góc cạnh, không làm trầy xước da bé.
Xe có thể tiến, lùi, rẽ trái, rẽ phải dễ dàng bằng điều khiển từ xa, tự tay điều khiển chiếc xe mình yêu thích sẽ làm cho các bạn nhỏ vô cùng thích thú.
Lốp xe làm bằng cao su nguyên chất, an toàn và có độ bám tốt trên sàn.
Xe và điều khiển sử dụng pin 2A dễ dàng thay và có thời gian sử dụng lâu.', 1, 0.99, CAST(N'2024-06-29' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (7, N'Xe Điều Khiển BMW I8 Bạc', NULL, 479000.0000, N'Xe điều khiển BMW i8 Bạc RASTAR R48400-2 là sản phẩm đồ chơi được thiết kế theo tỉ lệ 1:24, nhỏ hơn 24 lần so với thực tế. Tuy nhiên các chi tiết đều đầy đủ từ nội thất cho đến bên ngoài, mang lại cảm giác như thật cho người chơi.


Mô hình có trục bánh xe trước, có thể xoay tròn 360 độ, bé có thể điều khiển xe một cách mượt mà đầy ấn tượng. Bé dễ dàng điều khiển thông qua tay cầm một cách dễ dàng, xe tiến lùi, sang trái sang phải tùy ý thích của bé. Từ đó, sản phẩm giúp bé rèn luyện khả năng khéo léo của đôi bàn tay.

Xe điều khiển BMW i8 Bạc được yêu thích bởi những đặc điểm nổi bật sau:


Kích thước bao bì: 38.5x12x10 cm, trọng lượng 300 gram, gọn nhẹ. Thích hợp cho bé mang theo đến bất cứ đâu.
Màu sắc bóng loáng, kiểu dáng hiện đại và cá tính giúp bé có những giờ phút thư giãn cùng người thân và bạn bè mỗi ngày.
Chất liệu sử dụng là nhựa và kim loại cao cấp, không chứa chất độc hại, an toàn và thân thiện cho mọi lứa tuổi.
Xe và bộ sạc có dùng pin. Không kèm theo mô hình.
Sản phẩm được khuyên dành cho các bé trai trên 6 tuổi.

Xe điều khiển với thiết kế sang trọng, lịch lãm đầy mạnh mẽ sẽ là món quà mà con yêu của bạn yêu thích nhất. Nhanh tay đặt hàng để sở hữu siêu xe điều khiển nhé!', 1, 1, CAST(N'2024-04-29' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (8, N'Siêu Xe Tương Lai 2050 (Trắng)', NULL, 250000.0000, N'Bộ đồ chơi lắp ráp xe giúp bé phát triển kỹ năng vận động tinh thông qua các thao tác vặn, mở ốc khi chơi. Ngoài ra, bé còn rèn luyện được tư duy logic, kỹ năng khéo léo khi mày mò lắp ráp hơn 25 mảnh ghép thành 1 chiếc xe hoàn chỉnh. Bộ sản phẩm bao gồm cả vít vặn rất vừa tay cho bé ở độ tuổi preschool, nhựa chơi được trong nhà và ngoài trời.
Với nhiều chủ đề và chức năng khác nhau, hãy sưu tập đủ bộ để có thể giáo dục bé về các phương tiện có thật trong cuộc sống', 2, 0.98, CAST(N'2024-05-01' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (9, N'Combo Mô Hình MOBILE SUIT GUNDAM G-FRAME FA 05 BANDAI CANDY', NULL, 519000.0000, N'Mô hình sưu tập chất lượng cao đến từ Nhật Bản

Chi tiết đặc biệt tinh xảo đến từ các nhân vật trong thế giới Nhật Bản.', 3, 0.94, CAST(N'2024-07-19' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (10, N'Bộ Trang Bị ZW40 GRAVITY CANNON UNIT', NULL, 181000.0000, N'Bộ trang bị ZW40 Gravity Cannon Unit 154006 là các phụ kiện trang bị thêm cho các mô hình Chiến Binh Thú Zoids. Sản phẩm phụ kiện đồ chơi được sản xuất dựa theo bộ phim hoạt hình Thú Vương Đại Chiến (Chiến Binh Thú) ZOIDS. Đây là một series anime dựa trên dòng đồ chơi mô hình viễn tưởng cùng tên của công ty Takara Tomy, xoay quanh các sinh vật siêu thú khổng lồ.


Bộ trang bị ZW40 Gravity Cannon Unit 154006 là phụ kiện không thể thiếu cho những ai đam mê với các chiến binh ZOIDS bởi vì:

Sản phẩm được làm bằng chất liệu nhựa cao cấp, không chứa chất độc hại.Áp dụng cách lắp ráp từng chi tiết và di chuyển cử động riêng biệt với từng sản phẩm
Mô hình lắp ráp theo kiểu bấm khớp, không cần dụng cụ, không dùng keo dán.
Mỗi người máy Zoids đều có sức mạnh và khả năng xuất chiêu di chuyển riêng biệt, với bộ trang bị, chiến binh của bạn sẽ gia tăng sức chiến đấu mạnh mẽ hơn.', 3, 0.75, CAST(N'2024-06-13' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (11, N'Combo Mô Hình 2023 NEW BOY CHARACTER ACTION FIGURE VOL.2 BANDAI CANDY', NULL, 459000.0000, N'Mô hình lắp ráp chất lượng cao đến từ Nhật Bản
Chi tiết đặc biệt tinh xảo đến từ các nhân vật trong thế giới Gundam Nhật Bản.', 3, 0.78, CAST(N'2024-07-27' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (12, N'Ba Lô Easy Go - Biệt Đội Khủng Long Xanh', NULL, 406000.0000, N'Hình ảnh khủng Long và những người cực ngầu trong bộ sưu tập Biệt Đội Khủng Long chắc chắn sẽ khiến các bé cực kì hào hứng & thích thú. Đây chính là mẫu sản phẩm vô cùng phù hợp cho các bé trong các dịp từ đi học - đến đi chơi.
Đây là thiết kế độc quyền từ Châu Âu, thuộc nhãn hàng Clever Hippo - là thương hiệu cao cấp chuyên về ba lô, văn phòng phẩm và phụ kiện với chất lượng luôn đặt lên hàng đầu.
Bên cạnh thiết kế độc đáo, dòng ba lô thời trang Easy Go còn có các đặc điểm nổi bật sau:
- Dáng ba lô nhỏ gọn và thời trang.
- Trọng lượng siêu nhẹ đi cùng chất liệu vải trượt nước, có thể dễ dàng vệ sinh.
- Một ngăn hông may vải kháng khuẩn giúp các bé cất giữ khẩu trang an toàn và dễ dàng.
- Các ngăn chứa rộng rãi và phân bổ hợp lí, đựng vừa kích thước khổ A4.
- Có ngăn chứa bảng tên.
- Kích thước sản phẩm: 13 x 29 x 40 (cm). Thích hợp cho bé từ lớp 1 đến lớp 5.
- Trọng lượng: 450gram.', 4, 0.9, CAST(N'2024-10-25' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (13, N'Ba Lô Fancy - My Little Pony Những Người Bạn Đáng Yêu', NULL, 322000.0000, N'Mẫu ba lô Fancy chủ đề My Little Pony với tông màu hồng yêu thích của các bé gái, cùng với hình ảnh những cô nàng ngựa Pony xinh xắn, được dập nổi 3D vô cùng nổi bật. Kích thước sản phẩm: 29 x 16 x 35 (cm). Thích hợp cho bé từ lớp 1 đến lớp 3

Trọng lượng: 800g', 1, 0.87, CAST(N'2024-09-03' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (14, N'Ba Lô Compact - Siêu Xe Dũng Mãnh', NULL, 274000.0000, N'Mẫu ba lô với hình ảnh siêu xe trên đường đua rực lửa, cùng tông màu đỏ mạnh mẽ - cực kỳ thích hợp cho các bé có niềm đam mê với xe.

 

Kích thước ba lô: 28 x 13 x 38.5 (cm). Thích hợp cho bé từ lớp 1 đến lớp 6

 

Trọng lượng: 600g

 ', 1, 0.87, CAST(N'2024-09-18' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (15, N'Xe Scooter 3 Bánh Zipper Zycom 212-357 Hồng', NULL, 608000.0000, N'Scooter là một trong những món đồ không thể thiếu cho bé. Không chỉ giúp bé học cách giữ thăng bằng, phát triển vận động thô, kết hợp tay-mắt mà chơi scooter còn giúp bé phát triển các kỹ năng xã hội, tăng khả năng giao tiếp.

Zycom Zipper là một trong những lựa chọn phù hợp nhất cho bé từ 3-5 tuổi.

- Với thiết kế có chiều cao phù hợp, có 3 nấc điều chỉnh cùng bàn để chân rộng giúp bé dễ dàng điều khiển.

- Sản phẩm được làm bằng chất liệu nhựa siêu bền, có thể sử dụng trong nhiều năm liền

- Chiều dài và độ rộng của bàn để chân, tay lái giúp bé có tư thế ổn định, đảm bảo an toàn cũng như sự thoải mái khi di chuyển

- Phanh sau an toàn, thao tác đơn giản

- Bánh xe có đèn Led

- Dễ dàng tháo lắp

- Tải trọng tối đa 20kg

Có 2 màu thời trang cho bé lựa chọn.', 7, 0.98, CAST(N'2024-06-30' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (16, N'Xe Scooter 3 Bánh Zipper Zycom 212-358 Xanh Lá', NULL, 608000.0000, N'Scooter là một trong những món đồ không thể thiếu cho bé. Không chỉ giúp bé học cách giữ thăng bằng, phát triển vận động thô, kết hợp tay-mắt mà chơi scooter còn giúp bé phát triển các kỹ năng xã hội, tăng khả năng giao tiếp.

Zycom Zipper là một trong những lựa chọn phù hợp nhất cho bé từ 3-5 tuổi.

- Với thiết kế có chiều cao phù hợp, có 3 nấc điều chỉnh cùng bàn để chân rộng giúp bé dễ dàng điều khiển.

- Sản phẩm được làm bằng chất liệu nhựa siêu bền, có thể sử dụng trong nhiều năm liền

- Chiều dài và độ rộng của bàn để chân, tay lái giúp bé có tư thế ổn định, đảm bảo an toàn cũng như sự thoải mái khi di chuyển

- Phanh sau an toàn, thao tác đơn giản

- Bánh xe có đèn Led

- Dễ dàng tháo lắp

- Tải trọng tối đa 20kg

Có 2 màu thời trang cho bé lựa chọn.', 1, 0.9, CAST(N'2024-07-26' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (17, N'Xe Đạp Trẻ Em Royal Baby Little Swan 12 Inch Hồng', NULL, 2516000.0000, N'RoyalBaby là thương hiệu xe đạp trẻ em được yêu thích nhất khu vực Bắc Âu và bán chạy trên Amazon trong nhiều năm liền. Khung xe làm bằng thép cường lực, lắp ráp bằng robot, tải trọng 2 người lớn đảm bảo an toàn tuyệt đối cho bé. 



Mô Tả Sản Phẩm: 
- Little Swan là dòng xe đáng yêu dành cho bé gái, thuộc thương hiệu RoyalBaby được yêu thích tại Bắc Âu, thiết kế sản phẩm và màu sắc phù hợp với cơ thể của bé yêu, cùng độ an toàn cao sẽ là lựa chọn tuyệt vời của bố mẹ dành cho bé thỏa sức vui chơi vận động mỗi ngày.

- Sản phẩm được nhập khẩu và phân phối chính hãng bởi MYKINGDOM, với thời hạn bảo hành lên đến 5 năm.', 7, 0.99, CAST(N'2029-04-22' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (18, N'Hổ Trắng', NULL, 279000.0000, N'Schleich là một thương hiệu đồ chơi đến từ Đức với 80 năm kinh nghiệm trong việc sản xuất các đồ chơi mô hình, nhân vật. Sản phẩm của Schleich được trẻ em, phụ huynh và giáo viên trên 70 quốc gia trên toàn thế giới tin tưởng và sử dụng. Sản phẩm được chứng nhận 2009/48/EC và ED 71 về mức độ an toàn của đồ chơi và tiêu chuẩn đồ chơi quốc tế ASTM F963-2008 nên hoàn toàn không chứa các chất độc hại gây hại cho trẻ. - Mỗi sản phẩm của Schleich đều được sơn bằng tay rất tỉ mỉ. Qua nhiều bước phức tạp khác nhau và rất công phu mới có thể sản xuất được một sản phẩm hoàn thiện. - Các mô hình đều thật đến từng chi tiết, có màu sắc bắt mắt và giúp kích thích thị hiếu cho trẻ. - Với hình thù con vật gần gũi với thực tế, trẻ dễ dàng ghi nhớ cũng như thu nhận kiến thức về thế giới xung quanh. Những đồ chơi Schleich hoàn toàn nguyên mẫu và đa dạng chủng loại của tự nhiên, giúp trẻ hòa mình vào môi trường thiên nhiên và học những điều mới mẻ.Hổ trắng hay Bạch hổ là hổ với một gen lặn tạo ra những màu sắc nhạt. Một đặc tính di truyền làm cho các sọc của hổ rất nhạt; trắng hổ của loại này được gọi là tuyết trắng hoặc "hoàn toàn trắng". Điều này xảy ra khi một con hổ thừa kế hai bản sao của gen lặn cho màu sắc nhạt màu, một điều hiếm xảy ra. Chúng có một mũi màu hồng, móng chân màu hồng, da vằn xám, mắt xanh da trời băng đá, lông có màu trắng đến trắng kem với các vằn màu tro hoặc sô cô la. hổ trắng có xu hướng lớn hơn cả lúc mới sinh và lúc trưởng thành có kích thước lớn đầy đủ.', 8, 0.98, CAST(N'2024-04-24' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (19, N'Trực Thăng Điều Khiển Từ Xa WOLF FORCE (Xanh Dương)', NULL, 799000.0000, N'CHINH PHỤC BẦU TRỜI CÙNG TRỰC THĂNG WOLF FORCE VECTO

Dòng trực thăng với pin sạc thế hệ mới cho thời gian chơi lên đến 22 phút hứa hẹn sẽ là mang đến những giờ bay đầy hào hứng cho các bé.

- Công nghệ tự giữ độ cao khiến máy bay luôn ở trạng thái lơ lửng giúp việc điều khiển dễ hơn rất nhiều

- Tự do điều khiển trực thăng bay tới, lui, quẹo trái, phải

- Nút nhấn tự động cất cánh/ hạ cánh

- Chế độ chỉnh bay nhanh, bay chậm

- Nút căn chỉnh trái phải

Thiết kế phóng khoáng, nhẹ nhàng tạo nên một vẻ ngoài trang nhã nhưng không kém phần mạnh mẽ. Cơ cấu khí động học hoàn hảo giúp trực thăng có thể chuyển động mượt mà.

Bộ sản phẩm bao gồm:

1 x trực thăng điều khiển từ xa (có kèm pin sạc bên trong)

1 x Remote điều khiển (xài pin tiểu/ không kèm pin)

1 x Cáp sạc USB', 15, 0.94, CAST(N'2024-05-24' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (20, N' FALSE Siêu Drone Chiến binh bầu trời Siêu Drone Chiến binh bầu trời Siêu Drone Chiến binh bầu trời Siêu Drone Chiến Binh Bầu Trời', NULL, 500000.0000, N'DRONE - CHIẾN BINH BẦU TRỜI Bao phủ bên ngoài là một màu vàng sang trọng kết hợp cùng thiết kế mạnh mẽ, tạo nên một chiến binh bầu trời hết sức uy dũng. Chưa dừng lại ở đó Drone còn được tích hợp một chuỗi tính năng nổi trội như: - Nhào lộn 360 độ - Chế độ tự giữ độ cao - giúp việc điều khiển trở nên dễ dàng - Tính năng Headless mode độc đáo - Chế độ điều chỉnh tốc độ nhanh/ chậm', 15, 0.98, CAST(N'2024-05-30' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (21, N'Mô Hình SKULLPANDA Nắng Ấm', NULL, 280000.0000, N'Cô nàng SkullPanda chẳng thể ngăn mùa đông lạnh giá đang đến, hay biến nó thành mùa xuân tươi đẹp được. Nhưng chắc chắn cô ấy có thể đánh thức bạn dậy trong hơi ấm vòng tay của mình. Bộ sưu tập gồm 12 thiết kế và 1 thiết kế quý hiếm.', 10, 0.94, CAST(N'2024-06-17' AS Date), 1, 0, 2)
SET IDENTITY_INSERT [dbo].[Toy] OFF
GO
INSERT [dbo].[Voucher] ([id], [voucher_name], [description], [date_expiration], [voucher_discount], [voucher_limit], [voucher_limit_price]) VALUES (1, N'KidStore85', N'Giảm giá 15 %', CAST(N'2024-04-30' AS Date), 0.85, 1000, 1000000.0000)
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF__Order__order_dat__46E78A0C]  DEFAULT (getutcdate()) FOR [order_date]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_Account] FOREIGN KEY([user_id])
REFERENCES [dbo].[Account] ([user_id])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_Account]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Toy1] FOREIGN KEY([toy_id])
REFERENCES [dbo].[Toy] ([toy_id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Toy1]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Account] FOREIGN KEY([user_id])
REFERENCES [dbo].[Account] ([user_id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([user_id])
REFERENCES [dbo].[Account] ([user_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Voucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[Voucher] ([id])
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
ALTER TABLE [dbo].[Toy]  WITH CHECK ADD  CONSTRAINT [FK_Toy_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Toy] CHECK CONSTRAINT [FK_Toy_Category]
GO
ALTER TABLE [dbo].[Toy]  WITH CHECK ADD  CONSTRAINT [FK_Toy_Toy] FOREIGN KEY([user_id])
REFERENCES [dbo].[Account] ([user_id])
GO
ALTER TABLE [dbo].[Toy] CHECK CONSTRAINT [FK_Toy_Toy]
GO
USE [master]
GO
ALTER DATABASE [KidStore] SET  READ_WRITE 
GO
