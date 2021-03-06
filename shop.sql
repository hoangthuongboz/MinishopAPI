USE [shop]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [smallint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](64) NOT NULL,
	[Description] [nvarchar](512) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Member]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Member](
	[MemberId] [bigint] NOT NULL,
	[Username] [varchar](32) NOT NULL,
	[Password] [binary](64) NOT NULL,
	[Email] [varchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberInRole]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberInRole](
	[MemberId] [bigint] NOT NULL,
	[RoleId] [int] NOT NULL,
	[IsDelete] [bit] NOT NULL DEFAULT ((0))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ProductName] [nvarchar](128) NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] NOT NULL,
	[RoleName] [varchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cart] ([CartId], [ProductId], [Quantity]) VALUES (1156695328177433184, 2, 7)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description]) VALUES (1, N'Freeze', N'Sảng khoái với thức uống đá xay phong cách Việt. Freeze là thức uống đá xay mát lạnh được pha chế từ cà phê Việt, trà xanh, sô cô la hay các loại trái cây đặc trưng của Việt Nam')
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description]) VALUES (2, N'Cà phê', N'Sự kết hợp hoàn hảo giữa hạt cà phê Robusta &amp; Arabica thượng hạng được trồng trên những vùng cao nguyên Việt Nam màu mỡ, qua những bí quyết rang xay độc đáo, Highlands Coffee chúng tôi tự hào giới thiệu những dòng sản phẩm Cà phê mang hương vị đậm đà và tinh tế')
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description]) VALUES (3, N'Trà', N'Hương vị tự nhiên, thơm ngon của Trà Việt với phong cách hiện đại tại Highlands Coffee sẽ giúp bạn gợi mở vị giác của bản thân và tận hưởng một cảm giác thật khoan khoái, tươi mới.')
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description]) VALUES (4, N'Bánh mì', N'Bạn đã quá quen thuộc với Bánh mì Việt Nam. Hãy nếm thử một miếng Bánh mì ngon, giòn, nóng hổi tại Highlands Coffee. Một kết hợp hoàn hảo giữa lớp nhân chua, cay, mặn, ngọt quyện với lớp vỏ bánh mì giòn tan, mịn màng tạo ra tầng tầng lớp lớp dư vị cho thực khách.')
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [Description]) VALUES (5, N'Khác', N'Sẽ càng ngon miệng hơn khi bạn kết hợp đồ uống với những chiếc bánh ngọt thơm ngon được làm thủ công hàng ngày ngay tại bếp bánh của Highlands Coffee, và cũng đừng quên sắm cho mình bộ bí kíp pha cà phê tại nhà gồm Phin inox, ly sứ Mosaic và cà phê gói Truyền thống mỗi khi có thời gian rảnh rỗi nhé.')
SET IDENTITY_INSERT [dbo].[Category] OFF
INSERT [dbo].[Member] ([MemberId], [Username], [Password], [Email]) VALUES (176595401000091868, N'acb', 0x15BF34F08A75544C1B20311F20565025B5DEBBCF94FD516C6D35F2357572F7126E0FD78E8696ABB0D0A9EC72E16929AA7712B2F413932A14A58B3B9AAE635E78, N'acb@gmail.com')
INSERT [dbo].[Member] ([MemberId], [Username], [Password], [Email]) VALUES (962940404918655408, N'admin', 0x6FD8A78DC86D8F48C9AD4316DA242125F9C32B085F35C665EF592B60F5CD5B41D06EF21C7A95B922F1783630052C33888614BAAA61E06CE9DA740538F9924C6C, N'admin@gmail.com')
INSERT [dbo].[Member] ([MemberId], [Username], [Password], [Email]) VALUES (1322561733575860956, N'thuong', 0xE849E2EF1ED18672A5F714808E95F7C851D6AEC9C49F547248037474B5D96A0E4B84A9C71F03F2E2C37B19C149AF0EAA5518DD9BF2CC612CF74D7D8181847130, N'thuong@gmail.com')
INSERT [dbo].[Member] ([MemberId], [Username], [Password], [Email]) VALUES (4378654409304801600, N'lep', 0x5D77FE749AE6E091CC7B1090CACE51D22FC2991C05A2334F87708E52DA81E5AF9A70BA52101B422C93477E6D5CBAA9CC4643EEBD1B9D0730BF04D1644B0D2C18, N'admin@gmail.com')
INSERT [dbo].[MemberInRole] ([MemberId], [RoleId], [IsDelete]) VALUES (962940404918655408, 1400031737, 0)
INSERT [dbo].[MemberInRole] ([MemberId], [RoleId], [IsDelete]) VALUES (1322561733575860956, 1186665084, 0)
INSERT [dbo].[MemberInRole] ([MemberId], [RoleId], [IsDelete]) VALUES (176595401000091868, 1186665084, 0)
INSERT [dbo].[MemberInRole] ([MemberId], [RoleId], [IsDelete]) VALUES (1322561733575860956, 827599740, 0)
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (1, 1, N'Phin Sữa Đá', 290000, 50, N'Hương vị cà phê Việt Nam đích thực! Từng hạt cà phê hảo hạng được chọn bằng tay, phối trộn độc đáo giữa hạt Robusta từ cao nguyên Việt Nam, thêm Arabica thơm lừng. Cà phê được pha từ Phin truyền thống, hoà cùng sữa đặc sánh và thêm vào chút đá tạo nên ly Phin Sữa Đá – Đậm Đà Chất Phin.', N'phin-sua-da.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (2, 1, N'Phin Đen Đá', 290000, 50, N'Dành cho những tín đồ cà phê đích thực! Hương vị cà phê truyền thống được phối trộn độc đáo tại Highlands. Cà phê đậm đà pha hoàn toàn từ Phin, cho thêm 1 thìa đường, một ít đá viên mát lạnh, tạo nên Phin Đen Đá mang vị cà phê đậm đà chất Phin.', N'phin-den-da.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (3, 1, N'Phin Đen Nóng', 290000, 50, N'Dành cho những tín đồ cà phê đích thực! Hương vị cà phê truyền thống được phối trộn độc đáo tại Highlands. Cà phê đậm đà pha từ Phin, cho thêm 1 thìa đường, mang đến vị cà phê đậm đà chất Phin.', N'phin-den-nong.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (4, 1, N'Phin Sữa Nóng', 290000, 50, N'Hương vị cà phê Việt Nam đích thực! Từng hạt cà phê hảo hạng được chọn bằng tay, phối trộn độc đáo giữa hạt Robusta từ cao nguyên Việt Nam, thêm Arabica thơm lừng. Kết hợp với nước sôi từng giọt cà phê được chiết xuất từ Phin truyền thống, hoà cùng sữa đặc sánh tạo nên ly Phin Sữa Nóng – Đậm đà chất Phin.', N'phin-sua-nong.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (5, 1, N'Mocha Macchiato', 590000, 50, N'Một thức uống yêu thích được kết hợp bởi giữa sốt sô cô la ngọt ngào, sữa tươi và đặc biệt là cà phê espresso đậm đà mang thương hiệu Highlands Coffee. Bạn có thể tùy thích lựa chọn uống nóng hoặc dùng chung với đá.', N'mocha-macchiato.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (6, 1, N'Espresso', 440000, 50, N'Đích thực là ly cà phê espresso ngon đậm đà! Được chiết xuất một cách hoàn hảo từ loại cà phê rang được phối trộn độc đáo từ những hạt cà phê Robusta và Arabica chất lượng hảo hạng', N'espresso.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (7, 1, N'Americano', 440000, 50, N'Americano tại Highlands Coffee là sự kết hợp giữa cà phê espresso thêm vào nước đun sôi. Bạn có thể tùy thích lựa chọn uống nóng hoặc dùng chung với đá.', N'americano.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (8, 1, N'Latte', 540000, 50, N'Ly cà phê sữa ngọt ngào đến khó quên! Với một chút nhẹ nhàng hơn so với Cappuccino, Latte của chúng tôi bắt đầu với cà phê espresso, sau đó thêm sữa tươi và bọt sữa một cách đầy nghệ thuật. Bạn có thể tùy thích lựa chọn uống nóng hoặc dùng chung với đá.', N'latte.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (9, 2, N'Caramel Phin Freeze', 490000, 50, N'Thơm ngon khó cưỡng! Được kết hợp từ cà phê truyền thống chỉ có tại Highlands Coffee, cùng với caramel, thạch cà phê và đá xay mát lạnh. Trên cùng là lớp kem tươi thơm béo và caramel ngọt ngào. Món nước phù hợp trong những cuộc gặp gỡ bạn bè, bởi sự ngọt ngào thường mang mọi người xích lại gần nhau. ', N'caramel-phin-freeze.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (10, 2, N'Classic Phin Freeze', 490000, 50, N'Thơm ngon đậm đà! Được kết hợp từ cà phê pha Phin truyền thống chỉ có tại Highlands Coffee, cùng với thạch cà phê và đá xay mát lạnh. Trên cùng là lớp kem tươi thơm béo và bột ca cao đậm đà. Món nước hoàn hảo để khởi đầu câu chuyện cùng bạn bè.', N'classic-phin-freeze.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (11, 2, N'Freeze Trà Xanh', 490000, 50, N'Thức uống rất được ưa chuộng! Trà xanh thượng hạng từ cao nguyên Việt Nam, kết hợp cùng đá xay, thạch trà dai dai, thơm ngon và một lớp kem dày phủ lên trên vô cùng hấp dẫn. Freeze Trà Xanh thơm ngon, mát lạnh, chinh phục bất cứ ai!', N'freeze-tra-xanh.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (12, 2, N'Cookies & Cream', 490000, 50, N'Một thức uống ngon lạ miệng bởi sự kết hợp hoàn hảo giữa cookies sô cô la giòn xốp cùng hỗn hợp sữa tươi cùng sữa đặc đem say với đá viên, và cuối cùng không thể thiếu được chính là lớp kem whip mềm mịn cùng cookies sô cô la say nhuyễn.', N'cookies-cream.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (13, 2, N'Freeze Sô-cô-la', 490000, 50, N'Thiên đường đá xay sô cô la! Từ những thanh sô cô la Việt Nam chất lượng được đem xay với đá cho đến khi mềm mịn, sau đó thêm vào thạch sô cô la dai giòn, ở trên được phủ một lớp kem whip beo béo và sốt sô cô la ngọt ngào. Tạo thành Freeze Sô-cô-la ngon mê mẩn chinh phục bất kì ai!', N'freeze-socola.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (14, 3, N'Trà Sen Vàng', 390000, 50, N'Thức uống chinh phục những thực khách khó tính! Sự kết hợp độc đáo giữa trà Ô long, hạt sen thơm bùi và củ năng giòn tan. Thêm vào chút sữa sẽ để vị thêm ngọt ngào.', N'tra-sen-vang.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (15, 3, N'Trà Thạch Vải', 39000, 70, N'Một sự kết hợp thú vị giữa trà đen, những quả vải thơm ngon và thạch vàng giòn béo, mang đến thức uống tuyệt hảo!', N'tra-thach-vai.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (16, 3, N'Trà Thạch Đào', 39000, 70, N'Vị trà đậm đà kết hợp cùng những miếng đào thơm ngon mọng nước cùng thạch đào giòn dai. Thêm vào ít sữa để gia tăng vị béo.', N'tra-thach-dao.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (17, 3, N'Trà Thanh Đào', 39000, 70, N'Một trải nghiệm thú vị khác! Sự hài hòa giữa vị trà cao cấp, vị sả thanh mát và những miếng đào thơm ngon mọng nước sẽ mang đến cho bạn một thức uống tuyệt vời.', N'tra-thanh-dao.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (18, 4, N'Thịt nướng', 19000, 70, N'Đặc sản của Việt Nam! Bánh mì giòn với nhân thịt nướng, rau thơm và gia vị đậm đà, hòa quyện trong lớp nước sốt tuyệt hảo.', N'thit-nuong.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (19, 4, N'Xíu mại', 19000, 70, N'Bánh mì Việt Nam giòn thơm, với nhân thịt viên hấp dẫn, phủ thêm một lớp nước sốt cà chua ngọt, cùng với rau tươi và gia vị đậm đà.', N'xiu-mai.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (20, 4, N'Gà Xé Nước Tương', 19000, 70, N'Bánh mì Việt Nam giòn thơm với nhân gà xé, rau, gia vị hòa quyện cùng nước sốt đặc biệt.', N'ga-xe-nuoc-tuong.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (21, 4, N'Chả lụa xá xíu', 19000, 70, N'Bánh mì Việt Nam giòn thơm với chả lụa và thịt xá xíu thơm ngon, kết hợp cùng rau và gia vị, hòa quyện cùng nước sốt độc đáo.', N'cha-lua-xa-xiu.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (22, 5, N'Bánh Mousse Cacao', 29000, 70, N'Bánh Mousse Ca Cao, là sự kết hợp giữa ca-cao Việt Nam đậm đà cùng kem tươi.', N'banh-mousse-cacao.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (23, 5, N'Bánh Sô-cô-la Highlands', 29000, 70, N'Một chiếc bánh độc đáo! Sô cô la ngọt ngào và kem tươi béo ngậy, được phủ thêm một lớp sô cô la mỏng bên trên cho thêm phần hấp dẫn.', N'banh-socola-highlands.png')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (24, 5, N'Bánh Caramel Phô Mai', 29000, 70, N'Ngon khó cưỡng! Bánh phô mai thơm béo được phủ bằng lớp caramel ngọt ngào', N'banh-caramel-pho-mai.jpg')
INSERT [dbo].[Product] ([ProductId], [CategoryId], [ProductName], [Price], [Quantity], [Description], [ImageUrl]) VALUES (25, 5, N'Bánh Mousse Đào', 29000, 70, N'Một sự kết hợp khéo léo giữa kem và lớp bánh mềm, được phủ lên trên vài lát đào ngon tuyệt.', N'banh-mousse-dao.png')
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1400031737, N'Administrator')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (552116943, N'Customer')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1186665084, N'Member')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (827599740, N'Staff')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1657562242, N'Supplier')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1505278279, N'Vendor')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Role__8A2B616097A4CE3F]    Script Date: 5/14/2020 10:44:24 PM ******/
ALTER TABLE [dbo].[Role] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_ProductId]
GO
ALTER TABLE [dbo].[MemberInRole]  WITH CHECK ADD FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[MemberInRole]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_CategoryId]
GO
/****** Object:  StoredProcedure [dbo].[AddCart]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddCart]
(
	@Id BIGINT,
	@ProductId INT,
	@Quantity INT
)
AS
BEGIN
	IF EXISTS (SELECT * FROM Cart WHERE CartId = @Id AND ProductId = @ProductId)
		UPDATE Cart SET Quantity += @Quantity WHERE CartId = @Id AND ProductId = @ProductId
	ELSE
		INSERT INTO Cart (CartId, ProductId, Quantity) VALUES (@Id, @ProductId, @Quantity);
END



GO
/****** Object:  StoredProcedure [dbo].[AddCategory]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddCategory]
(
	@Name NVARCHAR(64),
	@Description NVARCHAR(512)
)
AS
BEGIN
	INSERT INTO Category (CategoryName, Description) VALUES (@Name, @Description);
END

GO
/****** Object:  StoredProcedure [dbo].[AddMember]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddMember]
(
	@Id BIGINT,
	@Username VARCHAR(32),
	@Password BINARY(64),
	@Email VARCHAR(128)
)
AS
BEGIN
	IF NOT EXISTS(SELECT * FROM Member WHERE Username = @Username)
	BEGIN 
		INSERT INTO Member(MemberId,Username,Password,Email) VALUES
			(@Id,@Username,@Password,@Email);
			RETURN 1;
	END
	ELSE
		RETURN 0;
END

GO
/****** Object:  StoredProcedure [dbo].[AddProduct]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddProduct]
(
	@CategoryId INT,
	@Name NVARCHAR(128),
	@Price INT,
	@Quantity SMALLINT,
	@Description NVARCHAR(MAX),
	@ImageUrl NVARCHAR(128) = NULL
)
AS
	INSERT INTO Product(CategoryId, ProductName, Price, Quantity, Description, ImageUrl) VALUES
		(@CategoryId, @Name, @Price, @Quantity, @Description, @ImageUrl);



GO
/****** Object:  StoredProcedure [dbo].[AddRole]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddRole]
(
	@Id INT,
	@Name VARCHAR(16)
)
AS
	INSERT INTO Role(RoleId, RoleName) VALUES (@Id, @Name);



GO
/****** Object:  StoredProcedure [dbo].[DeleteCart]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteCart](@Id BIGINT, @ProductId INT)
AS
	DELETE FROM Cart WHERE CartId=@Id AND ProductId=@ProductId;



GO
/****** Object:  StoredProcedure [dbo].[DeleteCategory]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteCategory](@Id INT)
AS
	DELETE FROM Category WHERE CategoryId = @Id;



GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteProduct](@Id INT)
AS
	DELETE FROM Product WHERE ProductId=@Id;



GO
/****** Object:  StoredProcedure [dbo].[DeleteRole]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteRole](@Id INT)
AS
	DELETE FROM Role WHERE RoleId=@Id;



GO
/****** Object:  StoredProcedure [dbo].[EditCart]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[EditCart](@Id BIGINT, @ProductId INT, @Quantity SMALLINT)
AS
	UPDATE Cart SET Quantity=@Quantity WHERE CartId=@Id AND ProductId=@ProductId;



GO
/****** Object:  StoredProcedure [dbo].[EditCategory]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditCategory]
(
	@Id INT,
	@Name NVARCHAR(64),
	@Description NVARCHAR(512)
)
AS
BEGIN
	UPDATE Category SET CategoryName = @Name, Description = @Description WHERE CategoryId = @Id;
END



GO
/****** Object:  StoredProcedure [dbo].[EditProduct]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditProduct]
(
	@Id INT,
	@CategoryId INT,
	@Name NVARCHAR(128),
	@Price INT,
	@Quantity SMALLINT,
	@Description NVARCHAR(MAX),
	@ImageUrl NVARCHAR(128) = NULL
)
AS
	UPDATE Product SET CategoryId = @CategoryId, ProductName = @Name, Price = @Price, Quantity = @Quantity, Description = @Description, ImageUrl = @ImageUrl 
		WHERE ProductId = @Id;



GO
/****** Object:  StoredProcedure [dbo].[EditRole]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditRole]
(
	@Id INT,
	@Name VARCHAR(16)
)
AS
	UPDATE Role SET RoleName=@Name WHERE RoleId=@Id;



GO
/****** Object:  StoredProcedure [dbo].[GetCarts]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetCarts](@Id BIGINT)
AS
	SELECT CartId, Cart.ProductId, ProductName, Price, Cart.Quantity, ImageUrl 
	FROM Cart JOIN Product ON Cart.ProductId = Product.ProductId AND CartId = @Id;



GO
/****** Object:  StoredProcedure [dbo].[GetCategories]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetCategories]
AS
	SELECT * FROM Category;



GO
/****** Object:  StoredProcedure [dbo].[GetCategoriesAndProducts]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetCategoriesAndProducts]
AS
BEGIN
	SELECT * FROM Product;
	SELECT * FROM Category;
END



GO
/****** Object:  StoredProcedure [dbo].[GetCategoryById]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	
CREATE PROC [dbo].[GetCategoryById](@id INT)
AS
	SELECT * FROM Category WHERE CategoryId = @id;



GO
/****** Object:  StoredProcedure [dbo].[GetCategoryDetail]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetCategoryDetail](@Id INT)
AS
BEGIN
	SELECT * FROM Category WHERE CategoryId=@ID;
	SELECT * FROM Product WHERE CategoryId=@Id;
END



GO
/****** Object:  StoredProcedure [dbo].[GetMemberAndRoles]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetMemberAndRoles](@Id BIGINT)
AS
BEGIN
	SELECT MemberId, Username, Email FROM Member WHERE MemberId=@Id;
	--IIF(MemberId IS NULL,0,1) kieu int nen phai dung CAST ep kieu ve kieu BIT
	SELECT Role.RoleId,RoleName,CAST(IIF(MemberId IS NULL,0,1)AS BIT)AS Checked FROM Role LEFT JOIN 
		(SELECT MemberId,RoleId FROM MemberInRole WHERE MemberId=@Id AND IsDelete=0) AS Tbl
		ON Role.RoleId=Tbl.RoleId;
END



GO
/****** Object:  StoredProcedure [dbo].[GetMemberById]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetMemberById](@Id BIGINT)
AS
	SELECT * FROM Member WHERE MemberId=@Id;



GO
/****** Object:  StoredProcedure [dbo].[GetMembers]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetMembers]
AS
	SELECT * FROM Member;



GO
/****** Object:  StoredProcedure [dbo].[GetProductById]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetProductById](@Id INT)
AS
	SELECT * FROM Product WHERE ProductId = @Id;



GO
/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetProducts]
AS
	SELECT * FROM Product;



GO
/****** Object:  StoredProcedure [dbo].[GetProductsByCategory]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[GetProductsByCategory](@Id INT)
AS
	SELECT * FROM Product WHERE CategoryId = @Id;



GO
/****** Object:  StoredProcedure [dbo].[GetProductsDetail]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetProductsDetail](@Id INT)
AS
BEGIN
	SELECT * FROM Product WHERE ProductId=@Id;
	DECLARE @CategoryId INT;
	SELECT @CategoryId=CategoryId FROM Product WHERE ProductId=@Id;
	SELECT * FROM Product WHERE ProductId<>@Id AND CategoryId=@CategoryId;
END



GO
/****** Object:  StoredProcedure [dbo].[GetProductsPagination]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetProductsPagination]
(
	@Start INT,
	@END INT,
	@Total INT OUTPUT
)
AS
	BEGIN
		SELECT * FROM --SELECT ROW_NUMBER() OVER(ORDER BY ProductId) AS RowNum, * FROM Product chon nhung hang (ung voi productid tu bang Product) nam giua vi tri start va end
			(SELECT ROW_NUMBER() OVER(ORDER BY ProductId) AS RowNum, * FROM Product) AS Tbl
			WHERE Tbl.RowNum BETWEEN @Start AND @End;
		SELECT @Total=COUNT(*) FROM Product;
	END



GO
/****** Object:  StoredProcedure [dbo].[GetProductsRelation]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[GetProductsRelation](@Id INT, @CategoryId INT)
AS
	SELECT * FROM Product WHERE ProductId <> @Id AND CategoryId = @CategoryId;



GO
/****** Object:  StoredProcedure [dbo].[GetRoleById]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetRoleById](@Id INT)
AS
	SELECT * FROM Role WHERE RoleId=@Id;



GO
/****** Object:  StoredProcedure [dbo].[GetRoles]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--delete from role
--delete from memberinrole
--delete from member
CREATE PROC [dbo].[GetRoles]
AS
	SELECT * FROM Role;



GO
/****** Object:  StoredProcedure [dbo].[ProductsPagination]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ProductsPagination]
(
	@Start INT,
	@END INT
	--@Total INT OUTPUT
)
AS
	BEGIN
		SELECT * FROM --SELECT ROW_NUMBER() OVER(ORDER BY ProductId) AS RowNum, * FROM Product chon nhung hang (ung voi productid tu bang Product) nam giua vi tri start va end
			(SELECT ROW_NUMBER() OVER(ORDER BY ProductId) AS RowNum, * FROM Product) AS Tbl
			WHERE Tbl.RowNum BETWEEN @Start AND @End;
		--SELECT @Total=COUNT(*) FROM Product;
	END

GO
/****** Object:  StoredProcedure [dbo].[SaveMemberInRole]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SaveMemberInRole]
(	
	@MemberId BIGINT,
	@RoleId INT
)
AS
BEGIN
	IF EXISTS(SELECT 1 FROM MemberInRole WHERE MemberId=@MemberId AND RoleId=@RoleId)
		UPDATE MemberInRole SET IsDelete=~IsDelete WHERE MemberId=@MemberId AND RoleId=@RoleId;
	ELSE
		INSERT INTO MemberInRole(MemberId,RoleId) VALUES (@MemberId,@RoleId);
		--O day k lay gia tri cua IsDelete nen khi check thi Default se = 0 con khi bo check thi no se goi lenh Updata thi no se phu dinh va =1 
END



GO
/****** Object:  StoredProcedure [dbo].[SearchProducts]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SearchProducts](@Q NVARCHAR(32))
AS
	BEGIN
		SELECT * FROM Product WHERE ProductName LIKE @Q;--LAY TAT CA SAN PHAM CO CHUA Q
	END



GO
/****** Object:  StoredProcedure [dbo].[SearchProductsAdvance]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SearchProductsAdvance]
(
	@CategoryId INT = NULL,
	@Price INT = NULL,
	@Name NVARCHAR(64) = NULL
)
AS
BEGIN 
	SELECT * FROM Product WHERE (CategoryId=@CategoryId OR @CategoryId IS NULL)
	AND (Price = @Price OR @Price IS NULL) AND (ProductName LIKE '%' + @Name + '%' OR @Name IS NULL)
END


GO
/****** Object:  StoredProcedure [dbo].[SearchProductsPagination]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SearchProductsPagination](@Q NVARCHAR(32), @Start INT, @End INT, @Total INT OUT)
AS
	BEGIN 
		SELECT * FROM 
		(SELECT ROW_NUMBER() OVER(ORDER BY ProductId) AS RowNum, * FROM Product WHERE ProductName LIKE @Q) AS Tbl
			 WHERE RowNum BETWEEN @Start AND @End;
		SELECT @Total =COUNT(*) FROM Product WHERE ProductName LIKE @Q;
	END



GO
/****** Object:  StoredProcedure [dbo].[SearchProductsPaginationByQ]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SearchProductsPaginationByQ](@Q NVARCHAR(32), @Start INT, @End INT)
AS
	BEGIN 
		SELECT * FROM 
		(SELECT ROW_NUMBER() OVER(ORDER BY ProductId) AS RowNum, * FROM Product WHERE ProductName LIKE @Q) AS Tbl
			 WHERE RowNum BETWEEN @Start AND @End;
		--SELECT @Total =COUNT(*) FROM Product WHERE ProductName LIKE @Q;
	END

GO
/****** Object:  StoredProcedure [dbo].[SignIn]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SignIn]
(
	@Username VARCHAR(32),
	@Password BINARY(64)
)
AS
BEGIN
	IF EXISTS (SELECT * FROM Member WHERE Username=@Username)
	BEGIN 
		SELECT MemberId,Username,Email FROM Member WHERE Username=@Username AND Password=@Password;
		SELECT Role.RoleId,Role.RoleName FROM Role JOIN MemberInRole ON Role.RoleId=MemberInRole.RoleId 
			JOIN Member ON Member.MemberId=MemberInRole.MemberId WHERE Username=@Username AND Password=@Password;
		RETURN 1;
	END
	RETURN 0;
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateMember]    Script Date: 5/14/2020 10:44:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateMember]
(
	--@Id BIGINT,
	@Username VARCHAR(32),
	@OldPassword BINARY(64),
	@NewPassword BINARY(64)
)
AS
BEGIN
	--UPDATE Member SET Password= @NewPassword WHERE MemberId = @Id;
	UPDATE Member SET Password= @NewPassword WHERE Username=@UserName AND Password=@OldPassword;
END

GO
