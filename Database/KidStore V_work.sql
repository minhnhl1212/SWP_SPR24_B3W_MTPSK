USE [KidStore]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/22/2024 9:21:12 AM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 4/22/2024 9:21:12 AM ******/
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
/****** Object:  Table [dbo].[Image]    Script Date: 4/22/2024 9:21:12 AM ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 4/22/2024 9:21:12 AM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 4/22/2024 9:21:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[order_date] [date] NOT NULL,
	[voucher_id] [int] NULL,
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/22/2024 9:21:12 AM ******/
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
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/22/2024 9:21:12 AM ******/
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
/****** Object:  Table [dbo].[Toy]    Script Date: 4/22/2024 9:21:12 AM ******/
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
/****** Object:  Table [dbo].[Voucher]    Script Date: 4/22/2024 9:21:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[id] [int] NOT NULL,
	[voucher_name] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[voucher_discount] [float] NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [isActive], [role_id], [payment_id]) VALUES (1, N'Admin', N'1', N'Admin', N'0123456789', N'abc,123', 1, 1, NULL)
INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [isActive], [role_id], [payment_id]) VALUES (2, N'Staff', N'2', N'Staff', N'0123456789', N'abc, 123', 1, 2, NULL)
INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [isActive], [role_id], [payment_id]) VALUES (3, N'Customer', N'3', N'Customer', N'0123456789', N'abc, 123', 1, 3, NULL)
INSERT [dbo].[Account] ([user_id], [username], [password], [full_name], [phone], [address], [isActive], [role_id], [payment_id]) VALUES (4, N'tranthaison493', N'12345678', N'Tran Thai Son', N'0329482738', N'huyện Châu Đức, tỉnh Bà Rịa - Vũng Tàu', 1, 3, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (1, N'&#272;&#7891; Ch&#417;i S&#432;u T&#7853;p', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (2, N'Đồ Chơi Lắp Ghép', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (3, N'Đồ Chơi Phương Tiện', 2, 1, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (4, N'&#272;&#7891; Ch&#417;i S�ng T&#7841;o', 2, 0, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (5, N'Đồ Chơi Vận Động', 2, 0, 0)
INSERT [dbo].[Category] ([category_id], [category_name], [user_id], [isActive], [isDisable]) VALUES (6, N'Đồ Chơi Mầm Non', 2, 0, 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (1, N'a', 1, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (2, N'https://www.mykingdom.com.vn/cdn/shop/files/6941848233653_1.jpg?v=1711523586&width=990', 2, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (3, N'https://www.mykingdom.com.vn/cdn/shop/files/6941848252470_1.jpg?v=1711526016&width=990', 3, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (4, N'https://www.mykingdom.com.vn/cdn/shop/files/6941848266866_1.jpg?v=1711526236&width=990', 4, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (5, N'https://www.mykingdom.com.vn/cdn/shop/products/cb-a2678579-4778_1.jpg?v=1707218470&width=990', 5, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (6, N'https://www.mykingdom.com.vn/cdn/shop/products/cb-a2709559-4778_4.jpg?v=1707218510&width=990', 6, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (7, N'https://www.mykingdom.com.vn/cdn/shop/products/154006_15_624a92e5-51e6-45c8-b93a-e24d8714ba2d.jpg?v=1706982766&width=990', 7, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (8, N'https://www.mykingdom.com.vn/cdn/shop/products/mykingdom-6060759_1__1.jpg?v=1706990334&width=990', 8, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (9, N'https://www.mykingdom.com.vn/cdn/shop/products/1849_02.jpg?v=1706964720&width=990', 9, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (10, N'https://www.mykingdom.com.vn/cdn/shop/products/k5904_1.jpg?v=1684908216&width=990', 10, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (11, N'https://www.mykingdom.com.vn/cdn/shop/products/k5904_1.jpg?v=1684908216&width=990', 11, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (12, N'https://www.mykingdom.com.vn/cdn/shop/files/6941848254559_1.jpg?v=1708658801&width=990', 12, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (13, N'yes', 13, 1)
INSERT [dbo].[Image] ([image_id], [image_toy], [toy_id], [main]) VALUES (14, N'yes', 14, 1)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([news_id], [title], [image], [date], [description], [user_id]) VALUES (1, N'FLASH SALE ĐỘC QUYỀN - NHẬN LIỀN DEAL KHỦNG', N'https://www.mykingdom.com.vn/cdn/shop/articles/flash-sale-doc-quyen-nhan-lien-deal-khung_thumbnail_384x.jpg?v=1712634980', CAST(N'2024-04-09' AS Date), N'Sale khủng duy nhất 3 ngày từ 10/4 - 12/4 tại Mykingdom dành cho các khách hàng yêu quý. Rất nhiều đồ chơi giảm giá đến 35% từ GABBY DOLLHOUSE, RASTAR, BEYBLADE 6,... đang chờ bạn đấy. Đừng chần chờ gì mà hãy click ngay vào đường link: https://www.mykingdom.com.vn/pages/flash-sale và bắt đầu mua sắm nào!', 2)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (3, 3, CAST(N'2024-04-20' AS Date), 1, 0, 218550.0000, N'LÃª Nguyá»
n ÄÄng Khoa', N'0329592873', N'Q10, HCM', N'Đã Giao Hàng')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (4, 3, CAST(N'2024-04-20' AS Date), 1, 0, 655650.0000, N'LÃª Nguyá»
n ÄÄng Khoa', N'0707672032', N'Q9, HCM', N'Đã Giao Hàng')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (5, 3, CAST(N'2024-04-21' AS Date), 1, 0, 218550.0000, N'LÃª Nguyá»n ÄÄng Khoa', N'0707672032', N'Nga', N'Đã Mua')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (6, 3, CAST(N'2024-04-21' AS Date), 1, 0, 1433550.0000, N'US Dollar', N'0707672032', N'Nga', N'Đã Giao Hàng')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (7, 3, CAST(N'2024-04-21' AS Date), 1, 0, 194400.0000, N'LÃª Nguyá»n ÄÄng Khoa', N'0707672032', N'Nga', N'Đã Mua')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (8, 3, CAST(N'2024-04-21' AS Date), 1, 1, 266000.0000, N'LÃª Nguyá»n ÄÄng Khoa', N'0707672032', N'Nga', N'Đã Mua')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (9, 3, CAST(N'2024-04-21' AS Date), 1, 0, 1092750.0000, N'Adding', N'0707672032', N'Nga', N'Đã Mua')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (10, 3, CAST(N'2024-04-21' AS Date), 1, 0, 673320.0000, N'LÃª Nguyá»n ÄÄng Khoa', N'0707672032', N'Nga', N'Đã Mua')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (11, 3, CAST(N'2024-04-22' AS Date), 1, 1, 417690.0000, N'Adding', N'0707672032', N'Nga', N'Đã Mua')
INSERT [dbo].[Order] ([order_id], [user_id], [order_date], [voucher_id], [payment_type], [order_amount], [name], [phone], [address], [status_order]) VALUES (12, 3, CAST(N'2024-04-22' AS Date), 1, 0, 218550.0000, N'LÃª Nguyá»n ÄÄng Khoa', N'0707672033', N'Nga', N'Đã Mua')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty]) VALUES (3, 3, 4, 218550.0000, 1, N'_SZgdOCWVR', N'Đang Bảo Hành', N'Cần bảo hành vì bị ....')
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty]) VALUES (4, 4, 4, 218550.0000, 3, N'g[UZXYDljU', N'Gửi Bảo Hành', N'Cần bảo hành đồ chơi bị hỏng
')
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty]) VALUES (5, 5, 4, 218550.0000, 1, N'JSVN_`PdUM', N'Đang xử lý', NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty]) VALUES (6, 6, 3, 243000.0000, 5, N'JHiJIcXILW', N'Đang xử lý', NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty]) VALUES (7, 6, 4, 218550.0000, 1, N'Z]PTXIWSSS', N'Đang xử lý', NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty]) VALUES (8, 7, 3, 243000.0000, 1, N'm_T^ZZIddB', N'Đang xử lý', NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty]) VALUES (9, 8, 2, 266000.0000, 1, N'RJMVVKjWHS', N'Đang xử lý', NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty]) VALUES (10, 9, 4, 218550.0000, 5, N'RKkSShOTak', N'Đang xử lý', NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty]) VALUES (11, 10, 7, 168330.0000, 5, N'[TJLhVB_aY', N'Đang xử lý', NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty]) VALUES (12, 11, 6, 417690.0000, 1, N'OPYWglXPKU', N'Đang xử lý', NULL)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [toy_id], [OD_price], [quantity], [warranty_code], [status], [description_warranty]) VALUES (15, 12, 4, 218550.0000, 1, N']eCCRaPJEQ', N'Đang xử lý', NULL)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'Staff')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (3, N'Customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Toy] ON 

INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (1, N'a', NULL, 1.0000, N'a', 1, 1, CAST(N'2024-05-12' AS Date), 0, 1, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (2, N'Mô Hình &#272;&#7891; Ch&#417;i Detective Conan Carnival POP MART', NULL, 280000.0000, N'M� H�nh Detective Conan Carnival 6941848233653 C�ng ho� nh&#7853;p v�o l&#7877; h&#7897;i &#273;&#7847;y t&#432;ng b&#7915;ng c�ng c�c nh�n v&#7853;t trong b&#7897; truy�n tranh n&#7893;i ti&#7871;ng Th�m t&#7917; l&#7915;ng danh Conan. B&#7841;n s&#7869; &#273;&#432;&#7907;c chi�m ng&#432;&#7905;ng c�c b&#7897; trang ph&#7909;c v� c�ng &#7845;n t&#432;&#7907;ng c&#7911;a c�c nh�n v&#7853;t, &#273;&#432;&#7907;c ch�m &#273;&#7855;m v�o c�c ho&#7841;t &#273;&#7897;ng v� c�u chuy&#7879;n m� m&#7895;i nh�n v&#7853;t mang l&#7841;i.

B&#7897; s&#432;u t&#7853;p g&#7891;m 12 nh�n v&#7853;t th&#432;&#7901;ng v� 1 nh�n v&#7853;t hi&#7871;m.

K�ch th&#432;&#7899;c: 6-9cm

Ch&#7845;t li&#7879;u: nh&#7921;a PVC/ABS', 1, 0.95, CAST(N'2024-05-11' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (3, N'Mô Hình Universal Kung Fu Panda', NULL, 270000.0000, N'Các chú gấu Panda trong Kung Fu Panda được khắc hoạ thành các mô hình vô cùng đáng yêu và thú vị. Mỗi chú gấu diễn tả một tư thế, hành động có trong bộ phim nổi tiếng này. Với mỗi mô hình sẽ mang ý nghĩa khác nhau, chắc chắn sẽ giúp bạn liên tưởng đến ngay câu chuyện được nhắc đến trong bộ phim. Bộ sưu tập gồm 9 nhân vật thường và 1 nhân vật hiếm. Kích thước: 6-9cm Chất liệu: nhựa PVC/ABS', 1, 0.9, CAST(N'2024-04-30' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (4, N'Mô Hình Dimoo Animal Kingdom', NULL, 235000.0000, N'Cậu bạn Dimoo với tạo hình vô cùng ngầu và ấn tượng trong Vương quốc động vật. Một cậu bạn được khoác lên mình một nhân vật khác nhau, mang trong mình một câu chuyện cần được khám phá. Bộ sưu tập gồm 12 nhân vật thường và 1 nhân vật hiếm.

Kích thước: 7-8cm Chất liệu: PVC/ABS', 1, 0.93, CAST(N'2024-05-04' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (5, N'Combo Mô Hình MOBILE SUIT GUNDAM G-FRAME FA 05 BANDAI CANDY CB-A2678579-4778', NULL, 519000.0000, N'M� h�nh s&#432;u t&#7853;p ch&#7845;t l&#432;&#7907;ng cao &#273;&#7871;n t&#7915; Nh&#7853;t B&#7843;n

Chi ti&#7871;t &#273;&#7863;c bi&#7879;t tinh x&#7843;o &#273;&#7871;n t&#7915; c�c nh�n v&#7853;t trong th&#7871; gi&#7899;i Nh&#7853;t B&#7843;n.', 1, 0.9, CAST(N'2024-05-18' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (6, N'Combo Mô Hình 2023 NEW BOY CHARACTER ACTION FIGURE VOL.2 BANDAI CANDY CB-A2709559-4778', NULL, 459000.0000, N'Mô hình lắp ráp chất lượng cao đến từ Nhật Bản
Chi tiết đặc biệt tinh xảo đến từ các nhân vật trong thế giới Gundam Nhật Bản.', 1, 0.91, CAST(N'2024-05-16' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (7, N'Bộ Trang Bị ZW40 GRAVITY CANNON UNIT', NULL, 181000.0000, N'Bộ trang bị ZW40 Gravity Cannon Unit 154006 là các phụ kiện trang bị thêm cho các mô hình Chiến Binh Thú Zoids. Sản phẩm phụ kiện đồ chơi được sản xuất dựa theo bộ phim hoạt hình Thú Vương Đại Chiến (Chiến Binh Thú) ZOIDS. Đây là một series anime dựa trên dòng đồ chơi mô hình viễn tưởng cùng tên của công ty Takara Tomy, xoay quanh các sinh vật siêu thú khổng lồ.


Bộ trang bị ZW40 Gravity Cannon Unit 154006 là phụ kiện không thể thiếu cho những ai đam mê với các chiến binh ZOIDS bởi vì:

Sản phẩm được làm bằng chất liệu nhựa cao cấp, không chứa chất độc hại.Áp dụng cách lắp ráp từng chi tiết và di chuyển cử động riêng biệt với từng sản phẩm
Mô hình lắp ráp theo kiểu bấm khớp, không cần dụng cụ, không dùng keo dán.
Mỗi người máy Zoids đều có sức mạnh và khả năng xuất chiêu di chuyển riêng biệt, với bộ trang bị, chiến binh của bạn sẽ gia tăng sức chiến đấu mạnh mẽ hơn.', 1, 0.93, CAST(N'2024-04-25' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (8, N'Đồ Chơi Xe Cảnh Sát Biến Hình Paw Patrol The Movie - Chase', NULL, 909000.0000, N'Thương hiệu Canada. Được mô phỏng theo bộ phim hoạt hình nổi tiếng Đội Chó Cứu Hộ Paw Patrol. Từ màn ảnh nhỏ bước ra công chiếu thể giới với tên gọi Paw Patrol The Movie.

Bộ sản phẩm gồm 2 xe trong 1. Xe cảnh sát tuần tra biến hình cực ngầu, ẩn bên dưới lớp vỏ giáp chắc chắn là 1 chiếc mô tô với tốc độ thần sầu hỗ trợ cho chú chó cứu hộ Chase dũng mãnh xâm nhập vào những địa hình khó khăn. Đèn và còi hụ đi kèm với hệ thống bắn đạn thần sầu giúp Chase luôn hoàn thành tốt nhiệm vụ của mình', 1, 0.98, CAST(N'2024-04-27' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (9, N'Xe Tải Chở Du Thuyền', NULL, 729000.0000, N'Xe tải chở du thuyền - 1849
Kích thước hộp hàng: 30.5 x 15.1 x 7.1 cm
Mẫu siêu du thuyền Drettmann với thiết kế nội thất sang trọng và tinh tế mang đẩy cảm hứng sáng tạo.
Xe vận chuyển siêu tải MAN với hệ thống trục bánh cùng lớp cao su cao cấp có thể vận chuyển du thuyền an toàn và vững chắc trên mọi chuyến hành trình du lịch sắp tới.
Chưa dừng lại ở đó, bộ sản phẩm còn kèm 2 nhân vật để tăng tính trải nghiệm khi chơi của bé. Du thuyền hoàn toàn có thể mở phần nắp phía trên để bé có thể quan sát nội thất bên trong, chắc chắn là điểm đặc biệt mà nhiều mô hình hiện tại không làm được. Hứa hẹn giúp bé có những giây phút vui chơi đầy hào hứng nhưng vẫn đảm bảo an toàn cho bé từ chất lượng đồ chơi Đức.

', 1, 0.96, CAST(N'2024-04-29' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (10, N'  Bộ 3 siêu xe Hot Wheels Bộ 3 siêu xe Hot Wheels Bộ 3 siêu xe Hot Wheels Bộ 3 siêu xe Hot Wheels Bộ 3 siêu xe Hot Wheels Bộ 3 siêu xe Hot Wheels Bộ 3 siêu xe Hot Wheels  Bộ 3 Siêu Xe Hot Wheels', NULL, 199000.0000, N'Đồ chơi bộ 3 siêu xe Hot Wheels K5904  - Giao hàng ngẫu nhiên là bộ ba chiếc xe mô hình được thiết kế vô cùng tinh xảo với tỷ lệ thu nhỏ 1/64 từ chiếc xe ngoài đời thật. Siêu xe được mô phỏng chính xác với hình ảnh xe thật giúp bé dễ dàng phân biệt và học hỏi về các phương tiện giao thông trong đời sống. Với bộ 3 siêu xe Hot Wheels K5904, bé có thể rủ bạn cùng tham gia đường đua cùng, mang đến cho bé thêm nhiều niềm vui. Hơn nữa, chơi cùng bạn bè giúp bé thêm hòa đồng, tăng tinh thần đồng đội, phát triển kỹ năng giao tiếp.', 1, 0.96, CAST(N'2024-05-03' AS Date), 0, 1, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (11, N'B&#7897; 3 Si�u Xe Hot Wheels', NULL, 199000.0000, N'&#272;&#7891; ch&#417;i b&#7897; 3 si�u xe Hot Wheels K5904  - Giao h�ng ng&#7851;u nhi�n l� b&#7897; ba chi&#7871;c xe m� h�nh &#273;&#432;&#7907;c thi&#7871;t k&#7871; v� c�ng tinh x&#7843;o v&#7899;i t&#7927; l&#7879; thu nh&#7887; 1/64 t&#7915; chi&#7871;c xe ngo�i &#273;&#7901;i th&#7853;t. Si�u xe &#273;&#432;&#7907;c m� ph&#7887;ng ch�nh x�c v&#7899;i h�nh &#7843;nh xe th&#7853;t gi�p b� d&#7877; d�ng ph�n bi&#7879;t v� h&#7885;c h&#7887;i v&#7873; c�c ph&#432;&#417;ng ti&#7879;n giao th�ng trong &#273;&#7901;i s&#7889;ng. V&#7899;i b&#7897; 3 si�u xe Hot Wheels K5904, b� c� th&#7875; r&#7911; b&#7841;n c�ng tham gia &#273;&#432;&#7901;ng &#273;ua c�ng, mang &#273;&#7871;n cho b� th�m nhi&#7873;u ni&#7873;m vui. H&#417;n n&#7919;a, ch&#417;i c�ng b&#7841;n b� gi�p b� th�m h�a &#273;&#7891;ng, t&#259;ng tinh th&#7847;n &#273;&#7891;ng &#273;&#7897;i, ph�t tri&#7875;n k&#7929; n&#259;ng giao ti&#7871;p.', 1, 0.96, CAST(N'2024-05-03' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (12, N'M� H�nh DC Justice League Childhood POP MART 6941848254559', NULL, 240000.0000, N'M� H�nh DC Justice League Childhood POP MART 6941848254559 - Giao h�ng ng&#7851;u nhi�n
M� H�nh DC Justice League Childhood 6941848254559 V&#7851;n l� c�c nh�n v&#7853;t si�u anh h�ng trong DC nh&#432;ng v&#7899;i bi&#7875;u c&#7843;m khu�n m&#7863;t &#273;�ng y�u h&#417;n v� g&#7907;i nh&#7899; th&#7901;i th&#417; &#7845;u. M&#7895;i nh�n v&#7853;t &#273;&#432;&#7907;c thi&#7871;t k&#7871; v&#7899;i m&#7897;t h�nh d�ng kh�c nhau, &#273;i k�m ph&#7909; ki&#7879;n v� bi&#7875;u c&#7843;m g&#432;&#417;ng m&#7863;t kh�ng gi&#7889;ng nhau. B&#7897; s&#432;u t&#7853;p g&#7891;m 12 nh�n v&#7853;t th&#432;&#7901;ng v� 1 nh�n v&#7853;t hi&#7871;m. Ch&#7845;t li&#7879;u: PVC/ABS K�ch th&#432;&#7899;c: 7-10cm', 1, 0.96, CAST(N'2024-05-23' AS Date), 1, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (13, N'&#272;&#7890; Ch&#417;i tr&#7867; em', NULL, 100000.0000, N'i', 1, 1, CAST(N'2024-04-21' AS Date), 0, 0, 2)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [warranty_time], [isActive], [isDisable], [user_id]) VALUES (14, N'ĐỒ Chơi trẻ em 2', NULL, 1500000.0000, N'7', 3, 1, CAST(N'2024-04-21' AS Date), 1, 0, 2)
SET IDENTITY_INSERT [dbo].[Toy] OFF
GO
INSERT [dbo].[Voucher] ([id], [voucher_name], [description], [voucher_discount]) VALUES (1, N'passmon', NULL, 0.8)
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_order_date]  DEFAULT (getutcdate()) FOR [order_date]
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
