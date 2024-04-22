USE [master]
GO
/****** Object:  Database [KidStore]    Script Date: 4/22/2024 9:39:39 AM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 4/22/2024 9:39:39 AM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 4/22/2024 9:39:39 AM ******/
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
/****** Object:  Table [dbo].[Image]    Script Date: 4/22/2024 9:39:39 AM ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 4/22/2024 9:39:39 AM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 4/22/2024 9:39:39 AM ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/22/2024 9:39:39 AM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 4/22/2024 9:39:39 AM ******/
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
/****** Object:  Table [dbo].[Toy]    Script Date: 4/22/2024 9:39:39 AM ******/
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
/****** Object:  Table [dbo].[Voucher]    Script Date: 4/22/2024 9:39:39 AM ******/
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

INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (7, N'Đồ Chơi Sưu Tập', 2, 1, 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (13, N'https://www.mykingdom.com.vn/cdn/shop/files/6941848233653_1.jpg?v=1711523586&width=990', 13, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (14, N'https://www.mykingdom.com.vn/cdn/shop/files/6941848252470_1.jpg?v=1711526016&width=990', 14, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (15, N'https://www.mykingdom.com.vn/cdn/shop/files/pop-mart-disney-stitch-on-a-date-6941848254726_1.jpg?v=1708480803&width=990', 15, 1)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'Staff')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (3, N'Customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Toy] ON 

INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (13, N'Mô Hình Đồ Chơi Detective Conan Carnival POP MART', NULL, 280000.0000, N'Mô Hình Detective Conan Carnival 6941848233653 Cùng hoà nhập vào lễ hội đầy tưng bừng cùng các nhân vật trong bộ truyên tranh nổi tiếng Thám tử lừng danh Conan. Bạn sẽ được chiêm ngưỡng các bộ trang phục vô cùng ấn tượng của các nhân vật, được chìm đắm vào các hoạt động và câu chuyện mà mỗi nhân vật mang lại.

Bộ sưu tập gồm 12 nhân vật thường và 1 nhân vật hiếm.

Kích thước: 6-9cm

Chất liệu: nhựa PVC/ABS', 7, 0.95, CAST(N'2024-05-19' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (14, N'Mô Hình Universal Kung Fu Panda', NULL, 275000.0000, N'Các chú gấu Panda trong Kung Fu Panda được khắc hoạ thành các mô hình vô cùng đáng yêu và thú vị. Mỗi chú gấu diễn tả một tư thế, hành động có trong bộ phim nổi tiếng này. Với mỗi mô hình sẽ mang ý nghĩa khác nhau, chắc chắn sẽ giúp bạn liên tưởng đến ngay câu chuyện được nhắc đến trong bộ phim. Bộ sưu tập gồm 9 nhân vật thường và 1 nhân vật hiếm. Kích thước: 6-9cm Chất liệu: nhựa PVC/ABS', 7, 0.93, CAST(N'2024-05-22' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (15, N'Mô Hình Disney Stitch On A Date POP MART', NULL, 280000.0000, N'Mô Hình Disney Stitch On A Date POP MART 6941848254726
Mô Hình Disney Stitch On A Date 6941848254726 Disney Stitch On A Date là bộ sưu tập các chú Stitch vô cùng đáng yêu với các hình dáng và biểu cảm khác nhau. Mỗi thiết kế là một hành động thú vị, mang trong mình một ý nghĩa khác nhau mà Stitch muốn truyền tải đến cho mọi người. Bộ sưu tập gồm 12 nhân vật thường và 1 nhân vật hiếm. Chất liệu: PVC/ABS Kích thước: 7-10cm', 7, 0.92, CAST(N'2024-05-18' AS Date), 1, 0, 2)
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
