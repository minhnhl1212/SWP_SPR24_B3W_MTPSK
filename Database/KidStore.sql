USE [KidStore]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/18/2024 1:20:08 PM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 4/18/2024 1:20:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](255) NULL,
	[approve] [bit] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 4/18/2024 1:20:08 PM ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 4/18/2024 1:20:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[news_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/18/2024 1:20:08 PM ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/18/2024 1:20:08 PM ******/
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
/****** Object:  Table [dbo].[Payment]    Script Date: 4/18/2024 1:20:08 PM ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 4/18/2024 1:20:08 PM ******/
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
/****** Object:  Table [dbo].[Toy]    Script Date: 4/18/2024 1:20:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Toy](
	[toy_id] [int] NOT NULL,
	[toy_name] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[description] [nvarchar](255) NULL,
	[category_id] [int] NULL,
	[discount] [float] NULL,
	[approve] [bit] NULL,
	[warranty_time] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[toy_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 4/18/2024 1:20:08 PM ******/
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

INSERT [dbo].[Category] ([category_id], [category_name], [approve]) VALUES (1, N'Đồ chơi lắp ghép', NULL)
INSERT [dbo].[Category] ([category_id], [category_name], [approve]) VALUES (2, N'Đồ chơi sáng tạo ( chưa có )', NULL)
INSERT [dbo].[Category] ([category_id], [category_name], [approve]) VALUES (3, N'Đồ chơi vận động (chưa có)', NULL)
INSERT [dbo].[Category] ([category_id], [category_name], [approve]) VALUES (4, N'Đồ chơi mầm non (chưa có)', NULL)
INSERT [dbo].[Category] ([category_id], [category_name], [approve]) VALUES (5, N'Đồ chơi bay (chưa có)', NULL)
INSERT [dbo].[Category] ([category_id], [category_name], [approve]) VALUES (6, N'Đồ chơi robot (chưa có)', NULL)
INSERT [dbo].[Category] ([category_id], [category_name], [approve]) VALUES (7, N'Đồ chơi sưu tập', NULL)
INSERT [dbo].[Category] ([category_id], [category_name], [approve]) VALUES (8, N'Đồ chơi phương tiện', NULL)
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
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([news_id], [description], [image], [name]) VALUES (1, N'Sale khủng duy nhất 3 ngày từ 10/4 - 12/4 tại Mykingdom dành cho các khách hàng yêu quý. Rất nhiều đồ chơi giảm giá đến 35% từ GABBY DOLLHOUSE, RASTAR, BEYBLADE 6,... đang chờ bạn đấy. Đừng chần chờ gì mà hãy click ngay vào đường link: https://www.mykingdom.com.vn/pages/flash-sale và bắt đầu mua sắm nào!

Xe Lamborghini Sesto Elemento
Thương hiệu RASTAR

SKU R53700

Giảm 35% chỉ còn 467.000 VNĐ (Giá gốc 719.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Xe Lamborghini Sesto Elemento có bản quyền chính hãng từ thương hiệu xe Lamborghini nổi tiếng toàn cầu. Xe được mô phỏng hoàn hảo từ xe Lamborghini Sesto Elemento thật theo tỉ lệ 1:18, và được sản xuất từ nhựa và kim loại cao cấp, vô cùng chắc chắn và tinh xảo. Ngoài trưng bày, bé có thể điều khiển xe chạy trên đường đua và trình diễn các pha ôm cua, vượt chướng ngại vật cực đỉnh.

flash-sale-doc-quyen-nhan-lien-deal-khung-1
Túi Purse Pet Mèo Con Đáng Yêu
Thương hiệu PURSE PET

SKU 6064127

Giảm 35% chỉ còn 565.000 VNĐ (Giá gốc 869.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Túi Purse Pet Mèo con đáng yêu được lấy cảm hứng từ loài động vật siêu dễ thương, phù hợp cho trang phục dạo phố hay đi tiệc của các bé gái. Đôi mắt trên túi cực kỳ long lanh, giúp thu hút mọi ánh nhìn. Hơn nữa, sản phẩm còn được tích hợp hơn 30 âm thanh làm nũng để trẻ tương tác, trong đó còn có 3 chế độ nhạc vui nhộn. Chiếc túi này hứa hẹn sẽ giúp bé thêm tỏa sáng và tự tin mỗi khi đi chơi đó.

flash-sale-doc-quyen-nhan-lien-deal-khung-2
Con Quay B-193 Booster Ultimate Valkyrie.Lg.V’-9 BEYBLADE 6 179795
Thương hiệu BEYBLADE 6

SKU 179795

Giảm 30% chỉ còn 321.000 VNĐ (Giá gốc 459.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Con Quay B-193 Booster Ultimate Valkyrie.Lg.V’-9 BEYBLADE 6 179795 với vẻ ngoài cực ngầu, kết hợp từ chất liệu nhựa và kim loại để tạo độ cứng cáp vừa đủ cho sản phẩm. Bé sẽ được tự tay lắp ráp và dán nhãn theo sách hướng dẫn đi kèm. Sau đó chỉ cần tung con quay để luyện tập các kỹ năng cực đã mắt thôi.

flash-sale-doc-quyen-nhan-lien-deal-khung-3
Ngôi Nhà Búp Bê Gabby Tuyệt Vời GABBY DOLLHOUSE 6065502
Thương hiệu GABBY DOLLHOUSE

SKU 6065502

Giảm 30% chỉ còn 419.000 VNĐ (Giá gốc 599.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Ngôi nhà búp bê Gabby tuyệt vời GABBY DOLLHOUSE 6065502 sẽ đưa bé vào thế giới đầy mộng mơ của các bé búp bê. Bé sẽ được tự tay lắp ráp nên những vật dụng như tủ lạnh, giường cho mèo, bếp nấu ăn, tủ quần áo… trong ngôi nhà có 2 phòng này. Sản phẩm sẽ giúp bé có những giờ vui chơi, nhập vai cực kỳ thú vị.

flash-sale-doc-quyen-nhan-lien-deal-khung-4
Đồ Chơi Mô Hình Sưu Tập Chú Thuật Hồi Chiến Bobblehead Series 1 JUJUTSU KAISEN JJK11200
Thương hiệu JUJUTSU KAISEN

SKU JJK11200-S1

 Giảm 20% chỉ còn 159.000 VNĐ (Giá gốc 199.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Chú thuật hồi chiến kể về hành trình tiêu diệt các nguyền hồn độc ác và thu thập ngón tay của Chú vương của chàng nam sinh Itadori Yuji. Nếu trẻ yêu thích các nhân vật trong bộ phim thì tuyệt đối không nên bỏ qua Đồ Chơi Mô Hình Sưu Tập Chú Thuật Hồi Chiến Bobblehead Series 1 JUJUTSU KAISEN JJK11200. Bé có thể thu thập đến 8 nhân vật nổi bật trong phim với chiếc đầu có thể lúc lắc qua lại cực kỳ ngộ nghĩnh.

flash-sale-doc-quyen-nhan-lien-deal-khung-5
Chương trình khuyến mãi chỉ kéo dài 3 ngày, bạn hãy nhanh tay bỏ vào giỏ hàng các món đồ chơi mà bé yêu thích nhé. Đồ chơi của Mykingdom sẽ giúp bé phát triển toàn diện các kỹ năng và lúc nào cũng thật vui vẻ.', N'https://www.mykingdom.com.vn/cdn/shop/articles/flash-sale-doc-quyen-nhan-lien-deal-khung_thumbnail.jpg?v=1712634980', N'FLASH SALE ĐỘC QUYỀN - NHẬN LIỀN DEAL KHỦNG')
INSERT [dbo].[News] ([news_id], [description], [image], [name]) VALUES (4, N'Sale cực khủng đến 50% tại sinh nhật của Mykingdom! Hàng ngàn ưu đãi cực hấp dẫn từ ngày 15/3 - 31/3 của các thương hiệu đình đám như BRUDER, VECTO, LEGO, DINOS PARTY, XSHOT…đang chờ đón bạn tại https://www.mykingdom.com.vn/pages/sinh-nhat. Nhanh tay truy cập đường link và bắt đầu mua sắm thôi!

Lưu ý: Giá trong bài viết được áp dụng cho thành viên của Mykingdom

Người Máy Cao Cấp Giant Saver G-Rail Phoenix
Thương hiệu GIANT SAVER 4

SKU YW536621

Giảm 50% chỉ còn 330.000 VNĐ (Giá gốc 659.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Người máy cao cấp Giant Saver G-Rail Phoenix là dòng sản phẩm thuộc GIANT SAVER 4, tái hiện lại nhân vật trong bộ phim hoạt hình nổi tiếng rất được các bé yêu thích: GIANT SAVER 4 - CHIẾN ĐỘI HỎA XA. Với món đồ chơi này, bé sẽ được hóa thân vào Vệ Binh anh hùng, nhập vai vào những tình huống cam go, bảo vệ thành phố và cư dân khỏi các thế lực hắc ám lăm le gây hại.

sinh-nhat-mykingdom-1

Đồ Chơi Mô Hình Tỷ Lệ 1:16 Xe Cắm Trại Mercedes Với Tài Xế
Thương hiệu BRUDER

SKU BRU02672

Giảm 40% chỉ còn 1.379.000 VNĐ (Giá gốc 2.299.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Đồ chơi mô hình tỷ lệ 1:16 xe cắm trại Mercedes với tài xế được mô phỏng theo tỉ lệ 1:16 chiếc xe chuyên dụng để đi cắm trại, có trang bị đầy đủ vật dụng như: bàn, ghế, bếp ... Chiếc xe cắm trại còn được biết đến như một căn “nhà di động”, rất được giới trẻ hiện nay yêu thích. Trẻ có thể khám phá những chức năng đặc biệt của xe như cửa xe, cửa hông cũng như cửa thùng sau đều có thể đóng mở dễ dàng. Mái hiên ở bên hông thùng xe để che chở mọi người khỏi nắng, mưa. Bánh xe sử dụng chất liệu cao su thật, đem lại trải nghiệm di chuyển tuyệt vời nhất.

sinh-nhat-mykingdom-2

Đồ Chơi Siêu Xe Phi Điểu Sấm Sét Điều Khiển Từ Xa (Xanh)
Thương hiệu VECTO

SKU VT612-BLU

Giảm 35% chỉ còn 357.000 VNĐ (Giá gốc 549.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Đồ chơi siêu xe phi điểu sấm sét điều khiển từ xa xanh sở hữu vẻ ngoài đẹp mắt, độc đáo. Đồ chơi sở hữu hàng loạt chức năng nổi trội như: Xoay 360 độ tựa như một cơn lốc xoáy, tạo nên những màn trình diễn cực ấn tượng. Muốn vui chơi cùng xe vào buổi tối? Không cần lo vì xe có hiệu ứng đèn led phát sáng cực kỳ ngầu. Chiếc xe này còn có tốc độ chạy cực cao, là bậc thầy nhào lộn điêu luyện trong các dòng xe của VECTO.

sinh-nhat-mykingdom-3

Bộ Lắp Ráp Đường Đua Thành Phố Khủng Long (Xe Chạy Pin)_Nâu
Thương hiệu DINOS PARTY

SKU CM558-2

Giảm 35% chỉ còn 324.000 VNĐ (Giá gốc 499.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Trở về thời tiền sử và tham gia cuộc truy đuổi gay cấn đến nghẹt thở cùng Bộ lắp ráp đường đua thành phố khủng long (xe chạy pin)_Nâu. Sản phẩm đi kèm 2 xe ô tô chạy tự động bằng pin và 2 chú khủng long T-rex như thật được làm từ nhựa chất lượng cao. Bé có thể lắp ráp đường đua cho 2 chiếc xe bằng 12 đường track, sau đó đặt các phụ kiện ngoại cảnh như đèn giao thông, biển báo, trạm tiếp xăng… để 2 chiếc xe đua tranh tài. Liệu xe nào sẽ vượt qua chướng ngại, tránh né lũ khủng long một cách hoàn hảo để về đích?

sinh-nhat-mykingdom-4

Đồ Chơi Phun Nước Vô Địch Xshot 1000ml
Thương hiệu XSHOT

SKU X56221

Giảm 30% chỉ còn 461.000 VNĐ (Giá gốc 659.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Đập tan cái nóng mùa hè và bùng nổ cuộc vui với Đồ chơi phun nước vô địch Xshot 1000ml. Sản phẩm có cơ chế nạp nước cực nhanh, cho phép người chơi nạp đầy nước chỉ trong 1 giây và trở lại cuộc chiến ngay lập tức. Cuộc vui của bé sẽ không bao giờ bị gián đoạn. Hơn nữa, đồ chơi phun nước này còn có khả năng chứa đến tận 1l nước để trẻ chơi trong thời gian siêu dài. Khoảng cách bắn của đồ chơi lên tới 10 mét, dù cho đối thủ núp ở đâu thì trẻ vẫn có thể dễ dàng khiến người xung quanh ướt nhẹp.

sinh-nhat-mykingdom-5

Tuyệt đối đừng bỏ lỡ dịp sale có 1-0-2 này nếu bạn không muốn tiếc hùi hụi suốt cả năm! Đồ chơi an toàn cho con sẽ mang đến sự an tâm cho mẹ, đồng thời giúp bé vừa chơi vừa học, phát triển kỹ năng. Bạn còn chờ gì mà chưa ghé Vương quốc đồ chơi và sắm quà cho con?', N'https://www.mykingdom.com.vn/cdn/shop/articles/sinh-nhat-mykingdom_thumbnail.jpg?v=1710390940', N'LOA LOA! TIỆC SINH NHẬT MYKINGDOM CHÍNH THỨC MỞ MÀN!')
INSERT [dbo].[News] ([news_id], [description], [image], [name]) VALUES (5, N'Thông Tin Chương Trình My Points 
 

My Points là chương trình thành viên giúp tích lũy điểm số khi khách hàng tham gia mua sắm thông qua việc quét mã tích điểm khi thanh toán. Khách hàng tham gia My Points sẽ nhận được nhiều ưu đãi đặc quyền từ chương trình dành cho khách hàng thành viên.

 

Với phương châm “Một cho tất cả - one for all”, điểm tích lũy từ chương trình My Points được áp dụng tại hệ thống các cửa hàng thuộc Mykingdom, Hobiverse và Clever Collection trên khắp cả nước, mang đến những trải nghiệm thuận tiện và tuyệt vời cho khách hàng khi mua sắm. Hãy cùng điểm qua đôi nét về các thương hiệu:

Mykingdom

 

Mykingdom chuyên phục vụ đa dạng các sản phầm đồ chơi cao cấp mang tính giáo dục và giúp sáng tạo trí não cho các bé ở mọi độ tuổi. Một số danh mục đồ chơi nổi bật của thương hiệu có thể kể đến như: Đồ chơi búp bê, đồ chơi điều khiển, đồ chơi lắp ráp…

Hobiverse

 

Hobiverse là sự kết hợp sẽ Hobby (sở thích) và Universe (vũ trụ) nơi các bạn trẻ thỏa thích tìm thấy những món đồ art toy - đồ chơi nghệ thuật phù hợp sở thích của bản thân. Mỗi sản phẩm art toy được lấy cảm hứng từ các nhân vật hoạt hình, truyện tranh,.. và mang trong mình những câu chuyện riêng, từ đó giúp người sở hữu thể hiện được chất riêng của mình. Một số sản phẩm nổi bật có thể kể đến như dòng đồ chơi blindbox của Popmart với các nhân vật đầy màu sắc, dòng đồ chơi Banpresto với bộ sưu tập các nhân vật đến từ truyện manga/anime… 

Clever Collection

 

Clever Collection chuyên cung cấp các sản phẩm balo, văn phòng phẩm, giày dép và các phụ kiện thời trang dành cho bé ở mọi lứa tuổi. Một số sản phẩm của thương hiệu được nhiều người yêu thích như balo và bóp viết space adventure, dragon gaming…

Mỗi thương hiệu với các hệ sinh thái khác nhau với đa dạng các sản phẩm giúp khách hàng có nhiều sự lựa chọn hơn.

 

Quyền Lợi Của Khách Hàng Khi Tham Gia Chương Trình
 

Chương trình thành viên My point gồm 3 hạng thành viên mới: Silver, Gold, Diamond, sau 12 tháng sẽ được xếp hạng lại dựa trên số điểm tích luỹ của 12 tháng đó. Ứng với mỗi hạng thành viên, khách hàng sẽ nhận được những đặc quyền khác nhau. Tuy nhiên, nhìn chung, khách hàng thành viên của My points sẽ nhận được những đặc quyền sau:

 

 

 

Ưu đãi 10% khi quét QR code (**): Dành cho khách hàng khi đăng kí thành viên mới. Khách hàng sẽ nhận được ngay mã ưu đãi khi đăng ký và cập nhật đầy đủ thông tin thành viên

Tích lũy theo hạng thành viên (*): Khách hàng sẽ được tích lũy điểm lên đến 2% tổng giá trị hóa đơn thanh toán sau VAT theo từng hạng thành viên.

Nhân đôi điểm tích lũy: Được nhân đôi điểm tích lũy lên đến 4% trong ngày hội thành viên vào 22 hàng tháng.

Ưu đãi sinh nhật bé (*): Thành viên nhận ngay ưu đãi giảm 30% (giảm tối đa 1.5 triệu/hóa đơn) trong tháng sinh nhật bé.

Đặc quyền hấp dẫn khi lên hạng: Khách hàng thành viên sẽ nhận ngay mã ưu đãi 10% khi lên hạng mức mới

Giảm thêm 10% và nhiều ưu đãi khác (áp dụng cho một số sản phẩm) (áp dụng khi mua hàng tại cửa hàng)

 



Hầu hết các quyền lợi khách hàng bao gồm tích điểm và ưu đãi có thể được áp dụng tại tất cả hệ thống các cửa hàng thuộc Mykingdom, Hobiverse và Clever Collection trừ một số quyền lợi đã được đánh dấu (*) (**) quy định tại điều khoản và điều kiện.

 

Hướng Dẫn Nhận Ưu Đãi 10%
Để nhận được ưu đãi giảm 10% cho Thành viên, khách hàng thực hiện các bước sau:

Bước 1: Quét mã QR code hoặc truy cập

Nhận ưu đãi 10% cho sản phẩm nguyên giá
Nhận ưu đãi 10% cho một số sản phẩm
Bước 2: Điền đầy đủ thông tin theo yêu cầu

Bước 3: Chọn “Follow OA My Points”, sau đó chọn “Gửi tới My Points để nhận voucher”

Bước 4: Chọn “Lưu voucher về máy” 

Bước 5: Kiểm tra trong "Ví voucher của tôi"

.


 


Những Câu Hỏi Thường Gặp Tham Gia Chương Trình
 

Làm thế nào để trở thành thành viên My Points?

 

-> Khách hàng có thể đăng kí tham gia chương trình My Points các cửa hàng Mykingdom, Hobiverse, Clever Collection.

 

Điểm tích lũy sẽ như thế nào khi chuyển qua chương trình mới?

 

-> Khách hàng được hưởng đặc quyền khi mua hàng tại các chuỗi cửa hàng Mykingdom, Hobiverse, Clever Collection có tham gia chương trình thành viên hoặc khi mua sắm trên website www.mykingdom.com.vn.

 

Lưu ý: quyền lợi tích điểm tạm thời chưa áp dụng đối với các website bán hàng Hobiverse, Clever Collection.

 

Danh sách cửa hàng áp dụng chương trình: tại đây

Không mua hàng có được đăng ký làm thành viên hay không? Có tốn chi phí gì không? Và khi đăng ký như thế có nhận được quà hay không?

 

-> Đăng ký thành viên miễn phí. Dù khách hàng không mua hàng vẫn có thể đăng ký thành viên và sẽ nhận được ưu đãi dành cho thành viên.

Có thể chuyển điểm của mình cho người thân và bạn bè không?

 

-> Điểm tích lũy không thể chuyển nhượng giữa các thành viên.

 

Sau khi đăng ký thành viên, điểm sẽ được tích lũy như thế nào?
 

-> Khách hàng sẽ được tích lũy: 

+ 1% đối với thành viên hạng Silver

+ 1.5% đối với thành viên hạng Gold

+ 2% đối với thành viên hạng Diamond

Trên đây là những chia sẻ đôi nét về My Points và hướng dẫn đăng kí tham gia chương trình.  Khách hàng có thể truy cập vào https://mypoints.com.vn/ để biết thêm thông tin chi tiết hoặc liên hệ Tổng Đài Chăm Sóc Khách Hàng 1900 1208 để được giải đáp thắc mắc và hỗ trợ giải quyết vấn đề.', N'https://www.mykingdom.com.vn/cdn/shop/articles/Banner_360_d_MKD.jpg?v=1712804763', N'Ra Mắt Chương Trình Thành Viên My Points')
INSERT [dbo].[News] ([news_id], [description], [image], [name]) VALUES (7, N'Nhằm vinh danh Ngày Quốc tế Phụ nữ 8/3, Mykingdom giới thiệu chương trình "Deal xịn tặng mẹ - Quà xinh cho bé". Các sản phẩm từ các thương hiệu đồ chơi uy tín như LEGO, TRANSFORMERS, KINETIC SAND, COOLKIDS... đều được giảm giá đến 40% từ ngày 1/3 đến 8/3.

Bộ Đôi Pom Sành Điệu Và Búp Bê Thời Trang - Cali Grizzly
Thương hiệu NA NA NA

SKU 575351EUC

Giảm 50% chỉ còn 400.000 VNĐ (Giá gốc 799.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Hãy cùng bước vào thế giới lấp lánh cùng Bộ đôi Pom sành điệu và búp bê thời trang - Cali Grizzly. Mỗi nàng búp bê thời trang Na Na Na đều đi kèm với một chiếc ví Pom lấp lánh, bé có thể vừa chơi với búp bê, vừa sở hữu một sản phẩm thời trang. Mái tóc dài của búp bê mềm mại, dễ dàng tạo kiểu, bé có thể thỏa sức sáng tạo và trải nghiệm với các kiểu tóc khác nhau. Búp bê có các khớp để tạo nên các tư thế chân thực, đem lại trải nghiệm vui chơi tuyệt vời. Sản phẩm có đến 6 nhân vật đang chờ bé sưu tập đấy.

deal-xin-tang-me-qua-xinh-cho-be-1

Bé Cherry Tiểu Thư
Thương hiệu BABY ALIVE

SKU E6943

Giảm 35% chỉ còn 844.000 VNĐ (Giá gốc 1.299.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Bé Cherry tiểu thư thuộc dòng búp bê ăn ị và uống nước đi tè của Baby Alive, không chỉ là một sản phẩm tập cho trẻ cách chăm sóc em bé mà còn là một người bạn đáng yêu, biến những khoảnh khắc làm chị trở nên đáng nhớ và ý nghĩa hơn bao giờ hết. Trẻ sẽ được tập tự tay cho ăn, thay tã, tạo kiểu tóc mới cho em, giúp con tập làm quen với thành viên mới một cách vô cùng gần gũi và thú vị.

deal-xin-tang-me-qua-xinh-cho-be-2

Đồ Chơi Trực Thăng Avatar
Thương hiệu VECTO

SKU VTYD-718

Giảm 30% chỉ còn 699.000 VNĐ (Giá gốc 999.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Đồ chơi trực thăng Avatar không chỉ mang lại niềm vui và thú vị cho trẻ em mà còn là biểu tượng của sự tiến bộ và sáng tạo trong công nghệ đồ chơi. Sản phẩm có khả năng tự giữ độ cao tân tiến, giúp cho việc điều khiển trở nên dễ dàng hơn bao giờ hết. Trực thăng còn được trang bị đèn LED đẹp mắt, tạo nên một màn trình diễn ánh sáng rực rỡ khi bay trong đêm. Với các tính năng độc đáo và thông tin về sản phẩm đầy đủ, đây chắc chắn sẽ là một lựa chọn tuyệt vời cho mọi gia đình có trẻ em.

deal-xin-tang-me-qua-xinh-cho-be-3

Ngôi Nhà Của Búp Bê Barbie
Thương hiệu BARBIE

SKU HCD47

Giảm 30% chỉ còn 1.084.000 VNĐ (Giá gốc 1.549.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Trong Ngôi nhà của búp bê Barbie xinh xắn, có trang bị đầy đủ các trang thiết bị nội thất hiện đại, mang phong cách Barbie đặc trưng, cùng các bé sáng tạo nên câu chuyện của riêng mình. Bé có thể tham quan xung quanh căn nhà, sau đó tổ chức buổi nấu ăn trong căn bếp đầy đủ tiện nghi, hay vui chơi cùng bạn bè và tạo nên một buổi chia sẻ thú vị giữa những người thích chơi búp bê. Sau khi chơi xong, trẻ có thể sắp xếp lại nội thất và gấp gọn để cất vào tủ, điều này còn góp phần tập cho con tính gọn gàng và tự lập đấy.

deal-xin-tang-me-qua-xinh-cho-be-4

Quầy Thu Ngân Vui Vẻ
Thương hiệu PLAYDOH

SKU E6890

Giảm 30% chỉ còn 454.000 VNĐ (Giá gốc 649.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Hóa thân thành người thu ngân thực thụ cùng Quầy thu ngân vui vẻ, trẻ thỏa thích nhào, nặn nên các loại thực phẩm khác nhau, mang đầy màu sắc bắt mắt. Đất nặn Playdoh có chất liệu an toàn phù hợp với trẻ em ở mọi lứa tuổi, hỗ trợ phát triển khả năng tư duy sáng tạo. Chiếc quầy nhựa được tích hợp nút bấm ở giữa máy tính tiền, âm thanh "Tít Tít" sẽ phát ra, giúp cho trẻ em có thể biết được rằng sản phẩm đã được tính tiền thành công.

deal-xin-tang-me-qua-xinh-cho-be-5

Đừng để bỏ lỡ cơ hội sắm quà ưu đãi nhân ngày Quốc tế Phụ nữ 8/3 tại Vương quốc đồ chơi! Mykingdom luôn sẵn lòng phục vụ và đồng hành cùng quý khách hàng trong mọi khoảnh khắc đáng nhớ của cuộc sống.', N'https://www.mykingdom.com.vn/cdn/shop/articles/deal-xin-tang-me-qua-xinh-cho-be_thumbnail.jpg?v=1709259384', N'Deal Xịn Tặng Mẹ - Quà Xinh Cho Bé')
INSERT [dbo].[News] ([news_id], [description], [image], [name]) VALUES (2, N'Cuối tháng rồi, mua đồ chơi ở đâu giá tốt? Tham khảo chương trình flash sale sinh nhật của Mykingdom ngay nhé. Bạn được mua đồ chơi giảm giá đến 35% từ 29/3 - 31/3 từ các thương hiệu nổi tiếng như: LEGO, MATTEL, DOLLSWORLD… Tham gia chương trình tại: https://www.mykingdom.com.vn/collections/flash-sale-mar24_2 và bắt đầu mua sắm ngay thôi.

Trò Chơi Trí Tuệ UNO ATTACK - Phiên Bản MÁY CHIA THẺ TỰ ĐỘNG
Thương hiệu MATTEL GAMES

SKU GXY78

Giảm 35% chỉ còn 714.000 VNĐ (Giá gốc 1.099.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Trò Chơi Trí Tuệ UNO ATTACK - Phiên Bản MÁY CHIA THẺ TỰ ĐỘNG là một phiên bản cực thú vị của bài UNO. Thay vì rút từng lá bài như kiểu truyền thống thì bạn chỉ cần ấn nút để máy phát thẻ bài cho bạn. Nếu may mắn thì máy sẽ không nhả thẻ, còn ngược lại thì bạn sẽ phải ôm kha khá thẻ và có khả năng thua cuộc trong ván đó. Hãy thử thách vận may và tư duy chiến lược với trò chơi này nhé!

sinh-nhat-tha-ga-khong-lo-ve-gia-1
JW Khủng Long INDORAPTOR
Thương hiệu JURASSIC WORLD MATTEL

SKU HKY11

Giảm 35% chỉ còn 1.039.000 VNĐ (Giá gốc 1.599.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

JW khủng long INDORAPTOR là loài khủng long hung bạo, độc ác từ kỷ Jura. Chú khủng long sở hữu móng vuốt khổng lồ, sắc nhọn, được tô điểm thêm hiệu ứng ánh kim độc đáo. Bé sẽ được quay ngược thời gian và khám phá những đặc điểm đáng sợ nhất của loài khủng long này, ví như tiếng gầm dũng mãnh, khớp miệng nhai và cách tạo dáng săn mồi…

sinh-nhat-tha-ga-khong-lo-ve-gia-2
JW Khủng Long RAJASAURUS Có Âm Thanh
Thương hiệu JURASSIC WORLD MATTEL

SKU HDX17-HDX45

Giảm 35% chỉ còn 584.000.000 VNĐ (Giá gốc 899.000.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

JW Khủng long RAJASAURUS có âm thanh được mô phỏng dựa trên loài khủng long Skorpiovenator (thợ săn bọ cạp). Bé sẽ được nhập vai vào chuyến phiêu lưu mạo hiểm nhưng cực kỳ thú vị thời tiền sử. Chú khủng long có nhiều khớp nối để bé tạo ra nhiều tư thế khác nhau nữa đấy.

sinh-nhat-tha-ga-khong-lo-ve-gia-3
Bé Tasha Tập Nói
Thương hiệu DOLLSWORLD

SKU DW60290

Giảm 30% chỉ còn 622.000 VNĐ (Giá gốc 889.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Học chăm em bé chưa bao giờ dễ dàng đến thế với đồ chơi Bé Tasha tập nói. Búp bê được làm từ chất liệu mềm mại và an toàn với sức khỏe của con trẻ. Bé sẽ được rèn cách ôm em, trò chuyện cùng em bé cũng như cho em uống sữa. Tất tần tật hoạt động cùng bé Tasha sẽ giúp trẻ học được cách yêu thương và chăm sóc người khác.

sinh-nhat-tha-ga-khong-lo-ve-gia-4
Thành Phố Singapore
Thương hiệu LEGOARCHITECTURE

SKU 21057

Giảm 30% chỉ còn 1.469.000 VNĐ (Giá gốc 2.099.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Tái hiện “Đảo quốc sư tử” với những địa điểm nổi bật nhất như Marina Bay Sands, Trung tâm OCBC, One Raffles Place, chợ Lau Pa Sat… cùng Đồ Chơi Thành Phố Singapore. Bé được thỏa thích lắp ráp và trưng bày những tác phẩm tuyệt đẹp, góp phần chắp cánh cho ước mơ khám phá thế giới của trẻ.

sinh-nhat-tha-ga-khong-lo-ve-gia-5
Thời gian sale rất ngắn nên bạn hãy tranh thủ bỏ vào giỏ hàng các sản phẩm mà bé nhà mình yêu thích nhé! Mykingdom chờ bạn đến dự sinh nhật đó!', N'https://www.mykingdom.com.vn/cdn/shop/articles/sinh-nhat-tha-ga-khong-lo-ve-gia_thumbnail.jpg?v=1711596767', N'Sinh Nhật Thả Ga - Không Lo Về Giá')
INSERT [dbo].[News] ([news_id], [description], [image], [name]) VALUES (3, N'Flash Sale chớp nhoáng trong 3 ngày 20/3 - 22/3 nhân dịp sinh nhật Mykingdom. Quý khách có cơ hội mua đồ chơi chính hãng giảm giá đến 35% từ các thương hiệu đồ chơi uy tín trên thế giới: LEGO, BABY ALIVE, MAISTO, MAKE IT REAL… 

Chi tiết chương trình tham khảo tại đường link: https://www.mykingdom.com.vn/collections/flash-sale-mar24_1 

Bé Bánh Táo Ngọt Ngào
Thương hiệu BABY ALIVE

SKU F7356

Giảm 35% chỉ còn 844.000 VNĐ (Giá gốc 1.299.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Chăm em bé khó quá đi mất, có cách nào tập làm quen không? Có chứ, tập chăm em bé cùng Đồ Chơi BABY ALIVE Bé Bánh Táo Ngọt Ngào nhé! Sản phẩm được mô phỏng tựa như một em bé thực thụ, có thể uống nước, ăn và đi vệ sinh. Trẻ sẽ được chơi cùng em bé, cùng em mặc những bộ quần áo xinh đẹp, đồng thời tập chăm sóc trẻ sơ sinh. Món đồ chơi này chính sự lựa chọn tuyệt vời cho bé tập làm quen khi gia đình có dự định chào đón thành viên mới đấy!

mung-sinh-nhat-giat-flash-sale-1
Tiệc Trà Với Bé Nia
Thương hiệu BABY ALIVE

SKU F0031

Giảm 35% chỉ còn 649.000 VNĐ (Giá gốc 999.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Bé Nia khát nước rồi, cùng cho em bé mum mum trong Tiệc Trà Với Bé Nia ngay thôi! Sau khi dùng trà xong thì bé lại muốn pee pee, bạn hãy hướng dẫn trẻ cách thay tã và chăm sóc em bé thật chỉn chu nhé. Các sản phẩm búp bê từ BABY ALIVE với các chức năng mô phỏng chi tiết, chân thật hứa hẹn sẽ cho bé những giờ chơi cực thú vị.

mung-sinh-nhat-giat-flash-sale-2
Máy Làm Kem Thần Kì Phiên Bản Mới PLAYDOH F7378
Thương hiệu PLAYDOH

SKU F7378

Giảm 35% chỉ còn 454.000 VNĐ (Giá gốc 699.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Trời nóng quá! Chơi gì đây ta? Bé hãy cùng Mykingdom làm nên những chiếc kem ngọt ngào, xua tan cái nóng mùa hè cùng với Đồ Chơi PLAYDOH Máy Làm Kem Thần Kì nhé! Bột nặn chất lượng cao dễ tạo hình, có nhiều màu sắc bắt mắt mà lại không dính tay và cực kỳ an toàn cho trẻ, đảm bảo bé nào cũng thích mê.

mung-sinh-nhat-giat-flash-sale-3
Xe Ferrari 458 Speciale A Mui Trần Mở Nắp Bằng Điều Khiển
Thương hiệu RASTAR

SKU R74500

Giảm 30% chỉ còn 839.000 VNĐ (Giá gốc 1.199.000 VNĐ)

Lưu ý: Giá sản phẩm được cập nhật đến thời điểm hiện tại và có thể thay đổi tùy theo từng chương trình khuyến mãi.

Bé yêu thích xe và muốn trình diễn các pha đua xe và ôm cua cực đỉnh cao? Vậy thì ba mẹ hãy nhanh tay sắm cho con Đồ Chơi RASTAR Xe Ferrari 458 Speciale A Mui Trần Mở Nắp Bằng Điều Khiển. Đồ chơi sẽ giúp bé thêm thích thú với các linh kiện, góp phần kích thích sự tò mò và sáng tạo cho trẻ.

mung-sinh-nhat-giat-flash-sale-4
Duy nhất 3 ngày! Không mua dịp này thì mua dịp nào nữa, ba mẹ ơi? Đồ chơi chính hãng tại Mykingdom luôn là lựa chọn hàng đầu của các bậc phụ huynh. Nhanh tay thêm vào giỏ hàng và chốt đơn thôi!', N'https://www.mykingdom.com.vn/cdn/shop/articles/mung-sinh-nhat-giat-flash-sale_thumbnail.png?v=1711016129', N'Mừng Sinh Nhật - Giật Flash Sale')
INSERT [dbo].[News] ([news_id], [description], [image], [name]) VALUES (6, N'Chỉ còn một tháng nữa thôi là năm 2022 sẽ khép lại. Càng về cuối năm, không khí mua sắm ngày càng náo nhiệt. Từ các cửa hàng trên phố cho đến các gian hàng online, khắp nơi đều giăng biển săn sale ngập tràn. Đây chính là cơ hội lý tưởng để bạn sắm sửa cho bản thân những món đồ yêu thích. Và cùng là dịp để dành tặng cho bạn bè, người thân những món quà thiết thực, ý nghĩa.

Tin vui cho bạn đây rồi! Từ ngày 8.12 đến hết 12.12, Mykingdom sẽ diễn ra đại tiệc sale online "12.12 - Deal hời chốt ngay" với vô vàn ưu đãi hấp dẫn. Các tín đồ săn sale, đặc biệt là các "fan" đồ chơi nhất định đừng bỏ lỡ thời điểm "chín muồi" để rinh về những món đồ chơi hiệu giá siêu hời.

Cùng khám phá những ưu đãi có 1-0-2 tại ngày hội 12.12 Siêu Sale trên website Mykingdom ngay bên dưới.

Hàng Loạt Đồ Chơi Chính Hãng Giảm Sâu Đến 45%
Trong 5 ngày vàng (từ ngày 8.12 đến 12.12), hàng trăm món đồ chơi hữu ích cho bé, từ đồ chơi vận động, đồ chơi trí tuệ cho đến các đồ dùng, dụng cụ học tập xinh xắn sẽ được ưu đãi đến 45%. Tất cả các sản phẩm này đến từ các thương hiệu đồ chơi nổi tiếng trên thế giới như Fisher Price, Hot Wheels, Bruder, Barbie, Battat, Clever Hippo, L.O.L Surprise, Royal Baby, Leapfrog... Hãy tận dụng cơ hội này để tự do mua sắm các món đồ chơi hàng hiệu vừa mang tính giải trí vừa mang tính giáo dục để bé yêu vui chơi và phát triển toàn diện.

Miễn Phí Vận Chuyển Cho Đơn Hàng Từ 500,000đ
Cũng trong thời gian siêu sale 12.12, Mykingdom tưng bừng miễn phí vận chuyển cho tất cả các đơn hàng từ 500,000đ. Đặc biệt, với đối tác vận chuyển Grab uy tín, chuyên nghiệp, giao hàng hỏa tốc trong vòng 2h, bạn có thể mua sắm thỏa thích mà không phải chờ đợi hay lo sợ phí vận chuyển quá cao. Bạn chỉ cần chọn mua sản phẩm ưng ý nhất, việc vận chuyển cứ để Mykingdom lo.



Vương quốc đồ chơi Mykingdom là chuỗi cửa hàng đồ chơi uy tín chất lượng với hơn 236 cửa hàng tại các thành phố lớn trên toàn quốc. Mykingdom cam kết cung cấp những sản phẩm đồ chơi cao cấp mang tính giáo dục, giúp phát triển cả tư duy và thể chất của bé. Tất cả sản phẩm đồ chơi tại Mykingdom đều có thương hiệu, xuất xứ rõ ràng, thông qua các kiểm định tiêu chuẩn quốc tế đảm bảo chất lượng và độ an toàn.

Nhân dịp mùa sale cuối năm, Vương quốc đồ chơi Mykingdom mang đến sự kiện ưu đãi dành cho mua sắm online Siêu sale 12.12 tại website https://www.mykingdom.com.vn/khuyen-mai/campaign-12-12-deal-hoi-chot-ngay.html. Nhanh chóng thêm vào giỏ hàng ngay hôm nay và "chốt đơn" từ ngày 8.12 đến hết ngày 12.12 để không bỏ lỡ ưu đãi hấp dẫn nhất bạn nhé!', N'https://www.mykingdom.com.vn/cdn/shop/articles/12-12-teasing-432x260.jpg?v=1686034083', N'Đại Tiệc Sale 12.12 Sắp Đổ Bộ, Vô Vàn Ưu Đãi Đang Chờ Đón')
SET IDENTITY_INSERT [dbo].[News] OFF
GO
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (2, N'Staff')
INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (3, N'Customer')
GO
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time]) VALUES (1, N'Mô Hình Đồ Chơi Detective Conan Carnival POP MART 6941848233653', 1, 280000.0000, N'Bộ sưu tập gồm 12 nhân vật thường và 1 nhân vật hiếm.

Kích thước: 6-9cm

Chất liệu: nhựa PVC/ABS', 7, 0.95, NULL, 30)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time]) VALUES (2, N'Mô Hình Universal Kung Fu Panda', 1, 280000.0000, N'Bộ sưu tập gồm 9 nhân vật thường và 1 nhân vật hiếm. Kích thước: 6-9cm Chất liệu: nhựa PVC/ABS', 7, 0.95, NULL, 30)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time]) VALUES (3, N'Mô Hình Disney Stitch On A Date POP MART 6941848254726', 1, 280000.0000, N'Bộ sưu tập gồm 12 nhân vật thường và 1 nhân vật hiếm. Chất liệu: PVC/ABS Kích thước: 7-10cm', 7, 0.95, NULL, 30)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time]) VALUES (4, N'Bộ Đường Đua Hot Wheels Xoắc Ốc Dốc Bay', 1, 650000.0000, N'THỬ THÁCH CHIỀU CAO - Chạy đến lồng của người chiến thắng trên đường đua Vòng & Khởi động Hot Wheels! Những chiếc xe chạy dọc theo đường ray và qua một vòng đưa chúng đến một cái lồng có thể cao tới 60cm trong không khí!', 8, 0.95, NULL, 30)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time]) VALUES (5, N'Đồ Chơi Xe Cảnh Sát Biến Hình Paw Patrol The Movie - Chase', 1, 909000.0000, N'Thương hiệu Canada. Được mô phỏng theo bộ phim hoạt hình nổi tiếng Đội Chó Cứu Hộ Paw Patrol. Từ màn ảnh nhỏ bước ra công chiếu thể giới với tên gọi Paw Patrol The Movie', 8, 0.95, NULL, 30)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time]) VALUES (6, N'Bộ 3 Siêu Xe Hot Wheels', 1, 199000.0000, N'Bộ ba chiếc xe mô hình được thiết kế vô cùng tinh xảo với tỷ lệ thu nhỏ 1/64 từ chiếc xe ngoài đời thật. Siêu xe được mô phỏng chính xác với hình ảnh xe thật giúp bé dễ dàng phân biệt và học hỏi về các phương tiện giao thông trong đời sống.', 8, 0.95, NULL, 30)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time]) VALUES (7, N'Đồ Chơi Lắp Ráp Trực Thăng Cứu Hỏa LEGO CITY 60411', 1, 209000.0000, N'Sẵn sàng cho các nhiệm vụ chữa cháy ly kỳ với Bộ LEGO® City Đồ chơi lắp ráp Trực thăng cứu hỏa! Lấy mũ bảo hiểm cứu hỏa và ống nhòm trinh sát từ ngăn chứa đồ, nhảy vào buồng lái và quay cánh quạt để bay lên không trung.', 1, 0.95, NULL, 30)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time]) VALUES (8, N'Đồ Chơi Lắp Ráp Xe Đua Thể Thao Xanh Lá Cây LEGO CITY 60399', 1, 209000.0000, N' Cùng các tay đua siêu ngầu chuẩn bị cho màn tăng tốc hoành tráng! Kiểm tra lốp xe và vượt qua các khúc cua, sau đó lao qua các nhiếp ảnh gia để vượt qua vạch đích trong thời gian kỷ lục', 1, 0.95, NULL, 30)
INSERT [dbo].[Toy] ([toy_id], [toy_name], [quantity], [price], [description], [category_id], [discount], [approve], [warranty_time]) VALUES (9, N'Đồ Chơi Lắp Ráp Xe Cảnh Sát Truy Đuổi Tội Phạm LEGO CITY 60415', 1, 599000.0000, N'Đã có một tên trộm bẻ khóa! Tiến vào buồng lái của cảnh sát và lên đường truy đuổi những tên tội phạm tại Thành phố LEGO®. Siêu xe này được trang bị cánh lướt gió lớn phía sau và lốp có cấu hình cao để tăng tốc độ và khả năng bám đường', 1, 0.95, NULL, NULL)
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
