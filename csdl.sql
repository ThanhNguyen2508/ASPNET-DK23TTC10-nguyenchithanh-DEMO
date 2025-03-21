create database [DBWebCafe]
go
USE [DBWebCafe]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/6/2025 10:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 3/6/2025 10:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[ShortDescription] [nvarchar](500) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[PublishedDate] [datetime] NOT NULL,
	[TopicId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/6/2025 10:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[View] [int] NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Topics]    Script Date: 3/6/2025 10:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Topics](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.Topics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/6/2025 10:13:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Cà Phê Truyền Thống')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Cà Phê Ý')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Cà Phê Đặc Biệt')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Thức Uống Khác')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Content], [ImageUrl], [PublishedDate], [TopicId]) VALUES (1, N'Cà phê đặc sản', N'Cà phê đặc sản – con đường khẳng định chất lượng cà phê Việt Nam', N'<p>N&oacute;i kh&ocirc;ng ngoa khi kh&aacute;i niệm c&agrave; ph&ecirc; đặc sản đ&atilde; l&agrave; nền tảng l&agrave;m s&ocirc;i đ&ocirc;ng thị trường c&agrave; ph&ecirc; Việt Nam trong những năm gần đ&acirc;y, tuy nhi&ecirc;n tr&ecirc;n thế giới cụm từ c&agrave; ph&ecirc; đặc sản đ&atilde; phổ biến gần 3 thập kỷ qua, khi m&agrave; nhu cầu người ti&ecirc;u d&ugrave;ng quan t&acirc;m nhiều hơn đến chất lượng ly c&agrave; ph&ecirc; họ d&ugrave;ng mỗi ng&agrave;y. C&agrave; ph&ecirc; đặc sản đ&atilde; tạo ra l&agrave;n s&oacute;ng c&agrave; ph&ecirc; thứ 3, v&agrave; trong l&agrave;n s&oacute;ng đ&oacute;, Việt Nam quốc gia xuất khẩu c&agrave; ph&ecirc; lớn nhất nh&igrave; thế giới kh&ocirc;ng đứng ngo&agrave;i cuộc chơi khi c&aacute;c n&ocirc;ng trại, c&aacute;c nh&agrave; chế biến, c&aacute;c nh&agrave; rang, c&aacute;c barista ngồi lại c&ugrave;ng nhau x&acirc;y dựng h&igrave;nh ảnh định vị c&agrave; ph&ecirc; Việt Nam kh&ocirc;ng chỉ số lượng m&agrave; c&ograve;n chất lượng. Nhiều mẫu c&agrave; ph&ecirc; đặc sản Việt Nam đ&atilde; khiến cho giới mộ c&agrave; thế giới ngạc nhi&ecirc;n bởi những cảm x&uacute;c cung bậc đặc biệt m&agrave; hạt c&agrave; ph&ecirc; Việt được chế biến theo c&aacute;ch thức đặc sản mang lại.</p>

<p>Theo Hiệp hội C&agrave; ph&ecirc; đặc sản thế giới (SCA &ndash; Specialty Coffee Association) trong thang điểm từ 1-100, c&agrave; ph&ecirc; cần phải đạt tối thiểu 80 điểm mới được coi l&agrave; c&agrave; ph&ecirc; đặc sản. Thang điểm n&agrave;y được x&acirc;y dựng theo nhiều ti&ecirc;u ch&iacute;, trong đ&oacute; c&oacute; c&aacute;c yếu tố li&ecirc;n quan đến thổ nhưỡng, m&ugrave;i hương, độ chua, ngọt, chất lượng hạt v&agrave; phương thức chế biến. C&agrave; ph&ecirc; đặc sản l&agrave; sản phẩm ti&ecirc;u d&ugrave;ng cuối c&ugrave;ng, tức l&agrave; c&agrave; ph&ecirc; khi đến tay người ti&ecirc;u d&ugrave;ng chứ kh&ocirc;ng phải l&agrave; hạt c&agrave; ph&ecirc;, theo đ&oacute; c&agrave; ph&ecirc; đặc sản l&agrave; một sản phẩm đồ uống c&oacute; chất lượng độc đ&aacute;o, một hương vị ri&ecirc;ng biệt, c&aacute; t&iacute;nh kh&aacute;c biệt v&agrave; vượt trội so với c&agrave; ph&ecirc; th&ocirc;ng thường.&nbsp;Như vậy C&agrave; ph&ecirc; đặc sản c&oacute; t&aacute;c dụng dẫn dắt n&acirc;ng cao cho chất lượng ng&agrave;nh c&agrave; ph&ecirc;, bằng c&aacute;ch c&agrave; ph&ecirc; đặc sản phải l&agrave; phải h&aacute;i tr&aacute;i ch&iacute;n, sẽ gi&uacute;p khắc phục hiện trạng thu h&aacute;i c&agrave; ph&ecirc; xanh tr&agrave;n lan hiện nay v&agrave; n&acirc;ng cao chất lượng trong kh&acirc;u chế biến, bảo quản sau thu hoạch.</p>

<p>Một v&agrave;i năm trở lại đ&acirc;y, nhận thấy được nhu cầu của c&aacute;c nh&agrave; rang xay v&agrave; người ti&ecirc;u d&ugrave;ng muốn sử dụng sản phẩm c&agrave; ph&ecirc; chất lượng cao, Một số đơn vị chủ yếu l&agrave; c&aacute;c Farm đ&atilde; chủ động đổi mới, s&aacute;ng tạo trong phương ph&aacute;p sản xuất v&agrave; chế biến để sản phẩm c&agrave; ph&ecirc; đạt được chất lượng cao nhất. Song song với đ&oacute; c&aacute;c chuỗi qu&aacute;n c&agrave; ph&ecirc; theo phong c&aacute;ch hiện đại đ&atilde; được h&igrave;nh th&agrave;nh đ&aacute;p ứng nhu cầu sử dụng c&agrave; ph&ecirc; ngon v&agrave; độc đ&aacute;o của người ti&ecirc;u d&ugrave;ng. Như vậy, từ l&acirc;u đ&atilde; manh nha h&igrave;nh th&agrave;nh việc sản xuất v&agrave; ti&ecirc;u d&ugrave;ng sản phẩm c&agrave; ph&ecirc; theo hướng &ldquo;đặc sản&rdquo;, c&oacute; sự li&ecirc;n kết giữa người n&ocirc;ng d&acirc;n với c&aacute;c nh&agrave; rang xay, việc mua b&aacute;n của họ kh&ocirc;ng phụ thuộc v&agrave;o gi&aacute; thị trường m&agrave; sự thỏa thuận dựa tr&ecirc;n chất lượng c&agrave; ph&ecirc;. Tuy nhi&ecirc;n mối li&ecirc;n hệ n&agrave;y mới chỉ h&igrave;nh th&agrave;nh ở thị trường nội địa v&agrave; sản lượng c&agrave; ph&ecirc; b&aacute;n được với gi&aacute; cao chưa được nhiều.</p>

<h4><strong>Mặt h&agrave;ng c&agrave; ph&ecirc; đặc sản gia tăng nhanh ch&oacute;ng</strong></h4>

<p>Đầu những năm 1970, c&aacute;c h&atilde;ng rang xay v&agrave; c&aacute;c qu&aacute;n c&agrave; ph&ecirc; đặc sản bắt đầu xuất hiện với mật độ ng&agrave;y c&agrave;ng tăng tại Hoa Kỳ v&agrave; Canada. Paul v&agrave; Kathy Leighton bắt đầu với Coffee Corner tại Eugene, Oregon, Bill Boyer với Boyer Coffee Company tại Denver&hellip; Tại Canada đ&atilde; c&oacute; Murchie ở Vancouver, Ở Toronto, Timothy Snellgrove th&agrave;nh lập Tymothy&rsquo;s Coffee of the Word&hellip; L&agrave;n s&oacute;ng c&agrave; ph&ecirc; đặc sản cũng k&eacute;o theo c&aacute;c thanh ni&ecirc;n trẻ tuổi bước tiếp từ c&aacute;c doanh nghiệp c&agrave; ph&ecirc; gia đ&igrave;nh như Frist Colony (tiền th&acirc;n l&agrave; Gill Brockenbrought ) ở Virginia, hay Van Courtland Coffee (một chi nh&aacute;nh của Wechsler &ndash; h&atilde;ng rang xay l&acirc;u năm ở New York)&hellip; c&ograve;n rất nhiều, nhưng tạm dừng tại đ&acirc;y th&ocirc;i.</p>

<p>K&eacute;o theo sự ra đời của c&aacute;c qu&aacute;n c&agrave; ph&ecirc; đặc sản, c&aacute;c bộ dụng cụ pha chế tại gia&hellip; c&ograve;n c&oacute; c&aacute;c tạp ch&iacute; am hiểu về c&agrave; ph&ecirc;, minh chứng cho mối quan t&acirc;m của c&ocirc;ng ch&uacute;ng đối với c&agrave; ph&ecirc; hảo hạng. Trong một năm, gi&aacute;o sư người Anh Kenneth Davids sở hữu một qu&aacute;n c&agrave; ph&ecirc; ở Barkeley, sau đ&oacute; viết cuốn Coffee: A guide to Buying, Brewing &amp; Enjoying, trong đ&oacute; người đọc c&oacute; thể t&igrave;m hiểu những nguy&ecirc;n tắc cơ bản về đ&aacute;nh gi&aacute; hương vị c&agrave; ph&ecirc; của từng nước, tư vấn về thiết bị, hướng dẫn pha chế&hellip; Ở trường hợp kh&aacute;c, Joe Schapira c&ugrave;ng với cha &ndash; David v&agrave; anh trai &ndash; Karl đ&atilde; viết cuốn The Book of Coffee &amp; Tea.</p>

<p>Tại Trung Quốc một quốc gia nổi tiếng với việc sử dụng tr&agrave;, nhưng năm 2022 thị trường c&agrave; ph&ecirc; đặc sản Trung Quốc s&ocirc;i động nhộn nhịp khi c&aacute;c th&agrave;nh phố lớn xuất hiện rất nhiều qu&aacute;n b&aacute;n c&agrave; ph&ecirc; đặc sản&hellip;.điều n&agrave;y g&oacute;p phần khẳng định được gi&aacute; trị tỷ đ&ocirc; của c&agrave; ph&ecirc; đặc sản hiện nay.</p>

<h4><strong>C&agrave; ph&ecirc; đặc sản c&uacute; h&iacute;ch cho sự chuyển m&igrave;nh c&agrave; ph&ecirc; Khe Sanh.</strong></h4>

<p>Năm 2020, được sự hỗ trợ của&nbsp;<a href="https://caphedacsanvietnam.vn/">Hiệp hội c&agrave; ph&ecirc; Bu&ocirc;n M&ecirc; Thuật</a>, chuy&ecirc;n gia L&ecirc; Trung Hưng đ&atilde; đến v&ugrave;ng đất Hướng Ph&ugrave;ng thủ phủ c&agrave; ph&ecirc; Khe Sanh tổ chức lớp đ&agrave;o tạo chế biến c&agrave; ph&ecirc; chất lượng cao tại đ&acirc;y, v&agrave; trong năm 2021 c&agrave; ph&ecirc; Khe Sanh Quảng Trị được vinh danh tr&ecirc;n bản đồ c&agrave; ph&ecirc; Việt Nam khi được giải nhất v&agrave; giải nh&igrave; c&agrave; ph&ecirc; đặc sản Việt Nam amazing cup, mở ra bước ngoặc lớn cho c&agrave; ph&ecirc; đặc sản Quảng Trị khi m&agrave; v&ugrave;ng đất c&agrave; ph&ecirc; nhỏ v&ocirc; dah trở th&agrave;nh nh&agrave; v&ocirc; địch.</p>

<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/lEUvKVHsztk" title="YouTube video player" width="560"></iframe></p>

<p>&nbsp;</p>

<p>V&agrave; tiếp nối năm 2021, năm 2022 c&agrave; ph&ecirc; Quảng Trị đến cuộc thi c&agrave; ph&ecirc; đặc sản Việt Nam với 9 mẫu dự thi trong đ&oacute; c&oacute; 7 mẫu chứng nhận đặc sản v&agrave; 5 mẫu nằm top đầu c&agrave; ph&ecirc; đặc sản nh&aacute;nh arabica. V&agrave; phương ph&aacute;p chế biến hiện nay ph&ugrave; hợp nhất với c&agrave; ph&ecirc; Khe Sanh l&agrave; phương ph&aacute;p chế biến natural v&agrave; phương ph&aacute;p chế biến honey. 2 phương ph&aacute;p n&agrave;y gi&uacute;p ph&aacute;t huy lợi thế c&agrave; ph&ecirc; đặc sản Quảng Trị khi c&aacute;c nốt hương hoa, hương tr&aacute;i c&acirc;y, hậu vị ngọt được ph&aacute;t huy v&agrave; khắc phục nhược điểm m&agrave; c&agrave; ph&ecirc; từ v&ugrave;ng độ cao thấp thường mắc phải.</p>

<p>Trước những th&agrave;nh t&iacute;ch đạt được, bước đầu khẳng định v&ugrave;ng c&agrave; ph&ecirc; arbica lớn nhất miền Trung đ&aacute;p ứng được ti&ecirc;u ch&iacute; c&agrave; ph&ecirc; đặc sản, nhiều n&ocirc;ng trại c&agrave; ph&ecirc; đ&atilde; bắt đầu đầu tư s&acirc;u hơn về chăm s&oacute;c, thu h&aacute;i, thậm ch&iacute; nhiều đơn vị chủ động đầu tư thay mới v&ugrave;ng nguy&ecirc;n liệu đang c&oacute; bằng loại c&agrave; ph&ecirc; chất lượng cao như giống THA1, đặc biệt c&aacute;c farm ch&uacute; trọng việc trồng c&acirc;y che b&oacute;ng trong vườn c&agrave; ph&ecirc;, thu h&aacute;i c&agrave; ph&ecirc; chuẩn hơn, tỷ lệ ch&iacute;n đỏ cao.</p>

<p>C&agrave; ph&ecirc; l&agrave; sản phẩm n&ocirc;ng nghiệp lu&acirc;n chuyển d&ograve;ng t&agrave;i ch&iacute;nh tiền tệ mạnh nhất trong c&aacute;c mặt h&agrave;ng, tuy nhi&ecirc;n nhiều năm trước đ&acirc;y người l&agrave;m c&agrave; ph&ecirc; lại kh&ocirc;ng l&agrave;m chủ được sản phẩm của m&igrave;nh, từ khi c&agrave; ph&ecirc; đặc sản xuất hiện, gi&aacute; trị của hạt c&agrave; ph&ecirc; được chi trả rất c&ocirc;ng bằng cho những n&ocirc;ng hộ, nh&agrave; chế biến, từ đ&oacute; x&acirc;y dựng mối quan hệ bền chặt giữa c&aacute;c kh&acirc;u li&ecirc;n quan.</p>
', N'638768868163390248.jpg', CAST(N'2025-03-06T19:40:16.340' AS DateTime), 2)
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Content], [ImageUrl], [PublishedDate], [TopicId]) VALUES (2, N'Vị ngọt cà phê đến từ đâu', N'Đó là một vị ngọt nhẹ nhàng, sảng khoái hoàn toàn tự nhiên.', N'<p>Với nhiều bạn, c&oacute; lẽ điều đầu ti&ecirc;n khi mọi người nghĩ đến c&agrave; ph&ecirc; sẽ l&agrave; vị đắng. Điều n&agrave;y kh&aacute; l&agrave; dễ hiểu khi m&agrave; những ly c&agrave; ph&ecirc; đen, đậm đắng l&agrave; thứ ta tiếp x&uacute;c nhiều nhất. Nhưng thực sự c&agrave; ph&ecirc; c&oacute; nhiều vị hơn thế. Vị ngọt l&agrave; một trong số đ&oacute;.&nbsp;</p>

<p><em>Đ&oacute; l&agrave; một vị ngọt nhẹ nh&agrave;ng, sảng kho&aacute;i ho&agrave;n to&agrave;n tự nhi&ecirc;n. Một vị ngọt c&oacute; thể cho thấy c&agrave; ph&ecirc; đ&atilde; được chăm ch&uacute;t kỹ lưỡng qua từng c&ocirc;ng đoạn. Từ trồng trọt, chăm s&oacute;c, thu h&aacute;i, chế biến nh&acirc;n xanh, rang v&agrave; pha chế c&agrave; ph&ecirc;.</em>&nbsp;</p>

<p>Ai cũng c&oacute; thể cảm nhận được vị ngọt tự nhi&ecirc;n của c&agrave; ph&ecirc; n&agrave;y. Tuy nhi&ecirc;n theo th&oacute;i quen sử dụng c&agrave; ph&ecirc; trước đ&acirc;y của ch&uacute;ng ta, vị ngọt nguy&ecirc;n bản tự nhi&ecirc;n lại kh&ocirc;ng được ai để &yacute; đến, cho đến khi sự xuất hiện của kh&aacute;i niệm &ldquo;C&agrave; ph&ecirc; đặc sản&rdquo;</p>

<p><a href="https://www.puncoffee.com/wp-content/uploads/2024/06/4.jpg"><img alt="" src="https://www.puncoffee.com/wp-content/uploads/2024/06/4.jpg" style="height:850px; width:1050px" /></a></p>

<p><strong>Vị ngọt c&agrave; ph&ecirc; đến từ đ&acirc;u?</strong></p>

<p>Đến từ bản th&acirc;n quả c&agrave; ph&ecirc; chứ kh&ocirc;ng cần tẩm ướp, th&ecirc;m thắt g&igrave; cả. C&agrave; ph&ecirc; l&agrave; tr&aacute;i c&acirc;y, quả c&agrave; ph&ecirc; cũng giống như rất nhiều loại hoa quả kh&aacute;c, khi ch&iacute;n n&oacute; cũng c&oacute; thể sở hữu một lượng đường b&ecirc;n trong. Đặc biệt, những quả c&agrave; ph&ecirc; được trồng ở địa h&igrave;nh, thổ nhưỡng kh&iacute; hậu ph&ugrave; hợp c&ograve;n c&oacute; lượng đường cực kỳ cao. Lượng đường trong quả c&agrave; ph&ecirc; ch&iacute;n n&agrave;y l&agrave; một trong những thứ c&oacute; thể đem đến những hương vị độc đ&aacute;o, vị ngọt cho hạt c&agrave; ph&ecirc; về sau. Bởi vậy, người l&agrave;m c&agrave; ph&ecirc; chất lượng cao thường phải chi trả kh&aacute; lớn cho nh&acirc;n c&ocirc;ng thu h&aacute;i chọn lọc quả ch&iacute;n để c&oacute; chất lượng tốt nhất. Tuy nhi&ecirc;n, vị ngọt n&agrave;y sẽ biến đổi t&ugrave;y v&agrave;o từng c&aacute;ch l&agrave;m c&agrave; ph&ecirc;.&nbsp;</p>

<p>Ngay sau kh&acirc;u thu h&aacute;i c&agrave; ph&ecirc; l&agrave; kh&acirc;u chế biến nh&acirc;n xanh c&agrave; ph&ecirc;. C&aacute;ch chế biến c&agrave; ph&ecirc; kh&aacute;c nhau sẽ đem đến vị ngọt kh&aacute;c nhau. &nbsp;Nếu quả c&agrave; ph&ecirc; được sơ chế kh&ocirc; (Natural process ), hạt c&agrave; ph&ecirc; khi uống thường c&oacute; xu hướng ngọt đầy đặn v&agrave; c&oacute; hương vị phong ph&uacute;, đẩy mạnh những notes hương hoa, hương quả. Th&igrave; c&aacute;ch chế biến b&aacute;n ướt (Honey process), lại giữ lớp nhầy, vị ngọt thấm dần trong qu&aacute; tr&igrave;nh phơi v&agrave; lưu kho ,của c&agrave; ph&ecirc; sau khi rang thường c&oacute; xu hướng ngọt thanh, hương thảo mộc tinh tế, dịu nhẹ hơn</p>

<blockquote>
<p>Tại Pun Coffee, ch&uacute;ng t&ocirc;i chỉ &aacute;p dụng 2 phương ph&aacute;p chế biến c&agrave; ph&ecirc; l&agrave; chế biến kh&ocirc; (Natural process) v&agrave; chế biến b&aacute;n ướt (Honey process), 2 phương ph&aacute;p chế biến n&agrave;y t&ocirc;n l&ecirc;n gi&aacute; trị ngọt thanh, đa hương của hạt c&agrave; ph&ecirc; arabica Khe Sanh Quảng Trị.</p>
</blockquote>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Sau qu&aacute; tr&igrave;nh chế biến nh&acirc;n xanh, đến c&ocirc;ng đoạn lưu kho v&agrave; x&aacute;t quả, nhặt sạch lỗi defect (đen, n&acirc;u, s&acirc;u, vỡ)&nbsp;sẽ tiến tới qu&aacute; tr&igrave;nh rang. Nhiệt độ khi rang khiến đường trong c&agrave; ph&ecirc; phản ứng. Ch&uacute;ng c&oacute; thể bị ph&acirc;n hủy hoặc kết hợp với c&aacute;c nh&oacute;m chất kh&aacute;c để tạo th&agrave;nh những hương vị hoa quả đặc trưng cho cốc c&agrave; ph&ecirc;. Đ&oacute; l&agrave; l&yacute; do m&agrave; hạt c&agrave; ph&ecirc; Arabica với nhiều đường hơn c&oacute; thể tạo ra được nhiều nh&oacute;m hương vị phong ph&uacute; hơn hạt c&agrave; ph&ecirc; Robusta. Tuy nhi&ecirc;n, nếu c&agrave; ph&ecirc; rang l&acirc;u th&igrave; đường c&agrave;ng bị ph&acirc;n hủy nhiều v&agrave; biến mất.&nbsp;&nbsp;</p>

<p>&nbsp;</p>

<p><em><strong>Thế nhưng tại sao khi c&agrave; ph&ecirc; rang s&aacute;ng, rang nhẹ th&igrave; bạn sẽ cảm thấy &iacute;t vị ngọt c&ograve;n rang vừa, rang đậm hơn x&iacute;u th&igrave; lại thấy vị ngọt r&otilde; hơn khi uống ?&nbsp;</strong></em></p>

<p>Bạn c&oacute; thể nh&igrave;n v&agrave;o biểu đồ về sự thay đổi hương vị n&agrave;y của ikawacoffee dưới đ&acirc;y:&nbsp;</p>

<p>&nbsp;</p>
', N'638768869109332225.jpg', CAST(N'2025-03-06T19:41:50.937' AS DateTime), 2)
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Content], [ImageUrl], [PublishedDate], [TopicId]) VALUES (3, N'Nước – yếu tố quan trọng', N'Nước chiếm 98-99% tỷ trọng của một cốc cà phê cà phê bạn đang thưởng thức', N'<p>Nước l&agrave; 1 trong những yếu tố cấu th&agrave;nh ra 1 ly c&agrave; ph&ecirc; ngon, nhưng c&oacute; lẻ trong số &iacute;t ch&uacute;ng ta những kh&aacute;ch h&agrave;ng d&ugrave;ng c&agrave; ph&ecirc; th&ocirc;ng thường hay thậm ch&iacute; chủ qu&aacute;n c&agrave; ph&ecirc; biết được vấn đề n&agrave;y. Nước v&agrave; c&aacute;c th&agrave;nh phần từ nước đ&atilde; t&aacute;c động kh&ocirc;ng nhỏ yếu tố ly c&agrave; ph&ecirc;, v&agrave; thực sự từ khi tụi m&igrave;nh bước ch&acirc;n v&agrave;o lĩnh vực c&agrave; ph&ecirc; bản th&acirc;n tụi m&igrave;nh mới hiểu được vấn đề n&agrave;y, nh&agrave; Pun chia sẽ c&ugrave;ng c&aacute;c anh chị một số th&ocirc;ng tin th&uacute; vị c&acirc;u chuyện nước pha c&agrave; ph&ecirc; nh&eacute;.</p>

<p><a href="https://www.puncoffee.com/wp-content/uploads/2023/06/Hedon-va-Maxwell.jpg"><img alt="" src="https://www.puncoffee.com/wp-content/uploads/2023/06/Hedon-va-Maxwell-300x200.jpg" style="height:200px; width:300px" /></a></p>

<p>Heden va Maxwell</p>

<p><strong>Nghi&ecirc;n cứu của Chrix Henden v&agrave; Maxwell Dashwood&nbsp;</strong></p>

<p>Chrix Henden v&agrave; Maxwell Dashwood l&agrave; một nh&agrave; khoa học v&agrave; một nh&agrave; v&ocirc; địch về pha chế c&agrave; ph&ecirc; nước Anh, họ đ&atilde; c&ugrave;ng nhau hợp t&aacute;c nghi&ecirc;n cứu ra loại nước tốt nhất d&agrave;nh cho ra một ly c&agrave; ph&ecirc; đ&uacute;ng chuẩn. Henden đ&atilde; giải th&iacute;ch răng</p>

<blockquote>
<p>&ldquo;mỗi hạt c&agrave; ph&ecirc; chứa h&agrave;ng trăm chất kh&aacute;c nhau, những th&agrave;nh phần n&agrave;y phụ thuốc v&agrave;o giống c&agrave; ph&ecirc;, c&aacute;ch thức chăm s&oacute;c v&agrave; chế biến rang xang. Hương vị trong trong một t&aacute;ch c&agrave; ph&ecirc; nguy&ecirc;n chất được quyết định ngon hay kh&ocirc;ng ngon nằm trong ch&iacute;nh nội tại hạt c&agrave; ph&ecirc; v&agrave; được chiết xuất th&ocirc;ng qua nước pha, b&ecirc;n cạnh đ&oacute; c&aacute;c yếu tố nhiệt độ, &aacute;p xuất chiết suất, độ th&ocirc; mịn của bột c&agrave; ph&ecirc; sau khi xay, v&agrave; thời gian pha&hellip;..Nghi&ecirc;n cứu ch&uacute;ng t&ocirc;i cho thấy được sự cấu th&agrave;nh của nước l&agrave; yếu tố mấu chốt quyết định tỷ lệ % của đường, tinh bột, bazo, axit được chiết ra từ hạt c&agrave; ph&ecirc; đ&oacute;&rdquo;</p>
</blockquote>

<p><strong>Th&agrave;nh phần trong nước quyết định m&ugrave;i vị c&agrave; ph&ecirc;</strong></p>

<p>Bản th&acirc;n điều n&agrave;y nh&agrave; Pun cũng đ&atilde; kiểm định khi sử dụng c&aacute;c loại nước kh&aacute;c nhau, c&ugrave;ng một nhiệt độ đun s&ocirc;i, c&ugrave;ng một loại c&agrave; ph&ecirc;, c&ugrave;ng một c&aacute;ch rang xay, c&ugrave;ng thời gian brew th&igrave; quả l&agrave; ch&uacute;ng đ&atilde; cho c&aacute;c loại hương vị kh&aacute;c nhau của c&agrave; ph&ecirc;.</p>

<p>Nước chiếm 98-99% tỷ trọng của một cốc c&agrave; ph&ecirc; c&agrave; ph&ecirc; bạn đang thưởng thức, nước d&ugrave;ng để pha quyết định một phần kh&ocirc;ng nhỏ trong việc quyết định ra một ly c&agrave; ph&ecirc; ngon. Nước để pha c&agrave; ph&ecirc; l&agrave; loại nước sạch, nhiều anh chị chia sẽ n&ecirc;n d&ugrave;ng nước tinh khiết, tuy nhi&ecirc;n với d&ograve;ng nước tinh khiết m&agrave; đ&atilde; xử l&yacute; kiềm về &yacute; kiến c&aacute; nh&acirc;n m&igrave;nh nhận định chưa hẳn ngon. H&agrave;m lượng ho&aacute; chất, kim loại nặng, muối &hellip;.t&aacute;c động thay đổi cấu th&agrave;nh một ly c&agrave; ph&ecirc; m&agrave; dưới mắt thường ch&uacute;ng ta kh&ocirc;ng nh&igrave;n thấy được, thường c&aacute;c chuy&ecirc;n gia sẽ thử nếm cupping sự thay đổi của ly c&agrave; ph&ecirc; dưới t&aacute;c động của c&aacute;c loại nước kh&aacute;c nhau.</p>

<p>Tại một số nơi c&oacute; 2 loại nước, nước cứng v&agrave; nước mềm (Nước cứng l&agrave; loại nước c&oacute; chưa ho&aacute; chất như clo hoặc amoniac, nước mềm l&agrave; loại nước đ&atilde; được kiềm ho&aacute; l&agrave;m sạch) nước cứng l&agrave;m cho c&agrave; ph&ecirc; c&oacute; vị nhạt nho&agrave; do c&aacute;c hợp chất của c&agrave; ph&ecirc; bị c&aacute;c th&agrave;nh phần trong nước b&atilde;o ho&agrave;, c&ograve;n nước mềm l&agrave;m c&agrave; ph&ecirc; đậm vị hơn thậm ch&iacute; c&aacute;c th&agrave;nh phần trong c&agrave; ph&ecirc; ho&agrave; tan với nước qu&aacute; nhiều khiến c&agrave; ph&ecirc; đắng hơn v&agrave; chua hơn.</p>

<p><strong>Lọc nước để cải thiện c&agrave; ph&ecirc;.</strong></p>

<p>Để kiểm tra nguồn nước sử dụng c&agrave; ph&ecirc; của bạn qu&aacute; cứng hoặc qu&aacute; mềm đối với c&agrave; ph&ecirc; bạn n&ecirc;n cupping để đ&aacute;nh gi&aacute; trước khi chọn loại nước ph&ugrave; hợp, v&agrave; bạn cũng n&ecirc;n so s&aacute;nh với c&aacute;c loại nước lọc đ&oacute;ng chai, n&oacute;i chung phải so s&aacute;nh nhiều loại nước pha c&agrave; ph&ecirc; bằng phương ph&aacute;p cupping thử nếm để quyết định chọn loại nước ph&ugrave; hợp. Th&ocirc;ng thường th&igrave; c&aacute;c qu&aacute;n c&agrave; ph&ecirc; c&oacute; th&ecirc;m một bộ lọc nước trước khi đưa v&agrave;o c&agrave; chế c&agrave; ph&ecirc;, bộ lọc nước n&oacute; sẽ gi&uacute;p trung ho&agrave; độ pH trong nước.&nbsp;</p>

<p>Qua tất cả những g&igrave; tụi m&igrave;nh chia sẽ, bạn cũng phần n&agrave;o cũng cảm nhận nước cũng l&agrave; một trong yếu tố quan trọng để tạo ra một ly c&agrave; ph&ecirc; ngon&hellip;nếu đ&ocirc;i khi cũng một loại c&agrave; ph&ecirc;, cũng một c&aacute;ch brew nhưng hương vị kh&ocirc;ng được tốt bạn cũng n&ecirc;n kiểm tra lại nước pha c&agrave; ph&ecirc; của m&igrave;nh xem sao nh&eacute;.</p>
', N'638768870856366029.jpg', CAST(N'2025-03-06T19:44:45.640' AS DateTime), 1)
INSERT [dbo].[News] ([Id], [Title], [ShortDescription], [Content], [ImageUrl], [PublishedDate], [TopicId]) VALUES (4, N'Lịch sử phin pha cà phê Việt', N'Cà phê là thứ đồ uống có sức quyến rũ kỳ lạ và nó là sản phẩm có những con số biết nói', N'<p>C&agrave; ph&ecirc; l&agrave; thứ đồ uống c&oacute; sức quyến rũ kỳ lạ v&agrave; n&oacute; l&agrave; sản phẩm c&oacute; những con số biết n&oacute;i. Bản th&acirc;n c&agrave; ph&ecirc; cũng mang trong m&igrave;nh những c&acirc;u chuyện ri&ecirc;ng đầy hấp dẫn. D&ograve;ng chảy văn h&oacute;a cuốn c&agrave; ph&ecirc; &ldquo;tr&ocirc;i&rdquo; c&ugrave;ng d&ograve;ng chảy lịch sử ph&aacute;t triển lo&agrave;i người với những chuyển biến li&ecirc;n tục, từ những c&aacute;ch uống th&ocirc; sơ ban đầu đến kỹ thuật pha chế cầu k&igrave;, tr&igrave;nh diễn khiến thế giới xoay v&ograve;ng b&ecirc;n ly c&agrave; ph&ecirc;. Ở Việt Nam, đến b&acirc;y giờ c&acirc;u chuyện ai l&agrave; người mang c&agrave; ph&ecirc; đến m&atilde;nh đất chữ S n&agrave;y vẫn l&agrave; b&iacute; ẩn, nhưng văn ho&aacute; thưởng thức c&agrave; ph&ecirc; th&igrave; Việt Nam lại c&oacute; n&eacute;t văn ho&aacute; ri&ecirc;ng, ấn tượng đặc biệt- c&agrave; ph&ecirc; phin- khiến thế giới khi n&oacute;i đến c&agrave; ph&ecirc; Việt Nam ai cũng biết. Nhưng c&oacute; bao giờ ch&uacute;ng ta tự hỏi chiếc phin pha c&agrave; ph&ecirc; Việt Nam c&oacute; từ khi n&agrave;o v&agrave; nguồn gốc chiến phin huyền thoại ấy ra sao chưa? C&ugrave;ng Pun ngược d&ograve;ng thời gian t&igrave;m hiểu xem nh&eacute;.</p>

<h3><strong>Nguồn gốc lịch sử phin c&agrave; ph&ecirc; Việt.</strong></h3>

<p>Từ thế kỉ XIX, c&acirc;y c&agrave; ph&ecirc; cũng đ&atilde; theo ch&acirc;n người Ph&aacute;p du nhập v&agrave;o Việt Nam thời thuộc địa, để cho những thực d&acirc;n quyền chức đ&ocirc; hộ đ&oacute; thưởng thức c&agrave; ph&ecirc; tại bản xứ, những c&ocirc;ng cụ pha c&agrave; ph&ecirc; đầu ti&ecirc;n ra đời, v&agrave; c&oacute; lẽ từ đ&oacute; chiếc phin pha c&agrave; ph&ecirc; Việt Nam dần h&igrave;nh th&agrave;nh. để rồi dần d&agrave; n&oacute; kh&ocirc;ng chỉ l&agrave; một dụng cụ chiết suất c&agrave; ph&ecirc; đơn thuần m&agrave; trở th&agrave;nh một điều đặc biệt trong văn h&oacute;a c&agrave; ph&ecirc; ở Việt Nam.&nbsp;H&igrave;nh ảnh ly c&agrave; ph&ecirc; phin gắn liền xuy&ecirc;n suốt chiều d&agrave;i lịch sử văn h&oacute;a c&agrave; ph&ecirc; của người Việt. V&agrave; hơn thế, c&agrave; ph&ecirc; phin đ&atilde; mang tầm thương hiệu, một n&eacute;t đặc trưng ri&ecirc;ng, bản sắc ri&ecirc;ng của người Việt Nam.</p>

<p>N&oacute;i kh&ocirc;ng ngoa khi người l&agrave;m ra chiếc phin pha c&agrave; ph&ecirc; đ&agrave;u ti&ecirc;n ch&iacute;nh l&agrave; Tổng gi&aacute;m mục Paris &ndash; Hồng y Linh mục của nh&agrave; thời St.John&nbsp; ở Prota Latina t&ecirc;n l&agrave; Jean-Baptise de Belloy đ&atilde; s&aacute;ng chế dụng cụ pha chế c&agrave; ph&ecirc; đặc biệt&nbsp; gọi l&agrave; Belloy&rsquo;s drip coffee pot, v&agrave; thời điểm ấy vị Tổng Gi&aacute;m mục n&agrave;y 91 tuổi, một t&iacute;n đồ đ&iacute;ch thực c&agrave; ph&ecirc;.Việc m&agrave;y m&ograve; t&igrave;m ra c&aacute;ch pha c&agrave; ph&ecirc; đặc biệt thay thế cho c&aacute;ch pha c&agrave; ph&ecirc; ng&acirc;m ủ trước đ&oacute; m&agrave; &ocirc;ng Belloy cho rằng n&oacute; qu&aacute; nhạt nhẽo, v&agrave;&nbsp; ch&iacute;nh những chiếc belloy&rsquo;s drip pot n&agrave;y n&oacute; đ&atilde; đến Việt Nam tạo ra n&eacute;t văn ho&aacute; c&agrave; ph&ecirc; cực k&igrave; độc đ&aacute;o mang đậm dấu ấn Việt.</p>

<p><a href="https://www.puncoffee.com/wp-content/uploads/2023/08/lich-su-ca-phe-phin.jpg"><img alt="" src="https://www.puncoffee.com/wp-content/uploads/2023/08/lich-su-ca-phe-phin.jpg" style="height:680px; width:798px" /></a></p>

<p><em>Chiếc phin pha c&agrave; ph&ecirc; đầu ti&ecirc;n</em></p>

<blockquote>
<p><em>Đối với chiếc phin Việt n&oacute; bao gồm nhiều bộ phận: đ&aacute;y đĩa, th&acirc;n phin, lưỡi g&agrave;, nắp đậy.&nbsp;Chất liệu phin t&ugrave;y thuộc v&agrave;o chất liệu như nh&ocirc;m, inox, đất s&eacute;t.&nbsp;Mỗi vật liệu c&oacute; ưu điểm v&agrave; nhược điểm ri&ecirc;ng nhưng nh&ocirc;m v&agrave; inox l&agrave; vật liệu phổ biến nhất hiện nay.</em></p>
</blockquote>

<p>Cuộc sống hiện đại c&ugrave;ng nhịp sống bận rộn, chưa kể đến sự du nhập của nhiều loại đồ uống, nhiều c&aacute;ch thức mới trong thưởng thức c&agrave; ph&ecirc; kh&aacute;c nhau, nhưng tuyệt nhi&ecirc;n, với rất nhiều người, được thả lỏng t&acirc;m hồn, chờ đợi từng giọt tinh chất c&agrave; ph&ecirc; nhỏ giọt v&agrave;&nbsp; thưởng thức ly c&agrave; ph&ecirc; phin đậm đ&agrave; vẫn l&agrave; một th&uacute; vui mỗi ng&agrave;y.&nbsp;</p>

<h4><strong>C&agrave; ph&ecirc; n&agrave;o được xem l&agrave; ph&ugrave; hợp với pha phin.</strong></h4>

<p>Để trả lời c&acirc;u hỏi c&agrave; ph&ecirc; n&agrave;o ph&ugrave; hợp pha phin thực sự rất kh&oacute;, bởi sự ngon hay kh&ocirc;ng ngon (dở) n&oacute; l&agrave; gu thưởng thức c&agrave; ph&ecirc; của từng người, từng c&aacute; nh&acirc;n. Bởi sau v&agrave;i năm bước ch&acirc;n v&agrave;o thị trường c&agrave; ph&ecirc;, ch&uacute;ng t&ocirc;i nhận ra mỗi kh&aacute;ch h&agrave;ng thưởng thức c&agrave; ph&ecirc; l&agrave; c&aacute;ch thưởng thức kh&aacute;c nhau. Nhưng quan trọng nhất ch&iacute;nh l&agrave; hạt c&agrave; ph&ecirc; chất lượng v&agrave; đảm bảo yếu tố vệ sinh an to&agrave;n thực phẩm. Thử h&igrave;nh dung xem rất nhiều trong số ch&uacute;ng ta trong đ&oacute; c&oacute; bạn, c&oacute; t&ocirc;i, mỗi ng&agrave;y ch&uacute;ng ta đều khởi đầu bằng 1 t&aacute;ch c&agrave; ph&ecirc;, thậm ch&iacute; c&oacute; nhiều bạn bỏ qua bước ăn s&aacute;ng m&agrave; l&agrave;m ngay lu&ocirc;n c&agrave; ph&ecirc; phin để bước v&agrave;o ng&agrave;y mới, v&agrave; nếu ly c&agrave; ph&ecirc; bạn đang sử dụng kh&ocirc;ng c&oacute; nguồn gốc kh&ocirc;ng c&oacute; xuất xứ, kh&ocirc;ng đảm bảo vệ sinh an to&agrave;n thực phẩm th&igrave; với mỗi ng&agrave;y 1 đến 2 cử c&agrave; ph&ecirc; ch&uacute;ng ta đ&atilde; đưa những thứ g&igrave;, ch&iacute;nh v&igrave; vậy việc chọn c&agrave; ph&ecirc; đ&uacute;ng gu bạn c&ograve;n phải quan t&acirc;m đến c&aacute;c th&ocirc;ng tin kh&aacute;c nữa nh&eacute;.</p>

<p>Ở Pun, tụi m&igrave;nh tự h&agrave;o về d&ograve;ng c&agrave; ph&ecirc; pha phin đặc biệt tụi m&igrave;nh, sản phẩm được xếp hạng best seller nh&agrave; tụi m&igrave;nh, được rang xay tr&ecirc;n nền tảng c&agrave; ph&ecirc; đặc sản arabicas v&agrave; robusta với c&aacute;c cấp độ rang kh&aacute;c nhau l&agrave;m ra ly c&agrave; ph&ecirc; ho&agrave;n hảo đến tay bạn.&nbsp;</p>
', N'638768871643259457.jpg', CAST(N'2025-03-06T19:46:04.327' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [View], [CategoryId]) VALUES (1, N'Cà phê Đen', CAST(25000.00 AS Decimal(18, 2)), N'<div class="bullet1" style="background-color:#ffffff; box-sizing:border-box; color:#000000; font-family:&quot;Open Sans&quot;; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-weight:400; padding-left:18px; text-align:justify; text-decoration-color:initial; text-decoration-style:initial; text-decoration-thickness:initial; white-space:normal"><span style="font-size:11pt"><span style="font-family:Arial"><span style="color:#000000"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><a href="https://noithatcaphe.vn/cach-pha-ca-phe-den-truyen-thong-2507.htm" style="box-sizing:border-box; text-decoration:none; color:#1e7ad8; cursor:pointer">C&agrave; ph&ecirc; đen l&agrave;</a> loại thức uống nguy&ecirc;n chất được pha từ hạt c&agrave; ph&ecirc; đ&atilde; được rang, xay theo ti&ecirc;u chuẩn. C&agrave; ph&ecirc; đen kh&ocirc;ng giống c&aacute;c loại c&agrave; ph&ecirc; kh&aacute;c, n&oacute; rất đơn giản từ c&aacute;ch pha đến nguy&ecirc;n liệu chuẩn bị.<br />
<img alt="cà phê đen" src="https://noithatcaphe.vn/images/2022/07/20/ca-phe-den-2.png" style="border:0px; box-sizing:border-box; max-width:100%" /></span></span></span></span></span></div>

<div class="bullet1" style="background-color:#ffffff; box-sizing:border-box; color:#000000; font-family:&quot;Open Sans&quot;; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-weight:400; padding-left:18px; text-align:justify; text-decoration-color:initial; text-decoration-style:initial; text-decoration-thickness:initial; white-space:normal"><br />
<strong><span style="font-size:20px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#000000">C&aacute;ch pha c&agrave; ph&ecirc; đen truyền thống</span></span></span></strong></div>

<h3 style="color:#000000; font-style:normal; text-align:justify"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#000000"><strong><em>Nguy&ecirc;n liệu: </em></strong></span><span style="color:#000000">Yếu tố quan trọng quyết định hương vị của c&agrave; ph&ecirc; đen ch&iacute;nh l&agrave; bột c&agrave; ph&ecirc;. Bột cần được lựa chọn phải ho&agrave;n to&agrave;n nguy&ecirc;n chất, kh&ocirc;ng pha trộn với bất k&igrave; loại bột n&agrave;o, đảm bảo độ mịn của bột. V&igrave; vậy ngay từ kh&acirc;u chuẩn bị ch&uacute;ng ta cần t&igrave;m mua bột c&agrave; ph&ecirc; từ những nơi uy t&iacute;n, c&oacute; nguồn gốc r&otilde; r&agrave;ng. </span></span></span><br />
<br />
<em><strong>C&aacute;ch pha chế:<span style="font-size:14px"><span style="font-family:Arial"><span style="color:#434343">&nbsp;</span></span></span></strong></em></h3>

<div style="background-color:#ffffff; box-sizing:border-box; color:#000000; font-family:&quot;Open Sans&quot;; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-weight:400; text-align:justify; text-decoration-color:initial; text-decoration-style:initial; text-decoration-thickness:initial; white-space:normal">&nbsp;</div>

<div style="background-color:#ffffff; box-sizing:border-box; color:#000000; font-family:&quot;Open Sans&quot;; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-weight:400; text-align:justify; text-decoration-color:initial; text-decoration-style:initial; text-decoration-thickness:initial; white-space:normal"><img alt="cà phê đen truyền thống" src="https://noithatcaphe.vn/images/2022/07/20/ca-phe-den-3.jpg" style="border:0px; box-sizing:border-box; max-width:100%" /><br />
<br />
<span style="font-size:14px"><span style="color:#000000"><span style="font-family:Arial"><strong>Bước 1:</strong></span></span></span><span style="font-size:14px"><span style="color:#000000"><span style="font-family:Arial"> Trước khi pha c&agrave; ph&ecirc; bạn cần d&ugrave;ng nước n&oacute;ng để tr&aacute;ng qua phin pha để đảm bảo c&agrave; ph&ecirc; nở đều, đồng thời phần nhiệt lượng cũng được giảm đi khi r&oacute;t trực tiếp nước n&oacute;ng v&agrave;o c&agrave; ph&ecirc;, như thế c&agrave; ph&ecirc; mới đậm đ&agrave; hương vị v&agrave; quyến rũ hơn.</span></span></span></div>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial"><span style="color:#000000"><strong>Bước 2</strong></span></span><span style="font-family:Arial"><span style="color:#000000">: Cho bột v&agrave; ph&ecirc; v&agrave;o phin (tỉ lệ chuẩn l&agrave; ⅓ phin). C&ocirc;ng thức đ&uacute;ng để cho ra một ly c&agrave; ph&ecirc; đen nguy&ecirc;n chất đậm vị l&agrave; 1 phần c&agrave; ph&ecirc;, 2 phần nước.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial"><span style="color:#000000"><strong>Bước 3:</strong></span></span><span style="font-family:Arial"><span style="color:#000000"> &Eacute;p c&agrave; ph&ecirc; bằng bộ phận gạt, lưu &yacute; kh&ocirc;ng &eacute;p qu&aacute; mạnh hoặc qu&aacute; lỏng.Nếu &eacute;p qu&aacute; mạnh th&igrave; bột c&agrave; ph&ecirc; c&oacute; thể bị rơi xuống dưới ly, c&ograve;n nếu &eacute;p qu&aacute; lỏng th&igrave; bột c&agrave; pehe sẽ nổi l&ecirc;n tr&ecirc;n v&agrave; v&igrave; vậy phần nước được lọc ra sẽ lỏng v&agrave; nhạt. C&ocirc;ng đoạn n&agrave;y cần người c&oacute; kinh nghiệm/quen tay th&igrave; sẽ cho ra được những giọt c&agrave; ph&ecirc; đậm đ&agrave; chuẩn vị.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial"><span style="color:#000000"><strong>Bước 4</strong></span></span><span style="font-family:Arial"><span style="color:#000000">: Chế nước s&ocirc;i v&agrave;o phin v&agrave; đậy nắp rồi chờ đến khi bột c&agrave; ph&ecirc; h&uacute;t hết nước, hay c&ocirc;ng đoạn n&agrave;y c&ograve;n được gọi l&agrave; ủ c&agrave; ph&ecirc;.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:Arial"><span style="color:#000000"><strong>Bước 5</strong></span></span><span style="font-family:Arial"><span style="color:#000000">: Sau khi c&agrave; ph&ecirc; đ&atilde; nhỏ giọt xong th&igrave; bạn đ&atilde; c&oacute; được th&agrave;nh phẩm l&agrave; ly c&agrave; ph&ecirc; nguy&ecirc;n chất. Bạn c&oacute; thể cho th&ecirc;m 1 &iacute;t đường ph&egrave;n hoặc đường trắng t&ugrave;y khẩu vị .</span></span></span></p>

<h3 style="color:#000000; font-style:normal; text-align:justify"><span style="font-size:14px"><span style="font-family:Arial"><span style="color:#434343"><strong><em>C&agrave; ph&ecirc; đen đ&aacute; </em></strong></span></span></span></h3>

<div style="background-color:#ffffff; box-sizing:border-box; color:#000000; font-family:&quot;Open Sans&quot;; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-weight:400; text-align:justify; text-decoration-color:initial; text-decoration-style:initial; text-decoration-thickness:initial; white-space:normal"><img alt="cà phê đen" src="https://noithatcaphe.vn/images/2022/07/20/ca-phe-den-5.jpg" style="border:0px; box-sizing:border-box; max-width:100%" /></div>

<p style="text-align:justify"><br />
<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:#000000"><strong>C&agrave; ph&ecirc; đen đ&aacute;:</strong></span><span style="color:#000000"> Thực chất ch&iacute;nh l&agrave; c&agrave; ph&ecirc; đen c&oacute; bỏ th&ecirc;m đ&aacute;, tuy nhi&ecirc;n bạn cần n&ecirc;n chọn những vi&ecirc;n đ&aacute; to,đ&aacute; gi&agrave; những vi&ecirc;n đ&aacute; l&acirc;u tan. Với mỗi người một khẩu vị kh&aacute;c nhau n&ecirc;n c&oacute;c người th&igrave; th&iacute;ch nh&acirc;m nhi 1 ly c&agrave; ph&ecirc; đen ấm n&oacute;ng đậm đặc, c&oacute; người th&igrave; th&iacute;ch thưởng thức c&agrave; ph&ecirc; đen m&aacute;t lạnh với những vi&ecirc;n đ&aacute; để giải nhiệt v&agrave; giảm độ đắng của c&agrave; ph&ecirc;.</span></span></span></p>

<div class="bullet1" style="background-color:#ffffff; box-sizing:border-box; color:#000000; font-family:&quot;Open Sans&quot;; font-size:13px; font-style:normal; font-variant-ligatures:normal; font-weight:400; padding-left:18px; text-align:justify; text-decoration-color:initial; text-decoration-style:initial; text-decoration-thickness:initial; white-space:normal"><span style="font-size:20px"><span style="font-family:arial,helvetica,sans-serif"><strong>Lợi &iacute;ch đặc biệt của c&agrave; ph&ecirc; đen<br />
<img alt="cà phê đen" src="https://noithatcaphe.vn/images/2022/07/20/ca-phe-den-6.jpg" style="border:0px; box-sizing:border-box; max-width:100%" /></strong></span></span></div>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#000000"><strong><em>Tăng cường tr&iacute; nhớ</em></strong></span><span style="color:#000000">: C&agrave; ph&ecirc; đen gi&uacute;p cho d&acirc;y thần kinh của ch&uacute;ng ta hoạt động r&otilde; r&agrave;ng hơn n&ecirc;n n&oacute; gi&uacute;p tăng cường tr&iacute; nhớ ở người lớn tuổi. Gi&uacute;p tỉnh t&aacute;o, tăng năng suất lao động. Với một lượng cafein vừa đủ th&igrave; đen đ&aacute; ch&iacute;nh l&agrave; vị cứu t&iacute;nh cho những l&uacute;c thiếu ngủ, mất tập trung.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#000000"><strong><em>L&agrave;m sạch dạ d&agrave;y:</em></strong></span><span style="color:#000000"> &Iacute;t ai biết đến c&agrave; ph&ecirc; đen c&ograve;n gi&uacute;p ch&uacute;ng ta lợi tiểu, bằng c&aacute;ch uống c&agrave; ph&ecirc; đen kh&ocirc;ng đường th&igrave; c&aacute;c độc tố v&agrave; vi khuẩn c&oacute; thể dễ d&agrave;ng được đ&agrave;o thải v&igrave; thế dạ d&agrave;y của ch&uacute;ng ta đ&atilde; được l&agrave;m sạch.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#000000"><strong><em>Hỗ trợ giảm c&acirc;n:</em></strong></span><span style="color:#000000"> C&agrave; ph&ecirc; đen th&uacute;c đẩy qu&aacute; tr&igrave;nh trao đổi chất, l&agrave;m cho ch&uacute;ng ta ti&ecirc;u h&oacute;a nhanh hơn, giảm th&egrave;m ăn, v&agrave; gi&uacute;p cho qu&aacute; tr&igrave;nh tập luyện trở n&ecirc;n năng xuất hơn.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#000000"><strong><em>Tốt cho tim mạch, giảm nguy cơ mắc bệnh tiểu đường:</em></strong></span><span style="color:#000000"> C&agrave; ph&ecirc; đen gi&uacute;p giảm độ vi&ecirc;m trong cơ thể n&ecirc;n n&oacute; l&agrave;m giảm nguy cơ mắc bệnh tim mạch.Ngo&agrave;i ra c&agrave; ph&ecirc; đen c&ograve;n gi&uacute;p giảm nguy cơ mắc bệnh tiểu đường tu&yacute;p 2. N&oacute; l&agrave; thức uống c&oacute; thể chống lại bệnh tiểu đường nếu trong trường hợp bạn uống c&agrave; ph&ecirc; đen kh&ocirc;ng đường/sữa hoặc &iacute;t.&nbsp;</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#000000"><strong><em>C&agrave; ph&ecirc; đen gi&uacute;p chống oxy h&oacute;a: </em></strong></span><span style="color:#000000">Trong c&agrave; ph&ecirc; đen chưa một h&agrave;m lượng rất lớn c&aacute;c chất chống oxy h&oacute;a, một ly c&agrave; ph&ecirc; đen c&oacute; chứa nhiều chất kho&aacute;ng như vitamin B2, B3, B5, mangan, magie v&agrave; kali tốt cho sức khỏe của ch&uacute;ng ta.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#000000"><strong><em>Trẻ h&oacute;a cơ thể, t&acirc;m tr&iacute; v&agrave; gi&uacute;p ch&uacute;ng ta hạnh ph&uacute;c hơn:</em></strong></span><span style="color:#000000"> &Iacute;t ai ngờ đến c&agrave; ph&ecirc; đen kh&ocirc;ng đường lại gi&uacute;p cho ch&uacute;ng ta giữ cho t&acirc;m tr&iacute; v&agrave; cơ thể lu&ocirc;n trẻ. C&agrave; ph&ecirc; đen kh&ocirc;ng đường rất c&oacute; lợi cho t&acirc;m trạng của ch&uacute;ng ta, ngo&agrave;i ra v&igrave; cafein l&agrave;m tăng nồng độ dopamine trong cơ thể n&ecirc;n n&oacute; c&oacute; thể ngăn ngừa bệnh parkinson.</span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:#000000">Tuy nhi&ecirc;n, những lợi &iacute;ch tr&ecirc;n chỉ xảy ra khi ch&uacute;ng ta sử dụng c&agrave; ph&ecirc; đen kh&ocirc;ng đường một c&aacute;ch hợp l&yacute;.Theo khuyến c&aacute;o của Cục Quản l&yacute; Thực Phẩm v&agrave; Dược phẩm Hoa Kỳ th&igrave; người trưởng th&agrave;nh hạn chế uống nhiều hơn 2-3 ly c&agrave; ph&ecirc; mỗi ng&agrave;y để tr&aacute;nh ảnh hưởng đến giấc ngủ, b&ecirc;n cạnh đ&oacute; nếu uống qu&aacute; nhiều c&agrave; ph&ecirc; c&oacute; thể dẫn đến nghiện caffeine v&agrave; g&acirc;y ra t&igrave;nh trạng nhức đầu, mệt mỏi. C&agrave; ph&ecirc; đen kh&ocirc;ng phải l&agrave; thuốc v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh. Nếu ch&uacute;ng ta uống c&agrave; ph&ecirc; đen hợp l&iacute; trong ng&agrave;y th&igrave; n&oacute; c&oacute; t&aacute;c dụng hỗ trợ những bệnh, triệu chứng tr&ecirc;n.</span></span></span></p>
', N'638768902055523908.jpg', 1, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [View], [CategoryId]) VALUES (2, N'Cà phê Sữa', CAST(25000.00 AS Decimal(18, 2)), N'<p><strong><em>C&agrave; ph&ecirc; sữa đ&aacute; qu&aacute; đỗi quen thuộc với người d&acirc;n Việt Nam. Đ&acirc;y cũng l&agrave; thức uống m&agrave; du kh&aacute;ch khi đến với đất nước ch&uacute;ng ta sẽ kh&ocirc;ng qu&ecirc;n thưởng thức. Điều g&igrave; đ&atilde; l&agrave;m cho c&agrave; ph&ecirc; sữa đ&aacute; nổi tiếng v&agrave; ấn tượng như vậy? H&atilde;y c&ugrave;ng The Coffee House t&igrave;m hiểu.</em></strong></p>

<p>Ẩm thực Việt Nam đa dạng v&agrave; phong ph&uacute;, những m&oacute;n đặc trưng, đơn giản nhưng quen thuộc v&agrave; nổi tiếng phải kể đến như c&agrave; ph&ecirc; sữa, b&aacute;nh m&igrave;, phở,... D&ugrave;ng xong bữa s&aacute;ng, ly c&agrave; ph&ecirc; sữa đ&aacute; như l&agrave; một thức uống bất biến của rất nhiều người. Vậy n&ecirc;n, từ l&acirc;u đời c&agrave; ph&ecirc; sữa đ&aacute; đ&atilde; rất gần gũi với người d&acirc;n Việt.</p>

<p>C&agrave; ph&ecirc; sữa Việt Nam kh&aacute;c biệt so với những nước tr&ecirc;n thế giới. N&oacute; mang n&eacute;t mộc mạc, lắng đọng như người Việt, nhưng lại kh&ocirc;ng k&eacute;m phần ấn tượng bởi ch&iacute;nh từ hương vị tinh tu&yacute; v&agrave; đặc sắc. Đối với nhiều nơi sẽ d&ugrave;ng sữa tươi thưởng thức với c&agrave; ph&ecirc;, nhưng người Việt lại d&ugrave;ng sữa đặc, ch&uacute;ng l&agrave;m cho hương vị c&agrave; ph&ecirc; đậm đ&agrave; nguy&ecirc;n vẹn. B&ecirc;n cạnh đ&oacute;, c&aacute;ch pha c&agrave; ph&ecirc; sữa của Việt Nam lại rất đặc sắc.</p>

<p><img src="https://file.hstatic.net/1000075078/file/1_6b92aac513354ad9947042fabbec6265_grande.jpg" /></p>

<p>Kh&ocirc;ng giống những nước kh&aacute;c thường sử dụng c&agrave; ph&ecirc; pha sẵn, c&agrave; ph&ecirc; bột,&hellip; Việt Nam sử dụng loại c&agrave; ph&ecirc; xay nhuyễn, cho v&agrave;o loại phin đặc trưng rồi pha nước s&ocirc;i n&oacute;ng v&agrave;o. Từng giọt c&agrave; ph&ecirc; s&oacute;ng s&aacute;nh, đậm đặc, t&iacute; t&aacute;ch chảy qua chiếc phin đặc biệt ấy h&ograve;a c&ugrave;ng sữa đặc đ&atilde; tạo n&ecirc;n những ly&nbsp;c&agrave; ph&ecirc; sữa đậm đ&agrave;, vị đắng đặc trưng v&agrave; hiện hữu cả vị thanh ngọt m&agrave; biết bao người y&ecirc;u th&iacute;ch. C&oacute; người d&ugrave;ng c&agrave; ph&ecirc; sữa n&oacute;ng, nhiều người theo sở th&iacute;ch sẽ cho th&ecirc;m đ&aacute;, v&agrave; đ&acirc;y cũng ch&iacute;nh l&agrave; sở th&iacute;ch của phần đ&ocirc;ng người d&acirc;n Việt.&nbsp;</p>

<p>V&igrave; sự đặc biệt trong c&aacute;ch pha c&agrave; ph&ecirc; sữa đ&aacute;, cũng như sự nổi bật trong hương vị v&agrave; chất lượng c&agrave; ph&ecirc; đến từ v&ugrave;ng đất nổi tiếng về c&agrave; ph&ecirc; như Việt Nam đ&atilde; khiến du kh&aacute;ch khắp thế giới khi đến với đất nước ch&uacute;ng ta đều kh&ocirc;ng qu&ecirc;n thưởng thức c&agrave; ph&ecirc; sữa. Họ đều bị chinh phục bởi c&agrave; ph&ecirc; sữa đ&aacute; Việt Nam, truyền tai về sự thơm ngon v&agrave; nổi tiếng của loại thức uống mang n&eacute;t đặc trưng về văn ho&aacute; v&agrave; gi&aacute; trị bản địa của người Việt.</p>

<p>Việt Nam tự h&agrave;o với c&agrave; ph&ecirc; sữa đ&aacute; v&agrave; The Coffee House cũng tự h&agrave;o l&agrave; thương hiệu dẫn đầu về c&agrave; ph&ecirc; tại Việt Nam. Điều đ&oacute; được chứng minh khi The Coffee House lu&ocirc;n l&agrave; điểm đến y&ecirc;u th&iacute;ch h&agrave;ng đầu của kh&aacute;ch h&agrave;ng khi muốn thưởng thức những ly c&agrave; ph&ecirc; thơm ngon v&agrave; đ&uacute;ng chất hảo hạng.&nbsp;</p>

<p><img src="https://file.hstatic.net/1000075078/file/2_c60fff2373c74b4f8796c8d0ccc47346_grande.png" /></p>

<p>Đến với The Coffee House, thực kh&aacute;ch sẽ c&oacute; nhiều hơn những sự lựa chọn. Nếu những ng&agrave;y thong dong, bạn c&oacute; thể thưởng thức những ly c&agrave; ph&ecirc; sữa pha phin với hương vị nổi tiếng của The Coffee House. Sự ấn tượng từ c&agrave; ph&ecirc; Daklak nguy&ecirc;n chất được pha phin truyền thống kết hợp với sữa đặc tạo n&ecirc;n hương vị đậm đ&agrave;, h&agrave;i ho&agrave; giữa vị đắng v&agrave; ngọt nơi đầu lưỡi. C&agrave; ph&ecirc; chất lượng cao của The Coffee House với c&aacute;c k&iacute;ch cỡ để bạn lựa chọn theo nhu cầu của m&igrave;nh (cỡ nhỏ 29k, cỡ vừa 35k v&agrave; cỡ lớn 39k).</p>

<p>Đối với những ng&agrave;y bận rộn hơn, bạn c&oacute; thể lựa chọn d&ograve;ng sản phẩm c&agrave; ph&ecirc; sữa đ&aacute; chai Fresh 250ml. Vẫn l&agrave; hương vị c&agrave; ph&ecirc; sữa đậm đ&agrave; quen thuộc của The Coffee House nhưng kho&aacute;c l&ecirc;n m&igrave;nh những chiếc &aacute;o mới tiện lợi hơn, tiết kiệm hơn, ph&ugrave; hợp với những h&ocirc;m bạn kh&ocirc;ng c&oacute; nhiều thời gian. Đ&acirc;y cũng sẽ l&agrave; lựa chọn tuyệt vời, sảng kho&aacute;i khi bạn ở bất kỳ nơi đ&acirc;u, thời điểm n&agrave;o.</p>

<p><img src="https://file.hstatic.net/1000075078/file/chai_fresh_bbd0cd943bab47e192817e47d2f93cf6_grande.jpg" /></p>

<p>Chưa đ&acirc;u, đa dạng trải nghiệm, chiều l&ograve;ng kh&aacute;ch h&agrave;ng v&agrave; đem lại sự h&agrave;i l&ograve;ng tối ưu ch&iacute;nh l&agrave; điểm mạnh của The Coffee House. Vậy n&ecirc;n, The Coffee House c&ograve;n đưa đến những g&oacute;i c&agrave; ph&ecirc; sữa ho&agrave; tan, v&agrave; như thế bạn thật dễ d&agrave;ng để bắt đầu ng&agrave;y mới với t&aacute;ch c&agrave; ph&ecirc; sữa đ&aacute; s&oacute;ng s&aacute;nh, thơm ngon như vị c&agrave; ph&ecirc; phin. Vị đắng thanh của c&agrave; ph&ecirc;, ho&agrave; quyện với vị ngọt b&eacute;o của sữa, gi&uacute;p bạn nhanh ch&oacute;ng tỉnh t&aacute;o v&agrave; hứng khởi cho ng&agrave;y l&agrave;m việc hiệu quả.&nbsp;</p>

<p><img src="https://file.hstatic.net/1000075078/file/ca_phe_hoa_tan_478f1d6be2784f52a0c6c05992d41019_grande.jpg" /></p>

<p>Ngo&agrave;i ra, những lon c&agrave; ph&ecirc; sữa đ&aacute; với thiết kế đơn giản, hiện đại cũng sẽ l&agrave; lựa chọn tuyệt vời v&agrave; cực kỳ tiện lợi cho bất kỳ ai muốn d&ugrave;ng c&agrave; ph&ecirc; v&agrave; ngay cả những l&uacute;c thường xuy&ecirc;n di chuyển. C&agrave; ph&ecirc; sữa đ&aacute; dạng lon của The Coffee House như người bạn đồng h&agrave;nh của giới trẻ Việt trong nhịp sống s&ocirc;i nổi, b&ugrave;ng ch&aacute;y. Đặc biệt l&agrave; kh&ocirc;ng bao giờ bỏ lỡ điều g&igrave; khi bắt đầu ng&agrave;y mới rất năng lượng, tỉnh t&aacute;o v&agrave; đầy cảm hứng.</p>

<p><img src="https://file.hstatic.net/1000075078/file/lon_1b129a75386344ee80a41713916322bd_grande.png" /></p>

<p><em><strong>C&agrave; ph&ecirc; sữa đ&aacute; l&agrave; niềm tự h&agrave;o của người Việt v&agrave; những ly c&agrave; ph&ecirc; sữa đ&aacute; với hương vị đậm đ&agrave;, m&ugrave;i thơm hấp dẫn cũng l&agrave; niềm h&atilde;nh diện của những con người tại The Coffee House. H&agrave;nh tr&igrave;nh l&agrave;m n&ecirc;n sự kỳ diệu của c&agrave; ph&ecirc; Việt, t&igrave;nh y&ecirc;u của người Việt đối với c&agrave; ph&ecirc; v&agrave; niềm tự h&agrave;o của người Việt đối với c&agrave; ph&ecirc; Việt vẫn sẽ lu&ocirc;n được nu&ocirc;i dưỡng v&agrave; viết tiếp bởi The Coffee House.&nbsp;</strong></em></p>
', N'638768903899064384.jpg', 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [View], [CategoryId]) VALUES (3, N'Bạc xỉu', CAST(30000.00 AS Decimal(18, 2)), N'<p>Bạc xỉu l&agrave; một loại đồ uống được l&agrave;m từ c&agrave; ph&ecirc; c&oacute; pha sữa nhưng phần sữa sẽ nhiều hơn so với phần c&agrave; ph&ecirc;. Từ &ldquo;bạc xỉu&rdquo; xuất ph&aacute;t từ&nbsp;<a href="https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Qu%E1%BA%A3ng_%C4%90%C3%B4ng" rel="nofollow" target="_blank" title="tiếng Quảng Đông">tiếng Quảng Đ&ocirc;ng</a>&nbsp;v&agrave; được&nbsp;<a href="https://vi.wikipedia.org/wiki/Ng%C6%B0%E1%BB%9Di_Hoa_(Vi%E1%BB%87t_Nam)" rel="nofollow" target="_blank" title="người Hoa">người Hoa</a>&nbsp;d&ugrave;ng phổ biến trong khu vực bu&ocirc;n b&aacute;n ở S&agrave;i G&ograve;n - Chợ lớn l&uacute;c bấy giờ.</p>

<p>Nếu gọi đầy đủ, n&oacute; c&oacute; t&ecirc;n l&agrave; bạc tẩy x&iacute;u ph&eacute;, trong đ&oacute; &ldquo;bạc&rdquo; c&oacute; nghĩa l&agrave; m&agrave;u trắng, &ldquo;tẩy&rdquo; nghĩa l&agrave; c&aacute;i ly kh&ocirc;ng, &ldquo;xỉu&rdquo; c&oacute; nghĩa l&agrave; một ch&uacute;t v&agrave; &ldquo;ph&eacute;&rdquo; c&oacute; nghĩa l&agrave; c&agrave; ph&ecirc;. N&ocirc;m na l&agrave; một loại đồ uống từ sữa n&oacute;ng c&oacute; pha th&ecirc;m một ch&uacute;t c&agrave; ph&ecirc;.</p>

<p><img alt="bạc xỉu là gì" src="https://cdn.tgdd.vn/2021/03/content/13-800x549.jpg" style="height:549px; width:800px" /></p>

<h3>2. Nguồn gốc của bạc xỉu</h3>

<p>Bạc xỉu c&oacute; thể được xem l&agrave; loại đồ uống được pha trộn giữa ba nền văn h&oacute;a l&agrave; Hoa - Ph&aacute;p - Việt. V&agrave;o&nbsp;<a href="https://vi.wikipedia.org/wiki/Ph%C3%A1p_thu%E1%BB%99c" rel="nofollow" target="_blank" title="thời kỳ Pháp thuộc">thời kỳ Ph&aacute;p thuộc</a>&nbsp;ở Việt Nam (1858 - 1954), người Hoa sống tại S&agrave;i G&ograve;n dường như đi sớm trong việc kinh doanh h&agrave;ng qu&aacute;n, kể cả việc mở b&aacute;n c&agrave; ph&ecirc;.</p>

<p>Trong thời gian đầu, phụ nữ v&agrave; trẻ con kh&ocirc;ng quan t&acirc;m đến việc d&ugrave;ng c&agrave; ph&ecirc; đen v&agrave; c&agrave; ph&ecirc; sữa v&igrave; ch&uacute;ng c&oacute; vị đắng, rất kh&oacute; uống. Thậm ch&iacute; c&oacute; thời điểm&nbsp;<a href="https://www.dienmayxanh.com/vao-bep/sua-tuoi-la-gi-cac-loai-sua-tuoi-va-tac-dung-cua-chung-doi-05690" rel="noopener" target="_blank" title="sữa tươi">sữa tươi</a>&nbsp;lại c&oacute; gi&aacute; kh&aacute; đắt đỏ n&ecirc;n người ta đ&atilde; d&ugrave;ng sữa đặc pha với nước n&oacute;ng để thay thế.</p>

<p>Dần dần, vị đắng gắt của c&agrave; ph&ecirc; dường như kh&ocirc;ng c&ograve;n nữa v&agrave; thế l&agrave; bạc xỉu ra đời (v&igrave; sử dụng nhiều sữa hơn c&agrave; ph&ecirc;, gi&uacute;p giảm bớt độ đắng v&agrave; tạo hương thơm đặc trưng cho m&oacute;n nước). Hơn nữa, bạc xỉu c&ograve;n được thưởng thức k&egrave;m với gi&ograve; ch&aacute;o quẩy v&agrave;&nbsp;<a href="https://www.dienmayxanh.com/vao-bep/cach-lam-banh-tieu-nhan-dau-xanh-dua-phong-mem-thom-ngon-de-04988" rel="noopener" target="_blank" title="bánh tiêu">b&aacute;nh ti&ecirc;u</a>&nbsp;mỗi lần d&ugrave;ng v&agrave;o buổi s&aacute;ng.</p>

<p><img alt="Nguồn gốc của bạc xỉu" src="https://cdn.tgdd.vn/2021/03/content/Bac-xiu-la-gi-nguon-goc-va-cach-lam-bac-xiu-thom-ngon-don-gian-tai-nha-5-800x529.jpg" style="height:529px; width:800px" /></p>

<h3>3. C&aacute;ch l&agrave;m bạc xỉu thơm ngon</h3>

<p>B&iacute; quyết l&agrave;m ra ly bạc xỉu ngon kh&ocirc;ng phải ai cũng biết, h&atilde;y để Điện m&aacute;y XANH bật m&iacute; ngay cho bạn:</p>

<h4>Nguy&ecirc;n liệu</h4>

<ul>
	<li>C&agrave; ph&ecirc; pha sẵn: 30ml</li>
	<li>Sữa đặc: 30ml</li>
	<li>Sữa tươi kh&ocirc;ng đường: 100ml</li>
	<li>Dụng cụ:&nbsp;<a href="https://www.dienmayxanh.com/may-danh-trung" rel="noopener" target="_blank" title="Máy đánh trứng">M&aacute;y đ&aacute;nh trứng</a>&nbsp;(hoặc dụng cụ đ&aacute;nh bọt)</li>
</ul>

<h4>C&aacute;ch thực hiện</h4>

<p><strong>Bước 1</strong>: Cho đ&aacute; v&agrave;o 1/3 chiều cao của ly, rồi cho 30ml sữa đặc.</p>

<p><strong>Bước 2</strong>: Cho th&ecirc;m đ&aacute; v&agrave;o đến 2/3 chiều cao ly, rồi đổ th&ecirc;m v&agrave;o 100ml sữa tươi. Ngo&agrave;i ra, nếu muốn bạc xỉu c&oacute; vị đặc biệt, th&igrave; bạn c&oacute; thể th&ecirc;m khoảng 5ml nước cốt dừa.</p>

<p><strong>Bước 3</strong>: Đ&aacute;nh sủi bọt nước c&agrave; ph&ecirc; trong một ly kh&aacute;c cho đến khi c&oacute; độ bọt như &yacute; muốn.</p>

<p><strong>Bước 4</strong>: Tr&uacute;t bọt c&agrave; ph&ecirc; (mới đ&aacute;nh) v&agrave;o ly c&oacute; chứa đ&aacute; v&agrave; sữa. Vậy l&agrave; xong, bạn c&oacute; thể thưởng thức rồi đấy!</p>
', N'638768906235960351.jpg', 0, 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [View], [CategoryId]) VALUES (4, N'Espresso', CAST(35000.00 AS Decimal(18, 2)), N'<p>Espresso nổi tiếng bởi chất lượng hảo hạng v&agrave; quy tr&igrave;nh chế biến đ&ograve;i hỏi chuẩn chỉnh, tỉ mỉ nhất từ kh&acirc;u chọn hạt c&agrave; ph&ecirc; đạt chất lượng đến khi được phục vụ đến tay kh&aacute;ch h&agrave;ng. Vậy Espresso l&agrave; loại c&agrave; ph&ecirc; g&igrave; v&agrave; n&oacute; được pha chế ra sao?&nbsp;</p>

<p><img src="https://file.hstatic.net/1000075078/file/blog_fced2a59673346c48240e09512312768_grande.jpg" /></p>

<p>Espresso l&agrave; loại c&agrave; ph&ecirc; được pha bằng m&aacute;y dưới &aacute;p suất khoảng 9 &ndash; 10 bars (bar - đơn vị đo &aacute;p suất) c&ugrave;ng với nước n&oacute;ng. Để tạo ra được Espresso đ&uacute;ng chuẩn, y&ecirc;u cầu c&aacute;c hạt c&agrave; ph&ecirc; phải nguy&ecirc;n chất, rang mộc, sau đ&oacute; đi xay mịn v&agrave; kh&ocirc;ng tẩm bất kỳ tạp chất n&agrave;o. B&ecirc;n cạnh đ&oacute;, nước d&ugrave;ng để pha Espresso phải l&agrave; nước tinh khiết.</p>

<p>Một t&aacute;ch Espresso đ&uacute;ng ti&ecirc;u chuẩn được chiết xuất khoảng 30 &ndash; 35ml từ 7 &ndash; 10gr c&agrave; ph&ecirc; rang xay (tương đương với 1 shot &ndash; thuật ngữ d&ugrave;ng để chỉ số lượng của Espresso). V&igrave; c&agrave; ph&ecirc; được xay mịn, chiết xuất dưới t&aacute;c động của &aacute;p suất nước cao n&ecirc;n Espresso c&oacute; hương vị rất đậm. T&aacute;ch Espresso sẽ c&oacute; 02 lớp: Crema v&agrave; Liquid.</p>

<p>- Crema: l&agrave; lớp m&agrave;ng bọt m&agrave;u n&acirc;u v&agrave;ng &oacute;ng &aacute;nh ph&iacute;a tr&ecirc;n bề mặt c&agrave; ph&ecirc;, được tạo ra từ kh&iacute; CO2 c&ugrave;ng với một số tinh chất v&agrave; dầu vốn c&oacute; trong hạt c&agrave; ph&ecirc;. Lớp crema c&oacute; vị đắng.</p>

<p>- Liquid: ch&iacute;nh l&agrave; phần nước c&agrave; ph&ecirc; ph&iacute;a dưới, tạo th&agrave;nh bởi c&aacute;c chất ho&agrave; tan, chất kh&iacute; v&agrave; chất kh&ocirc;ng h&ograve;a tan. Đ&acirc;y ch&iacute;nh l&agrave; hương vị nồng đậm v&agrave; đặc sắc của Espresso.</p>

<p><strong>Ph&acirc;n biệt c&aacute;c loại Espresso</strong></p>

<p>Espresso thường được phục vụ trong t&aacute;ch sứ d&agrave;y, c&oacute; thể d&ugrave;ng chung với kem tươi, sữa, foam sữa hoặc c&aacute;c hương vị kh&aacute;c. Tuy nhi&ecirc;n, những người ghiền c&agrave; ph&ecirc; thường uống thuần Espresso hoặc k&egrave;m theo &iacute;t đường. Đ&acirc;y l&agrave; một số loại Espresso vẫn thường được sử dụng.&nbsp;</p>

<p><strong>Espresso Ristretto</strong>:&nbsp;L&agrave; loại rất đậm đặc với lượng bột c&agrave; ph&ecirc; 7gr được xay mịn v&agrave; tạo ra chỉ khoảng 15-20ml nước c&agrave; ph&ecirc;.&nbsp;</p>

<p><strong>Single Espresso (Single Shot):</strong>&nbsp;d&ugrave;ng khoảng 7gr bột c&agrave; ph&ecirc; v&agrave; tạo ra khoảng 30ml nước c&agrave; ph&ecirc;. Đ&acirc;y được xem l&agrave; loại Espresso cơ bản nhất v&agrave; đang được d&ugrave;ng rất nhiều trong c&aacute;c thức uống c&agrave; ph&ecirc; đ&aacute; xay hiện nay.</p>

<p><strong>Doppio Espresso</strong>:&nbsp;Hay c&ograve;n được gọi l&agrave;&nbsp;Double Espresso&nbsp;hoặc Double Shot. Lượng c&agrave; ph&ecirc; tạo th&agrave;nh gấp 2 lần Single Espresso (60ml), đồng thời sử dụng lượng bột gấp đ&ocirc;i (14gr). V&agrave; thời gian pha c&agrave; ph&ecirc; vẫn tương đương Single Espresso.&nbsp;</p>

<p><strong>Lungo Espresso</strong>:&nbsp;Lungo Espresso l&agrave; tiếng Italy, trong tiếng Anh nghĩa l&agrave; Long Espresso. Với lượng nước c&agrave; ph&ecirc; gấp 3 lần Single Espresso, nhưng kh&aacute;c với Doppio, Lungo kh&ocirc;ng d&ugrave;ng nhiều c&agrave; ph&ecirc; hơn m&agrave; thời gian pha c&agrave; ph&ecirc; l&acirc;u hơn. Vậy n&ecirc;n Lungo Espresso &iacute;t đậm đặc nhất.</p>

<p><img src="https://file.hstatic.net/1000075078/file/_downloader.la_-61c5a3efe8a26_e89c52b940a049d7bc8aa114d2c03e5c_grande.jpg" /></p>

<p>Vậy l&agrave; qua b&agrave;i viết n&agrave;y của The Coffee House bạn đ&atilde; c&oacute; thể hiểu hơn về Espresso rồi đ&uacute;ng kh&ocirc;ng? Nếu bạn th&iacute;ch hương vị c&agrave; ph&ecirc; nguy&ecirc;n chất v&agrave; đậm đ&agrave;, c&oacute; thể thưởng thức Espresso của The Coffee House nh&eacute;. Bạn sẽ say m&ecirc; ly Espresso nguy&ecirc;n bản được tinh chế bởi những hạt Arabica chất lượng, phối trộn với tỉ lệ c&acirc;n đối hạt Robusta, mỗi lần pha l&agrave; mỗi lần xay hạt c&agrave; ph&ecirc;, cho ra vị ngọt caramel, vị chua dịu v&agrave; s&aacute;nh đặc. Mỗi cốc Espresso The Coffee House mang đến cho bạn đều mang một vị ngon rất ri&ecirc;ng, kh&ocirc;ng trộn lẫn, kh&ocirc;ng lặp lại. Bởi v&igrave; được tạo ra bằng dấu ấn của c&aacute;c Barista The Coffee House.&nbsp;</p>

<p>C&ograve;n kh&ocirc;ng, nếu bạn l&agrave; người th&iacute;ch những hương vị ngọt ng&agrave;o hơn, bạn c&oacute; thể thưởng thức hương nồng n&agrave;n của Espresso quyện h&ograve;a c&ugrave;ng những hương vị kh&aacute;c, tạo n&ecirc;n những thức uống đặc sắc của The Coffee House. Chẳng hạn như:&nbsp;</p>

<p><strong>Cappuccino:</strong>&nbsp;Một hương vị đặc biệt, nhẹ nh&agrave;ng v&agrave; trầm lắng. L&agrave; thức uống h&ograve;a quyện giữa hương thơm của sữa, vị b&eacute;o của bọt kem c&ugrave;ng vị đậm đ&agrave; từ c&agrave; ph&ecirc; Espresso.&nbsp;</p>

<p><img src="https://file.hstatic.net/1000075078/file/cappucino_nong_lifestyle_637097f22a96435a90de059931e63385_grande.jpg" /></p>

<p><strong>Latte:&nbsp;</strong>Sự kết hợp tinh tế giữa vị đắng c&agrave; ph&ecirc; Espresso nguy&ecirc;n chất h&ograve;a quyện c&ugrave;ng vị sữa ngọt ng&agrave;o, b&ecirc;n tr&ecirc;n l&agrave; một lớp kem mỏng nhẹ tạo n&ecirc;n một t&aacute;ch c&agrave; ph&ecirc; ho&agrave;n hảo về hương vị lẫn nh&atilde;n quan.</p>

<p><img src="https://file.hstatic.net/1000075078/file/latte_nong_lifestyle__1__70352485d5d84cfa8c4b57585f880af4_grande.jpg" /></p>

<p><strong>Caramel Macchiato:</strong>&nbsp;Một sự ngạc nhi&ecirc;n th&uacute; vị khi vị thơm b&eacute;o của bọt sữa, sữa tươi, vị đắng thanh tho&aacute;t của c&agrave; ph&ecirc; Espresso hảo hạng v&agrave; vị ngọt đậm của sốt Caramel được g&oacute;i gọn trong một t&aacute;ch c&agrave; ph&ecirc;.</p>

<p><img src="https://file.hstatic.net/1000075078/file/caramel_macchiato_nong_lifestyle_7833ae4d56454579ba7099e1b6c1d061_grande.jpg" /></p>

<p><strong>Mocha:</strong>&nbsp;Sự kết hợp ho&agrave;n hảo từ vị đắng đậm đ&agrave; của Espresso v&agrave; sốt socola ngọt ng&agrave;o tạo n&ecirc;n hương vị c&agrave; ph&ecirc; đầy l&ocirc;i cuốn, đ&aacute;nh thức mọi gi&aacute;c quan.</p>

<p><img src="https://file.hstatic.net/1000075078/file/mocha_nong_lifestyle__3__034580c0983747b18d668e5ca5641c9a_grande.jpg" /></p>
', N'638768908046722687.jpg', 0, 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [View], [CategoryId]) VALUES (5, N'Cappuccino', CAST(40000.00 AS Decimal(18, 2)), N'<p>Cappuccino l&agrave; t&ecirc;n gọi một loại caf&eacute; của &Yacute;, được tạo n&ecirc;n từ 3 phần đều nhau: Caf&eacute; Espresso pha với lượng nước gấp đ&ocirc;i th&ocirc;ng thường (espresso lungo), sữa n&oacute;ng v&agrave; sữa sủi bọt. Để ho&agrave;n thiện khẩu vị, người ta thường rải l&ecirc;n tr&ecirc;n t&aacute;ch c&agrave; ph&ecirc; Cappuccino l&agrave; bột ca cao hay bột quế. Trong c&aacute;c qu&aacute;n c&agrave; ph&ecirc; ở &Yacute;, Barista thường d&ugrave;ng khu&ocirc;n hay d&ugrave;ng th&igrave;a v&agrave; bằng c&aacute;ch khuấy điệu nghệ trong l&uacute;c rắc bột để tạo th&agrave;nh c&aacute;c h&igrave;nh nghệ thuật.</p>

<p><img alt="cappuccino cafe cua y" src="https://chefjob.vn/wp-content/uploads/2020/07/cappuccino-cafe-cua-y.jpg" title="Cappuccino là tên gọi một loại café của Ý, được tạo nên từ 3 phần: Café Espresso, sữa nóng và sữa sủi bọt " /><br />
<em>Cappuccino l&agrave; t&ecirc;n gọi một loại caf&eacute; của &Yacute;, được tạo n&ecirc;n từ 3 phần: Caf&eacute; Espresso, sữa n&oacute;ng v&agrave; sữa sủi bọt &ndash; Ảnh: Internet</em></p>

<p>T&ecirc;n gọi của loại caf&eacute; n&agrave;y được cho l&agrave; xuất ph&aacute;t từ t&ecirc;n gọi c&aacute;c nh&agrave; tu d&ograve;ng Capuchin, m&agrave;u &aacute;o thụng của c&aacute;c nh&agrave; tu gần giống với m&agrave;u n&acirc;u của một t&aacute;ch c&agrave; ph&ecirc; Cappuccino ho&agrave;n hảo. Mũ của chiếc &aacute;o tu n&agrave;y được gọi trong tiếng &Yacute; l&agrave; cappuccio.</p>

<p>Cappuccino m&agrave; ch&uacute;ng ta thưởng thức ng&agrave;y nay được giới thiệu lần đầu ti&ecirc;n v&agrave;o thế kỷ 20. M&aacute;y pha caf&eacute; Cappuccino được ph&aacute;t minh bởi Luigi Bezzera năm 1901. Ph&aacute;t minh n&agrave;y đ&atilde; gi&uacute;p việc pha Cappuccino trở n&ecirc;n đơn giản hơn. Những t&agrave;i liệu đầu ti&ecirc;n c&oacute; ghi ch&eacute;p về Cappuccino được t&igrave;m thấy v&agrave;o khoảng năm 1948. Cho đến những năm 1950, Cappuccino đ&atilde; trở th&agrave;nh một trong những loại thức uống phổ biến tr&ecirc;n to&agrave;n thế giới.</p>

<h2>Th&agrave;nh phần của Cappuccino l&agrave; g&igrave;?</h2>

<p>T&aacute;ch Cappuccino bao gồm 3 th&agrave;nh phần ch&iacute;nh: Caf&eacute; espresso, sữa n&oacute;ng v&agrave; sữa sủi bọt, tạo n&ecirc;n sự h&ograve;a quyện ho&agrave;n hảo về hương vị với vị caf&eacute; trầm v&agrave; nhẹ, hơi đăng đắng v&agrave; vị b&eacute;o của sữa, ngọt ng&agrave;o của kem.</p>

<p>Th&agrave;nh phần của Cappuccin tương tự như Latte &ndash; một loại caf&eacute; kh&aacute;c của &Yacute; n&ecirc;n thường khiến nhiều người nhầm lẫn hai loại caf&eacute; n&agrave;y. Về cơ bản, th&agrave;nh phần của Cappuccino v&agrave; Latte giống nhau nhưng lượng sữa v&agrave; bọt sữa trong t&aacute;ch Cappucino kh&aacute; tương đồng. C&ograve;n với latte, lượng bọt sữa chỉ xấp xỉ một nửa lượng sữa, n&ecirc;n Cappuccino c&oacute; độ bồng bềnh hơn so với Latte.</p>

<p><img alt="cappuccino co lop bot sua bong benh hon latte" src="https://chefjob.vn/wp-content/uploads/2020/07/cappuccino-co-lop-bot-sua-bong-benh-hon-latte.jpg" title="Dù khá tương đồng với Latte nhưng lớp bọt sữa của Cappuccino có độ bồng bềnh hơn" /><br />
<em>D&ugrave; kh&aacute; tương đồng với Latte nhưng lớp bọt sữa của Cappuccino c&oacute; độ bồng bềnh hơn &ndash; Ảnh: Internet</em></p>

<p>Yếu tố quan trọng l&agrave;m n&ecirc;n sức hấp dẫn của Cappuccino đ&oacute; l&agrave; lớp bọt sữa (foam), c&oacute; độ d&agrave;y chừng 2 &ndash; 3 cm. Về hương vị, lớp bọt sữa tăng độ b&eacute;o, hương thơm cho kem sữa v&agrave; giảm độ chua, đắng của caf&eacute;, gi&uacute;p t&aacute;ch caf&eacute; trở n&ecirc;n tr&ograve;n vị hơn. B&ecirc;n cạnh đ&oacute;, lớp bọt sữa n&agrave;y c&ograve;n c&oacute; t&aacute;c dụng giữ nhiệt, giữ phần caf&eacute; v&agrave; sữa ph&iacute;a dưới n&oacute;ng v&agrave; thơm l&acirc;u hơn. C&ograve;n về mặt thẩm mỹ, lớp bọt sữa được tạo h&igrave;nh đa dạng từ h&igrave;nh tr&aacute;i tim, dương xỉ&hellip; sẽ khiến t&aacute;ch caf&eacute; đẹp mắt hơn, hấp dẫn hơn. Lớp bọt sữa cũng phần n&agrave;o thể hiện được tr&igrave;nh độ v&agrave; đẳng cấp của một Barista. Với nhiều người, tạo h&igrave;nh cho bọt sữa hay c&ograve;n gọi l&agrave; nghệ thuật trang tr&iacute; tr&ecirc;n ly caf&eacute; (Latte Art) ch&iacute;nh l&agrave; một thử th&aacute;ch kh&oacute; khăn v&agrave; đầy th&uacute; vị. Tạo h&igrave;nh c&agrave;ng s&aacute;ng tạo, đẹp mắt th&igrave; chứng tỏ Barista c&agrave;ng l&agrave;nh nghề.</p>

<h2>Cappuccino &ndash; hương vị ho&agrave;n hảo của nước &Yacute;</h2>

<p>C&oacute; nguồn gốc từ đất nước &Yacute; xinh đẹp, l&atilde;ng mạn, được s&aacute;ng tạo n&ecirc;n bởi những con người &Yacute; t&agrave;i ba, h&agrave;o hoa, t&aacute;ch Cappuccino được xem như một hương vị ho&agrave;n hảo của nước &Yacute;, khiến người d&acirc;n &Yacute; tự h&agrave;o.</p>

<p><img alt="cappuccino niem tu hao dan y" src="https://chefjob.vn/wp-content/uploads/2018/01/cappuccino-niem-tu-hao-dan-y.jpg" title="Cappuccino là hương vị hoàn hảo, là niềm tự hào của người dân Ý" /><br />
<em>Cappuccino l&agrave; hương vị ho&agrave;n hảo, l&agrave; niềm tự h&agrave;o của người d&acirc;n &Yacute; &ndash; Ảnh: Internet</em></p>

<p>Kh&ocirc;ng &ldquo;<em>đen như địa ngục, đắng như tử thần</em>&rdquo; như c&aacute;ch người Thổ Nhĩ Kỳ định nghĩa về một hương vị caf&eacute;, với Cappuccino của người &Yacute;, bạn sẽ cảm nhận ch&uacute;t đăng đắng của caf&eacute; được h&ograve;a tan, c&acirc;n chỉnh với vị ngọt ng&agrave;o, beo b&eacute;o của kem, sữa v&agrave; sự bồng bềnh của lớp bọt tr&ecirc;n c&ugrave;ng. Cappuccino thường được thưởng thức trong những chiếc ly l&agrave;m bằng đ&aacute; hay sứ, c&oacute; th&agrave;nh d&agrave;y v&agrave; được h&acirc;m n&oacute;ng trước khi mang ra phục vụ cho kh&aacute;ch.</p>

<p>Bằng hương vị thơm ngon, nghệ thuật pha chế v&agrave; tạo h&igrave;nh bọt sữa đầy tinh tế, ngay khi nhấp một ngụm Cappuccino, vị đăng đắng của Espresso khiến bạn như bừng tỉnh, tiếp đ&oacute; l&agrave; vị ngọt ng&agrave;o, beo b&eacute;o của kem sữa đầy say m&ecirc; v&agrave; cuối c&ugrave;ng l&agrave; lớp bọt sữa mịn m&agrave;ng vương tr&ecirc;n miệng. Đ&oacute; cũng l&agrave; l&iacute; do v&igrave; sao Cappuccino dễ d&agrave;ng chinh phục vị gi&aacute;c nhiều người.</p>

<p>C&oacute; nhiều người cho rằng, t&igrave;nh y&ecirc;u mới chớm nở ch&iacute;nh l&agrave; hương vị của Cappuccino:&nbsp;<em>&ldquo;Khi t&igrave;nh y&ecirc;u chớm nở, n&oacute; mang hương vị nhẹ dịu, ngọt ng&agrave;o của Cappuccino, nhiều bọt v&agrave; &ldquo;vui tươi&rdquo;, rất dễ uống v&agrave; mang đến cho người ta cảm gi&aacute;c nhẹ nh&agrave;ng, bắt mắt với h&igrave;nh ảnh của những tr&aacute;i tim quyện v&agrave;o nhau&rdquo;</em>.<br />
Cũng c&oacute; người cho rằng, t&igrave;nh y&ecirc;u l&agrave; một ly Cappuccino: &ldquo;<em>Mới đầu l&agrave; c&aacute;i g&igrave; đ&oacute; bềnh bồng l&agrave;m cho người ta ng&acirc;y ngất. Nhưng sau đ&oacute; l&agrave; vị đắng của caf&eacute; &ndash; thử th&aacute;ch. Cuối hết l&agrave; lớp sữa ngọt ng&agrave;o &ndash; đ&oacute; l&agrave; kết quả&rdquo;.</em></p>
', N'638768909341332329.jpg', 0, 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [View], [CategoryId]) VALUES (6, N'Caramel Macchiato', CAST(40000.00 AS Decimal(18, 2)), N'<p>&ldquo;Macchiato&rdquo; tiếng &Yacute; c&oacute; nghĩa l&agrave; &ldquo;vệt lốm đốm&rdquo;, d&ugrave;ng để chỉ một trong những sản phẩm caf&eacute; &Yacute; điển h&igrave;nh, b&ecirc;n cạnh Cappuccino hay Latte. Ng&agrave;y nay, Macchiato c&ograve;n được sử dụng để gọi c&aacute;c loại tr&agrave; c&oacute; lớp bọt sữa d&agrave;y căng mịn phủ ph&iacute;a tr&ecirc;n. Tuy nhi&ecirc;n b&agrave;i viết n&agrave;y chỉ đề cập đến t&iacute;nh chất v&agrave; c&aacute;ch pha chế Caf&eacute; Macchiato nguy&ecirc;n gốc chuẩn hương vị &Yacute;.</p>

<p>Caf&eacute; Macchiato c&oacute; 2 phi&ecirc;n bản l&agrave;&nbsp;<strong>Espresso Macchiato</strong>&nbsp;v&agrave;&nbsp;<strong>Latte Macchiato</strong>, kh&aacute;c nhau (thậm ch&iacute; l&agrave; đối lập nhau) ở lượng caf&eacute; v&agrave; sữa.</p>

<p><strong>Espresso Macchiato</strong></p>

<p><img alt="espresso macchiato" src="https://vietblend.vn/wp-content/uploads/2018/12/espresso-macchito.jpg" style="height:378px; width:505px" /><em>Ảnh: Internet</em></p>

<p>Espresso Macchiato c&oacute; th&agrave;nh phần chủ yếu l&agrave; caf&eacute; (1 shot hoặc 2 shot), chỉ c&oacute; 1 ch&uacute;t sữa tươi đ&aacute;nh n&oacute;ng v&agrave; điểm th&ecirc;m &ldquo;đốm&rdquo; bọt sữa nhỏ. Loại n&agrave;y d&agrave;nh cho những người y&ecirc;u th&iacute;ch hương vị mạnh, đậm đắng của caf&eacute;.</p>

<p><strong>Latte Macchiato</strong></p>

<p><img alt="latte macchiato" src="https://vietblend.vn/wp-content/uploads/2018/12/latte-macchiato.jpg" style="height:740px; width:938px" /><em>Ảnh: Internet</em></p>

<p>Latte Macchiato th&agrave;nh phần ch&iacute;nh l&agrave; sữa tươi đ&aacute;nh n&oacute;ng v&agrave; bọt sữa rất d&agrave;y, c&ograve;n caf&eacute; đ&oacute;ng vai tr&ograve; &ldquo;vệt lốm đốm&rdquo;. Latte Macchiato kh&aacute;c với caf&eacute; th&ocirc;ng thường ở lớp bọt sữa, d&agrave;nh cho những người ưa vị ngọt, b&eacute;o ngậy nhưng vẫn phảng phất 1 ch&uacute;t caf&eacute;.</p>

<p>Latte Macchiato thường được ưa chuộng hơn, v&agrave; một biến thể của d&ograve;ng sản phẩm n&agrave;y c&oacute; t&ecirc;n gọi Caramel Macchiato &ndash; sự kết hợp ho&agrave;n hảo giữa vị đắng nhẹ của caf&eacute; espresso, vị b&eacute;o ngậy của sữa đ&aacute;nh n&oacute;ng c&ugrave;ng caramel thơm ngọt ng&agrave;o, b&ecirc;n tr&ecirc;n phủ một lớp bọt sữa trắng căng mịn thật d&agrave;y. Thưởng thức Macchiato tuyệt nhi&ecirc;n kh&ocirc;ng n&ecirc;n d&ugrave;ng ống h&uacute;t hay th&igrave;a khuấy, m&agrave; h&atilde;y nhấp m&ocirc;i để cảm nhận d&ograve;ng caf&eacute; sữa caramel xuy&ecirc;n qua lớp bọt tan dần trong miệng.</p>

<p>&nbsp;<strong><a href="https://vietblend.vn/cach-pha-matcha-latte/">&gt;&gt; Tham khảo c&aacute;ch l&agrave;m m&oacute;n matcha latte của Starbucks</a></strong></p>

<p><strong>2. C&aacute;ch pha chế caf&eacute; Caramel Macchiato đ&uacute;ng chuẩn caf&eacute; &Yacute;</strong></p>

<p><img alt="cách pha Cách pha Caramel Macchiato" src="https://vietblend.vn/wp-content/uploads/2018/12/caramel-macchiato_830x550.jpg" style="height:550px; width:830px" /><em>Ảnh: Internet</em></p>

<p>Để pha được c&aacute;c d&ograve;ng sản phẩm caf&eacute; &Yacute;, bạn cần c&oacute; m&aacute;y pha caf&eacute; v&agrave; c&aacute;c dụng cụ đi k&egrave;m kh&aacute;c.&nbsp; Bạn n&ecirc;n tham gia 1&nbsp;<a href="https://vietblend.vn/course/khoa-hoc-pha-che-tong-hop/"><strong>kh&oacute;a học pha chế c&agrave; ph&ecirc;</strong></a>&nbsp;để nắm được những kỹ thuật chiết xuất v&agrave; đ&aacute;nh sữa cơ bản.</p>

<p><strong>Nguy&ecirc;n liệu:</strong></p>

<ul>
	<li>Caf&eacute; espresso</li>
	<li>Sữa tươi thanh tr&ugrave;ng: 200ml</li>
	<li>Sauce Caramel Davinci: 20ml</li>
	<li>Đường nước: 5ml</li>
</ul>

<p><strong>C&aacute;ch l&agrave;m:</strong></p>

<ul>
	<li>Bước 1: Chuẩn bị 1 cốc thủy tinh trong c&oacute; quai đ&atilde; lau sạch (đồ n&oacute;ng n&ecirc;n d&ugrave;ng cốc c&oacute; quai). Cho 15ml sauce caramel v&agrave; 5ml đường nước v&agrave;o đ&aacute;y ly.</li>
	<li>Bước 2: Cho sữa v&agrave;o ca đ&aacute;nh sữa, sục n&oacute;ng, tạo nhiều bọt</li>
	<li>Bước 3: Xử l&yacute; bọt sữa</li>
	<li>Bước 4: M&uacute;c bọt phủ bao quanh th&agrave;nh cốc, sau đ&oacute; m&uacute;c 1 th&igrave;a bọt to phủ l&ecirc;n tr&ecirc;n lớp caramel</li>
	<li>Bước 5: Đổ từ từ sữa theo d&ograve;ng nhỏ v&agrave;o ch&iacute;nh giữa, vừa đổ vừa lấy th&igrave;a gạn bọt đều tay. Đổ đến khi sữa v&agrave; bọt c&aacute;ch miệng cốc 0.3cm</li>
	<li>Bước 6: Chiết xuất 1 shot espresso single</li>
	<li>Bước 7: R&oacute;t từ từ caf&eacute; v&agrave;o ch&iacute;nh giữa cốc. Caf&eacute; sẽ xuy&ecirc;n qua lớp bọt, nằm giữa lớp sữa v&agrave; bọt sữa</li>
	<li>Bước 8: M&uacute;c 1 th&igrave;a bọt nhỏ phủ l&ecirc;n vệt caf&eacute;. D&eacute;cor bằng 5ml sauce caramel c&ograve;n lại.&nbsp;</li>
</ul>

<p>Sản phẩm ho&agrave;n chỉnh sẽ c&oacute; sự ph&acirc;n tầng r&otilde; rệt v&agrave; đẹp mắt. C&ocirc;ng đoạn kh&oacute; nhất trong c&aacute;ch l&agrave;m Caramel Macchiato l&agrave; chiết xuất caf&eacute; v&agrave; sục sữa chuẩn, để l&agrave;m được bạn cần c&oacute; một người hướng dẫn v&agrave; sau đ&oacute; luyện tập dần. Caf&eacute; Caramel Macchiato thường được phục vụ với v&agrave;i chiếc b&aacute;nh cookie để ăn k&egrave;m.</p>

<p>Hy vọng với b&agrave;i viết tr&ecirc;n bạn đ&atilde; hiểu được Macchiato l&agrave; g&igrave; v&agrave; C&aacute;ch pha Caramel Macchiato ngon nhất.</p>
', N'638768911617734352.jpg', 0, 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [View], [CategoryId]) VALUES (7, N'Americano', CAST(40000.00 AS Decimal(18, 2)), N'<p>Americano l&agrave; một trong những loại c&agrave; ph&ecirc; phổ biến nhất thế giới, chinh phục người y&ecirc;u c&agrave; ph&ecirc; với hương vị thơm ngon v&agrave; dễ uống. C&ugrave;ng&nbsp;<a href="https://dacsannui.vn/" target="_blank">Đặc Sản N&uacute;i</a>&nbsp;t&igrave;m hiểu&nbsp;<a href="https://dacsannui.vn/blogs/news/ca-phe-americano-la-gi-cach-pha-americano-chuan-vi" target="_blank">c&agrave; ph&ecirc; Americano l&agrave; g&igrave;</a>&nbsp;v&agrave; c&aacute;ch pha chuẩn vị qua b&agrave;i viết h&ocirc;m nay nh&eacute;.&nbsp;</p>

<p><img src="https://file.hstatic.net/1000318827/file/americano-la-gi_ec753c80a4e14e338a4bfc9acbed2f76.jpg" /></p>

<h2>1. Americano l&agrave; g&igrave;?&nbsp;</h2>

<p><strong>Americano&nbsp;</strong>c&ograve;n c&oacute; t&ecirc;n gọi l&agrave; c&agrave; ph&ecirc; American, Caf&eacute; Americano, American Coffee hay c&agrave; ph&ecirc; Mỹ. Đ&acirc;y l&agrave; c&agrave; ph&ecirc; Espresso của người Mỹ. Được pha chế bằng c&aacute;ch cho th&ecirc;m nước n&oacute;ng v&agrave;o Espresso theo một tỉ lệ nhất định. Điều n&agrave;y gi&uacute;p c&agrave; ph&ecirc; giảm độ đậm v&agrave; vị chua.&nbsp;</p>

<p><img src="https://file.hstatic.net/1000318827/file/uong-americano_0e450f6be20049448e54c96a59070c1a.jpg" /></p>

<h2>2. Nguồn gốc của Americano</h2>

<p>Trong thế chiến thứ nhất v&agrave; thứ hai, những người l&iacute;nh Mỹ đ&oacute;ng qu&acirc;n tại &Yacute; thường c&oacute; th&oacute;i quen uống&nbsp;<a href="https://dacsannui.vn/collections/ca-phe-dac-san" target="_blank">c&agrave; ph&ecirc;</a>&nbsp;<strong>Espresso</strong>&nbsp;để giải kh&aacute;t sau khi tập luyện. Tuy nhi&ecirc;n, Espresso thuần t&uacute;y chứa lượng lớn caffeine, người uống kh&ocirc;ng quen dễ dẫn đến ch&oacute;ng mặt v&agrave; say c&agrave; ph&ecirc;. Ngo&agrave;i ra, vị của Espresso cũng kh&aacute; đắng, kh&ocirc;ng hợp với khẩu vị của người Mỹ.&nbsp;</p>

<p>V&igrave; thế, l&iacute;nh Mỹ đ&atilde; pha nước s&ocirc;i v&agrave;o Espresso để giảm bớt vị đắng v&agrave; c&aacute;c t&aacute;c dụng phụ. Từ đ&oacute;, c&aacute;ch pha c<strong>&agrave; ph&ecirc;&nbsp;Americano</strong>&nbsp;ra đời v&agrave; dần trở th&agrave;nh thức uống truyền thống của người Mỹ bởi vị dễ uống, h&agrave;m lượng cafein cũng &iacute;t hơn.&nbsp;</p>

<h3>Tỉ lệ pha cafe Americano</h3>

<p>Để pha được một ly&nbsp;<strong>Americano</strong>&nbsp;bạn cần 1 shot c&agrave; ph&ecirc; Espresso (25-30ml) v&agrave; 30-470ml nước s&ocirc;i.&nbsp;</p>

<p>Lượng nước s&ocirc;i nhiều hay &iacute;t sẽ phụ thuộc v&agrave;o khẩu vị của người uống. Th&ocirc;ng thường, tỉ lệ sẽ l&agrave; 1/2 Espresso: 1/2 nước s&ocirc;i hoặc 1/3 Espresso: 2/3 nước s&ocirc;i.</p>

<h2>3. C&aacute;ch pha Americano ngon đ&uacute;ng chuẩn vị Mỹ&nbsp;</h2>

<h3>Nguy&ecirc;n liệu</h3>

<ul>
	<li>7-10g&nbsp;<a href="https://dacsannui.vn/products/ca-phe-m-ja-signature-200g" target="_blank">c&agrave; ph&ecirc; hạt</a>&nbsp;</li>
	<li>Nước tinh khiết&nbsp;</li>
	<li>Đường trắng&nbsp;</li>
	<li>Dụng cụ: M&aacute;y pha cafe Espresso, m&aacute;y xay c&agrave; ph&ecirc; (nếu d&ugrave;ng bột c&agrave; ph&ecirc; xay sẵn th&igrave; khỏi), ly t&aacute;ch</li>
</ul>

<p><img src="https://file.hstatic.net/1000318827/file/pha-che-ca-phe-americano_7f9585a7a4ef4ad09dc6a7182aaab9cc.jpg" /></p>

<h3>C&aacute;ch thực hiện&nbsp;</h3>

<p><u><strong>Bước 1:</strong></u>&nbsp;D&ugrave;ng m&aacute;y say c&agrave; ph&ecirc;, say hạt c&agrave; ph&ecirc; th&agrave;nh bột c&oacute; độ mịn vừa phải. Nếu d&ugrave;ng c&agrave; ph&ecirc; bột say sẵn th&igrave; cần khoảng 7g.&nbsp;</p>

<p><u><strong>Bước 2:</strong></u>&nbsp;Cho bột c&agrave; ph&ecirc; v&agrave;o bộ lọc porter, rồi d&ugrave;ng temper để n&eacute;n bột c&agrave; ph&ecirc; với lực vừa phải.</p>

<p><u><strong>Bước 3:</strong></u>&nbsp;Lắp bộ lọc porter c&oacute; chứa bột c&agrave; ph&ecirc; được n&eacute;n v&agrave;o m&aacute;y pha c&agrave; ph&ecirc;. Sau đ&oacute;, bạn nhấn n&uacute;t pha c&agrave; ph&ecirc;.</p>

<p><u><strong>Bước 4:</strong></u>&nbsp;Đặt t&aacute;ch dưới v&ograve;i của bộ lọc porter để hứng lấy c&agrave; ph&ecirc; Espresso.</p>

<p><u><strong>Bước 5:&nbsp;</strong></u>Bạn cho v&agrave;o cốc c&agrave; ph&ecirc; Espresso th&ecirc;m khoảng 30 - 70ml nước s&ocirc;i t&ugrave;y theo khẩu vị. Cuối c&ugrave;ng d&ugrave;ng muỗng khuấy h&ograve;a tan c&agrave; ph&ecirc;, vậy l&agrave; t&aacute;ch&nbsp;<strong>c&agrave; ph&ecirc; Americano&nbsp;</strong>đ&atilde; ho&agrave;n th&agrave;nh rồi đấy.&nbsp;</p>

<h2>4. Thướng thức Americano&nbsp;</h2>

<p>Bạn c&oacute; thể nh&acirc;m nhi, thưởng thức&nbsp;<strong>Americano</strong>&nbsp;khi tr&ograve; chuyện c&ugrave;ng bạn b&egrave;, hay khi học tập, l&agrave;m việc để c&agrave; ph&ecirc; gi&uacute;p tinh thần bạn lu&ocirc;n tỉnh t&aacute;o.&nbsp;</p>

<p><img src="https://file.hstatic.net/1000318827/file/thuc-uong-americano_05f9debc07a542629d5c75de75fd95c7.jpg" /></p>

<p>T&ugrave;y v&agrave;o khẩu vị, bạn c&oacute; thể điều chỉnh lượng đường cho v&agrave;o&nbsp;<strong>Americano</strong>. H&atilde;y khuấy đều để hương vị c&agrave; ph&ecirc; h&ograve;a quyện v&agrave;o nhau nh&eacute;.&nbsp;</p>

<h2>5. Biến tấu c&ugrave;ng c&agrave; ph&ecirc; Americano</h2>

<p>Ng&agrave;y nay,&nbsp;<strong>Americano&nbsp;</strong>được s&aacute;ng tạo v&agrave; biến tấu để thức uống n&agrave;y trở n&ecirc;n th&uacute; vị v&agrave; ph&ugrave; hợp với nhiều kh&aacute;ch h&agrave;ng hơn:</p>

<ul>
	<li>Americano thường được phục vụ theo hai kiểu:&nbsp;<strong>Americano đ&aacute;</strong>&nbsp;hoặc&nbsp;<strong>Americano n&oacute;ng</strong>.</li>
	<li><strong>Americano</strong>&nbsp;được th&ecirc;m sữa kh&ocirc;ng đường hoặc v&aacute;ng sữa. Theo tỷ lệ 3 phần c&agrave; ph&ecirc; Espresso, 1 phần sữa kh&ocirc;ng đường v&agrave; 1/2 v&aacute;ng sữa.</li>
	<li><strong>C&agrave; ph&ecirc; Americano&nbsp;</strong>c&oacute; 3 lớp: lớp 1 l&agrave; c&agrave; ph&ecirc; Espresso, lớp 2 l&agrave; l&ograve;ng đỏ trứng được đ&aacute;nh b&ocirc;ng với một &iacute;t mật ong, v&agrave; lớp 3 l&agrave; l&ograve;ng trắng trứng được đ&aacute;nh b&ocirc;ng với đường.</li>
</ul>

<p><img src="https://file.hstatic.net/1000318827/file/americano-duoc-ua-chuong_785ea1eb31944187aa394face06ff272.jpg" /></p>

<p><strong>Americano</strong>&nbsp;l&agrave; loại c&agrave; ph&ecirc; được d&acirc;n văn ph&ograve;ng v&agrave; sinh vi&ecirc;n y&ecirc;u th&iacute;ch gi&uacute;p duy tr&igrave; sự tỉnh t&aacute;o v&agrave; tiếp th&ecirc;m năng lượng l&agrave;m việc, học h&agrave;nh. Hi vọng b&agrave;i viết n&agrave;y gi&uacute;p bạn c&oacute; th&ecirc;m th&ocirc;ng tin Americano l&agrave; g&igrave;, nguồn gốc xuất xứ, c&aacute;ch pha chế. Nếu bạn muốn t&igrave;m hiểu về loại c&agrave; ph&ecirc; n&agrave;o h&atilde;y comment cho Đặc Sản N&uacute;i biết nh&eacute;.</p>
', N'638768935233276199.jpg', 0, 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [View], [CategoryId]) VALUES (8, N'Cà Phê Muối', CAST(30000.00 AS Decimal(18, 2)), N'<p>Cafe muối (salt coffee) c&oacute; phải kh&aacute; lạ lẫm đối với bạn? Bạn chưa từng hay đ&atilde; nghe qua c&agrave; ph&ecirc; muối v&agrave; băn khoăn kh&ocirc;ng kh&ocirc;ng biết đ&oacute; l&agrave; g&igrave;? Cafe bỏ muối liệu c&oacute; hương vị độc đ&aacute;o g&igrave;? C&oacute; kh&aacute;c so với c&agrave; ph&ecirc; nguy&ecirc;n chất hay cafe th&ecirc;m sữa đường hay kh&ocirc;ng? B&agrave;i viết n&agrave;y sẽ cho bạn biết lời giải chi tiết nhất.</p>

<p><img alt="Cà phê muối thu hút thực khách " src="https://xofacafebistro.com/wp-content/uploads/2023/04/ca-phe-muoi-thu-hut-thuc-khach.jpg" style="height:400px; width:600px" /></p>

<h2>Cafe muối nguồn gốc từ đ&acirc;u?</h2>

<p>Được biết đến đầu ti&ecirc;n ở xứ Huế, hương vị n&agrave;y được cho l&agrave; c&ocirc;ng thức đặc biệt đến từ một qu&aacute;n c&agrave; ph&ecirc; s&acirc;n vườn tr&ecirc;n đường Nguyễn Lương Bằng như MISA CukCuk. Theo lời chủ qu&aacute;n, &yacute; tưởng s&aacute;ng chế ra loại c&agrave; ph&ecirc; n&agrave;y xuất ph&aacute;t từ c&acirc;u chuyện về &ldquo;cafe mặn&rdquo; m&agrave; họ được biết khi mở qu&aacute;n. Từ đ&oacute; việc thử nghiệm v&agrave; điều chỉnh c&ocirc;ng thức đ&atilde; cho ra c&agrave; ph&ecirc; muối m&agrave; mọi người y&ecirc;u th&iacute;ch như b&acirc;y giờ.</p>

<p>L&agrave; m&oacute;n đồ uống phổ biến ở Việt Nam khoảng 10 năm trở lại đ&acirc;y, nhưng từ l&acirc;u đ&acirc;y l&agrave; m&oacute;n c&agrave; ph&ecirc; phổ biến ở nhiều nước tr&ecirc;n thế giới với c&aacute;c t&ecirc;n gọi kh&aacute;c nhau.</p>

<p>Theo những c&acirc;u chuyện được truyền lại, những người đi biển (thủy thủ, ngư d&acirc;n,&hellip;) đ&atilde; nảy ra &yacute; tưởng pha c&agrave; ph&ecirc; bằng nước biển trong những chuyến đi d&agrave;i khan hiếm nước ngọt. Ngo&agrave;i ra, tờ Interstate Druggist (Mỹ) đưa tin Tiến sĩ William C. Alpers (Mỹ) đ&atilde; th&ecirc;m muối v&agrave;o c&agrave; ph&ecirc; v&agrave; b&aacute;n ch&uacute;ng. &Ocirc;ng n&oacute;i rằng th&ecirc;m muối v&agrave;o c&agrave; ph&ecirc; sẽ tạo ra một hương vị tinh tế hơn. Nhờ ph&aacute;t hiện mới n&agrave;y, thu nhập của c&ocirc;ng ty &ocirc;ng tăng l&ecirc;n đ&aacute;ng kể.</p>

<p><img alt="Cà phê muối là gì" src="https://xofacafebistro.com/wp-content/uploads/2023/04/ca-phe-muoi-la-gi.jpg" style="height:400px; width:600px" /></p>

<p>Hiện giờ, cafe muối nằm trong danh s&aacute;ch c&ugrave;ng với những loại c&agrave; ph&ecirc; kh&aacute;c như cafe sữa, cafe trứng,&hellip; Mỗi th&agrave;nh phố như H&agrave; Nội, Đ&agrave; Nẵng, TP Hồ Ch&iacute; Minh lại c&oacute; sự biến tấu c&ocirc;ng thức để ph&ugrave; hợp khẩu vị từng v&ugrave;ng.</p>

<h2>Cafe muối đem tới hương vị thế n&agrave;o?</h2>

<p>Hương vị đặc trưng của cafe n&agrave;y thường l&agrave; vị đắng, tuy nhiện vị đắng &iacute;t hay nhiều c&ograve;n t&ugrave;y thuộc v&agrave;o người pha chế. Giống như việc th&ecirc;m đường sữa th&igrave; việc th&ecirc;m muối cũng l&agrave; gia vị gi&uacute;p l&agrave;m dịu vị đắng của c&agrave; ph&ecirc;. X&eacute;t về g&oacute;c độ h&oacute;a học, việc th&ecirc;m muối v&agrave;o cafe sẽ l&agrave;m giải ph&oacute;ng c&aacute;c ion Natri tốt cho cơ thể.</p>

<p>Vị mặn của muối tưởng l&agrave; kh&ocirc;ng hợp đối với ly cafe nhưng thực tế lại l&agrave;m nổi bật l&ecirc;n hương vị nồng n&agrave;n, dịu đi vị đăng v&agrave; tăng vị ngọt thơm của sữa. C&oacute; thể thấy muối sẽ tạo n&ecirc;n hương vị v&agrave; sự mới mẻ cho kh&aacute;ch h&agrave;ng, rất đ&aacute;ng để thử.</p>

<p><img src="https://xofacafebistro.com/wp-content/uploads/2023/04/cach-pha-ca-phe-muoi-noi-tieng-cua-xu-hue-ngon-chuan-vi-202303292202021926.jpg" style="height:500px; width:800px" /></p>

<ul>
	<li><strong>Giảm vị đắng hạt c&agrave; ph&ecirc;</strong>: Muối c&oacute; thể ức chế vị đắng v&agrave; chua nhờ v&agrave;o vị mặn của m&igrave;nh, do natri clorua trong muối c&oacute; thể l&agrave;m trung h&ograve;a vị đắng do qu&aacute; tr&igrave;nh rang cafe l&agrave;m hợp chất chlorogenic acids bị ph&aacute; vỡ g&acirc;y ra. Như vậy khi uống bạn sẽ cảm nhận &iacute;t vị đắng v&agrave; sẽ l&agrave;m bật l&ecirc;n vị ngọt cũng như vị chua khi uống.</li>
	<li><strong>Hương vị phong ph&uacute;</strong>: C&aacute;c ion Natri sẽ được giải ph&oacute;ng nhờ sự xuất hiện của muối, từ đ&oacute; khơi l&ecirc;n hương vị đặc biệt cho bạn được nhiều trải nghiệm hơn khi thưởng thức, cũng như c&oacute; lợi về sức khỏe.</li>
</ul>

<h2>C&aacute;ch pha cafe muối chuẩn vị</h2>

<h3>Phương &aacute;n 1.</h3>

<h4>Chuẩn bị</h4>

<ul>
	<li>C&agrave; ph&ecirc; nguy&ecirc;n chất: 25g (khoảng 3 th&igrave;a c&agrave; ph&ecirc;).</li>
	<li>25ml sữa đặc.</li>
	<li>100 ml nước đun s&ocirc;i ở 95 độ.</li>
	<li>Kem tươi vật 20 ml.</li>
	<li>5g muối tinh</li>
	<li>Nước đ&aacute; vi&ecirc;n.</li>
</ul>

<h4>C&aacute;ch pha chế</h4>

<p>Bước 1: Rửa sạch v&agrave; tr&aacute;ng phin pha c&agrave; ph&ecirc; bằng nước đun s&ocirc;i, điều n&agrave;y l&agrave;m giảm đi sự ch&ecirc;nh lệch nhiệt độ trong qu&aacute; tr&igrave;nh chiết xuất. Sẽ gi&uacute;p cho bột c&agrave; ph&ecirc; nở đều v&agrave; gi&uacute;p cho ly cafe thơm ngon hơn.</p>

<p>Bước 2: Đổ 25g cafe (3 th&igrave;a) nguy&ecirc;n chất v&agrave;o phin, đảo đều rồi miếng lọc l&ecirc;n tr&ecirc;n v&agrave; nhấn bột c&agrave; ph&ecirc; xuống với lực vừa phải.</p>

<p><img alt="Các bước pha cà phê" src="https://xofacafebistro.com/wp-content/uploads/2023/04/cac-buoc-pha-ca-phe.jpg" style="height:400px; width:600px" /></p>

<p>Bước 3: Đổ 25ml nước s&ocirc;i v&agrave;o phin v&agrave; chờ trong khoảng 2 ph&uacute;t để bột c&agrave; ph&ecirc; nở đều, đổ tiếp 50ml nước s&ocirc;i v&agrave;o bộ lọc v&agrave; chờ cho nhỏ giọt tới khi hết nước.</p>

<p>Bước 4: Trộn 3g muối v&agrave;o 20ml whipping cream (kem tươi) v&agrave; đ&aacute;nh trộn đều l&ecirc;n trong 2-3 ph&uacute;t, c&oacute; thể sử dụng m&aacute;y đ&aacute;nh trứng để c&oacute; sự h&ograve;a tan tốt nhất.</p>

<p><img alt="Sử dụng máy đánh trứng để đánh bông " src="https://xofacafebistro.com/wp-content/uploads/2023/04/su-dung-may-danh-trung-de-danh-bong.jpg" style="height:400px; width:600px" /></p>

<p>Bước 5: Cho 25ml sữa đặc v&agrave;o phần c&agrave; ph&ecirc; đ&atilde; nhỏ giọt xong, sau đ&oacute; cho th&ecirc;m 15 &ndash; 20ml hỗn hợp kem muối vừa trộn ở tr&ecirc;n v&agrave;o để ho&agrave;n thiện cốc cafe. C&oacute; thể rắc th&ecirc;m một &iacute;t bột cacao l&ecirc;n bề mặt thức uống cho đẹp mắt.</p>

<p><img alt="Đổ từ từ phần kem mặn đã đánh " src="https://xofacafebistro.com/wp-content/uploads/2023/04/do-tu-tu-phan-kem-man-da-danh-bong-vao-ly.jpg" style="height:400px; width:600px" /></p>

<h4>Th&agrave;nh phẩm</h4>

<p>Bạn sẽ c&oacute; cốc c&agrave; ph&ecirc; muối với hương thơm thoang thoảng từ cafe k&egrave;m theo một ch&uacute;t mặn mặn từ muối h&ograve;a quyện vị b&eacute;o từ kem tươi.</p>

<p><img alt="Thành phẩm cà phê muối" src="https://xofacafebistro.com/wp-content/uploads/2023/04/thanh-pham-ca-phe-muoi.jpg" style="height:400px; width:600px" /></p>
', N'638768936840711180.jpg', 1, 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [View], [CategoryId]) VALUES (9, N'Cà Phê Trứng', CAST(45000.00 AS Decimal(18, 2)), N'<p dir="ltr">Nếu ch&acirc;u &Acirc;u l&agrave; c&aacute;i n&ocirc;i sản sinh l&agrave; nhiều loại c&agrave; ph&ecirc; ngon nức tiếng, ch&acirc;u Mỹ xưng vương với nguồn cung nguy&ecirc;n liệu lớn v&agrave; chất lượng nhất to&agrave;n cầu, th&igrave; đ&acirc;u đ&oacute; ở Việt Nam, ch&uacute;ng t&ocirc;i tự h&agrave;o với một loại c&agrave; ph&ecirc; cực kỳ độc đ&aacute;o &ndash;&nbsp;<a href="https://classiccoffee.com.vn/tin-tuc/tim-hieu-ve-mon-ca-phe-trung-thom-ngon-cung-classic-coffee-72.html">c&agrave; ph&ecirc; trứng</a>. C&agrave; ph&ecirc; trứng Việt Nam bắt nguồn từ H&agrave; Nội dường như đ&atilde; tạo n&ecirc;n một cơn sốt tr&ecirc;n to&agrave;n thế giới, ch&uacute;ng gợi nhớ về một qu&aacute; khứ tươi đẹp của H&agrave; Nội xưa cũ. Vậy c&agrave; ph&ecirc; trứng c&oacute; g&igrave; đặc biệt v&agrave; thưởng thức loại c&agrave; ph&ecirc; n&agrave;y như thế n&agrave;o để cảm nhận được hương vị đặc trưng nhất?</p>

<h2 dir="ltr"><strong>Sự ra đời của c&agrave; ph&ecirc; trứng</strong></h2>

<p dir="ltr">Nhắc đến c&agrave; ph&ecirc; trứng l&agrave; nhắc đến một người pha chế với kinh nghiệm l&acirc;u năm c&ugrave;ng với sự s&aacute;ng tạo vượt bậc &ndash; cụ Nguyễn Văn Giảng. H&agrave; Nội v&agrave;o những năm 1946, kinh tế chưa ph&aacute;t triển, nguồn sữa tươi thiếu hụt v&agrave; cụ đ&atilde; d&ugrave;ng trứng để thay thế cho sữa. Ai ngờ đ&acirc;u, sự kết hợp ấy đ&atilde; tạo n&ecirc;n một m&oacute;n c&agrave; ph&ecirc; trứ danh m&agrave; ng&agrave;y nay n&oacute; kh&ocirc;ng chỉ phổ biến ở Việt Nam m&agrave; c&ograve;n tạo n&ecirc;n cơn sốt tr&ecirc;n to&agrave;n thế giới.</p>

<p dir="ltr">Sau khi &ldquo;ph&aacute;t minh&rdquo; ra c&agrave; ph&ecirc; trứng, cụ Giảng đ&atilde; quyết định nghỉ việc tại kh&aacute;ch sạn Metropole v&agrave; tự mở cho m&igrave;nh một qu&aacute;n c&agrave; ph&ecirc; nhỏ, chuy&ecirc;n phục vụ c&agrave; ph&ecirc; trứng. Dường như ngay lập tức, qu&aacute;n c&agrave; ph&ecirc; của cụ đ&atilde; tạo n&ecirc;n sức h&uacute;t v&agrave; từ từ lan dần ra mọi miền tổ quốc.</p>

<p><a href="https://classiccoffee.com.vn/files/common/tim-hieu-ve-mon-ca-phe-trung-thom-ngon-cung-classic-coffee-zyjxa.jpg"><img alt="Tìm hiểu về món cà phê trứng thơm ngon cùng Classic Coffee" src="https://classiccoffee.com.vn/files/common/tim-hieu-ve-mon-ca-phe-trung-thom-ngon-cung-classic-coffee-zyjxa.jpg" style="height:600px; width:900px" /></a></p>

<h2 dir="ltr"><strong>Điều g&igrave; quyết định đến chất lượng v&agrave; hương vị của c&agrave; ph&ecirc; trứng</strong></h2>

<p dir="ltr">Khi pha chế c&agrave; ph&ecirc; trứng, để đảm bảo hương vị cũng như chất lượng của t&aacute;ch c&agrave; ph&ecirc;, bạn nhất định phải ch&uacute; &yacute; đến một số vấn đề như:</p>

<p dir="ltr">- &nbsp; Đảm bảo tỷ lệ ph&ugrave; hợp giữa c&aacute;c loại nguy&ecirc;n liệu.</p>

<p dir="ltr">- &nbsp; Chọn c&agrave; ph&ecirc; nguy&ecirc;n chất để mang lại hương vị thơm ngon nhất cũng như đảm bảo sức khỏe.</p>

<p dir="ltr">- &nbsp; Bột c&agrave; ph&ecirc; n&ecirc;n xay vừa phải để chắt lọc được hương vị đậm đ&agrave; nhất.</p>

<p dir="ltr">- &nbsp; Đảm bảo lượng nước, kh&ocirc;ng n&ecirc;n pha qu&aacute; nhiều nước sẽ khiến c&agrave; ph&ecirc; bị lo&atilde;ng.</p>

<p dir="ltr">- &nbsp; N&ecirc;n giữ n&oacute;ng c&agrave; ph&ecirc; trước khi kết hợp với trứng để kh&ocirc;ng l&agrave;m dậy vị tanh của trứng.</p>

<p dir="ltr">- &nbsp; Chọn trứng g&agrave; tươi để đảm bảo chất lượng ưng &yacute; nhất.</p>

<p dir="ltr">- &nbsp; Đ&aacute;nh trứng đ&uacute;ng kỹ thuật, thời gian, đảm bảo kh&ocirc;ng bị sống, tanh.</p>

<p dir="ltr">-&gt; Xem th&ecirc;m:&nbsp;<a href="https://classiccoffee.com.vn/tin-tuc/cach-lam-ca-phe-trung-ngon-nhu-o-quan-tai-gia-187.html" target="_blank">C&aacute;ch l&agrave;m &ldquo;C&agrave; ph&ecirc; trứng&rdquo; ngon như ở qu&aacute;n tại gia</a></p>

<p><a href="https://classiccoffee.com.vn/files/common/tim-hieu-ve-mon-ca-phe-trung-thom-ngon-cung-classic-coffee-ckfiq.jpg"><img alt="Tìm hiểu về món cà phê trứng thơm ngon cùng Classic Coffee" src="https://classiccoffee.com.vn/files/common/tim-hieu-ve-mon-ca-phe-trung-thom-ngon-cung-classic-coffee-ckfiq.jpg" style="height:600px; width:900px" /></a></p>

<h2 dir="ltr"><strong>C&aacute;ch uống c&agrave; ph&ecirc; trứng</strong></h2>

<p dir="ltr">Ngo&agrave;i kỹ thuật pha chế, c&aacute;ch uống c&agrave; ph&ecirc; trứng cũng l&agrave; một nghệ thuật. Thưởng thức đ&uacute;ng c&aacute;ch sẽ khiến bạn cảm nhận được những g&igrave; đặc trưng nhất của m&oacute;n thức uống độc đ&aacute;o n&agrave;y.</p>

<p dir="ltr">Trong đ&oacute;, c&aacute;ch thưởng thức c&agrave; ph&ecirc; trứng đ&uacute;ng nhất, ngon nhất l&agrave; khi bạn nghi&ecirc;ng cốc sao cho c&oacute; thể uống được đồng thời cả c&agrave; ph&ecirc; v&agrave; phần kem trứng. L&uacute;c n&agrave;y, hương vị đặc trưng của c&agrave; ph&ecirc; trứng mới được thể hiện r&otilde; nhờ sự kết hợp giữa c&agrave; ph&ecirc; nguy&ecirc;n chất v&agrave; vị b&eacute;o ngậy của l&ograve;ng đỏ trứng g&agrave;.</p>

<p dir="ltr">Ngo&agrave;i ra, bạn c&oacute; thể uống trước một phần kem b&ecirc;n tr&ecirc;n, sau đ&oacute; khuấy đều để c&agrave; ph&ecirc; v&agrave; trứng h&ograve;a quyện với nhau. Với c&aacute;ch n&agrave;y, t&aacute;ch c&agrave; ph&ecirc; trứng sẽ ngọt ng&agrave;o hơn, giảm bớt vị đắng nguy&ecirc;n bản của c&agrave; ph&ecirc;.</p>

<p dir="ltr">V&agrave; d&ugrave; uống c&agrave; ph&ecirc; trứng bằng c&aacute;ch n&agrave;o, bạn cũng n&ecirc;n thưởng thức ch&uacute;ng ngay khi c&ograve;n n&oacute;ng để hạn chế vị tanh. D&ugrave; pha chế đ&uacute;ng c&aacute;ch nhưng để qu&aacute; l&acirc;u, c&agrave; ph&ecirc; trứng vẫn c&oacute; thể xuất hiện t&igrave;nh trạng tanh, đ&acirc;y vốn l&agrave; bản chất tự nhi&ecirc;n của kem trứng. V&agrave; c&aacute;ch duy nhất để hạn chế việc n&agrave;y đ&oacute; l&agrave; thưởng thức ngay v&agrave; lu&ocirc;n hoặc c&oacute; thể giữ cho t&aacute;ch c&agrave; ph&ecirc; ở t&igrave;nh trạng n&oacute;ng ấm l&acirc;u nhất c&oacute; thể.</p>

<p dir="ltr">Nhiều đơn vị kinh doanh hiện nay phục vụ c&agrave; ph&ecirc; trứng k&egrave;m với 1 b&aacute;t nước n&oacute;ng. Đ&acirc;y ch&iacute;nh l&agrave; c&aacute;ch để giải quyết vấn đề nhiệt độ cho t&aacute;ch c&agrave; ph&ecirc;. Nếu c&oacute; nhu cầu ngồi l&acirc;u, nh&acirc;m nhi từng ch&uacute;t c&agrave; ph&ecirc;, đừng dại m&agrave; bỏ t&aacute;ch c&agrave; ph&ecirc; ra khỏi b&aacute;t nước n&oacute;ng nh&eacute;.</p>

<p dir="ltr">V&agrave; trong trường hợp thời tiết qu&aacute; lạnh, k&eacute;o theo sự giảm nhanh về nhiệt độ của t&aacute;ch c&agrave; ph&ecirc; trứng, bạn c&oacute; thể l&agrave;m n&oacute;ng lại c&agrave; ph&ecirc; bằng l&ograve; vi s&oacute;ng để &aacute;t chế m&ugrave;i tanh. Tuy nhi&ecirc;n, m&oacute;n c&agrave; ph&ecirc; trứng vẫn ngon nhất nếu được sử dụng ngay khi vừa mới pha.</p>

<p><a href="https://classiccoffee.com.vn/files/common/tim-hieu-ve-mon-ca-phe-trung-thom-ngon-cung-classic-coffee-gmgge.jpg"><img alt="Tìm hiểu về món cà phê trứng thơm ngon cùng Classic Coffee" src="https://classiccoffee.com.vn/files/common/tim-hieu-ve-mon-ca-phe-trung-thom-ngon-cung-classic-coffee-gmgge.jpg" style="height:600px; width:900px" /></a></p>

<p dir="ltr">C&agrave; ph&ecirc; trứng m&atilde;i l&agrave; niềm tự h&agrave;o kh&ocirc;ng thể phai mờ của Việt Nam tr&ecirc;n bản đồ c&agrave; ph&ecirc; thế giới. Classic Coffee xin khẳng định rằng, mọi kh&aacute;ch h&agrave;ng d&ugrave; đ&atilde; quen mặt với những loại c&agrave; ph&ecirc; hiện đại nhưng cũng kh&ocirc;ng thể cưỡng lại hương vị hấp dẫn của c&agrave; ph&ecirc; trứng. V&agrave; kh&ocirc;ng chỉ ở H&agrave; Nội, c&agrave; ph&ecirc; trứng đ&atilde; được ph&aacute;t triển v&agrave; cung cấp tại mọi cửa h&agrave;ng c&agrave; ph&ecirc; tr&ecirc;n to&agrave;n quốc. Với tiết trời se lạnh như h&ocirc;m nay, h&atilde;y để Classic Coffee phục vụ bạn bằng một t&aacute;ch c&agrave; ph&ecirc; trứng thơm ngon, ấm &aacute;p đ&uacute;ng chuẩn H&agrave; Nội xịn.</p>

<p dir="ltr">H&atilde;y li&ecirc;n hệ Classic coffee -&nbsp;<a href="https://classiccoffee.com.vn/tin-tuc/ca-phe-sach-classic-su-lua-chon-hoan-hao-danh-cho-ban-101.html">Thương hiệu c&agrave; ph&ecirc; sạch</a>&nbsp;để được tư vấn v&agrave; mua cho m&igrave;nh những sản phẩm tốt nhất. Classic Coffee đơn vị chuy&ecirc;n cung cấp c&aacute;c d&ograve;ng&nbsp;<a href="https://classiccoffee.com.vn/tin-tuc/ca-phe-nguyen-chat-gia-lai-dam-da-huong-vi-pho-nui-33.html">c&agrave; ph&ecirc; nguy&ecirc;n chất</a>, chất lượng xuất khẩu:&nbsp;<a href="https://classiccoffee.com.vn/tin-tuc/ca-phe-pha-may-co-gi-khac-biet-55.html">c&agrave; ph&ecirc; pha m&aacute;y</a>,&nbsp;<a href="https://classiccoffee.com.vn/tin-tuc/ngat-ngay-voi-cac-loai-ca-phe-bot-nguyen-chat-gia-lai-chi-co-tai-classic-204.html">c&agrave; ph&ecirc; bột pha phin</a>,&nbsp;<a href="https://classiccoffee.com.vn/tin-tuc/ca-phe-nguyen-chat-robusta-la-gi-ca-phe-nguyen-chat-gia-lai-32.html">c&agrave; ph&ecirc; Robusta</a>,&nbsp;<a href="https://classiccoffee.com.vn/tin-tuc/gioi-thieu-ca-phe-arabica-ca-phe-nguyen-chat-gia-lai-31.html">c&agrave; ph&ecirc; Arabica</a>,&nbsp;<a href="https://classiccoffee.com.vn/tin-tuc/ca-phe-espresso-mot-thuc-uong-dac-biet-tai-classic-coffee-gia-lai-38.html">c&agrave; ph&ecirc; espresso</a>, c&ugrave;ng c&aacute;c d&ograve;ng<a href="https://classiccoffee.com.vn/may-pha-ca-phe-13">&nbsp;m&aacute;y pha c&agrave; ph&ecirc; mới nhất</a>. Classic Coffee tự h&agrave;o l&agrave; một nh&agrave; cung cấp uy t&iacute;n chất lượng h&agrave;ng đầu tại Việt Nam, l&agrave; người bạn đồng h&agrave;nh với mọi kh&aacute;ch h&agrave;ng.</p>
', N'638768937773634917.jpg', 0, 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [ImageUrl], [View], [CategoryId]) VALUES (10, N'Cacao Trứng', CAST(50000.00 AS Decimal(18, 2)), N'<p>Nếu bạn cảm thấy hương vị cacao nguy&ecirc;n chất qu&aacute; đơn điệu, h&atilde;y thử ngay&nbsp;<a href="https://fptshop.com.vn/tin-tuc/dien-may/cach-lam-cacao-trung-164171">c&aacute;ch l&agrave;m cacao trứng</a>! Sự kết hợp ho&agrave;n hảo giữa vị đắng nhẹ của cacao v&agrave; độ b&eacute;o ngọt của kem trứng sẽ mang đến cho bạn một trải nghiệm vị gi&aacute;c th&uacute; vị v&agrave; mới lạ. C&ugrave;ng FPT Shop v&agrave;o bếp để kh&aacute;m ph&aacute; hương vị độc đ&aacute;o n&agrave;y nh&eacute;!</p>

<h2><strong>C&aacute;ch l&agrave;m cacao trứng</strong></h2>

<p>Cacao trứng l&agrave; một thức uống độc đ&aacute;o, kết hợp ho&agrave;n hảo giữa vị đắng nhẹ của cacao v&agrave; độ b&eacute;o ngọt của l&ograve;ng đỏ trứng, mang đến cho bạn một trải nghiệm vị gi&aacute;c th&uacute; vị. M&oacute;n thức uống n&agrave;y kh&ocirc;ng chỉ ngon m&agrave; c&ograve;n rất dễ l&agrave;m, th&iacute;ch hợp cho những buổi chiều mưa l&acirc;m r&acirc;m, khi bạn muốn thưởng thức một ly cacao ấm &aacute;p b&ecirc;n bạn b&egrave;. Dưới đ&acirc;y l&agrave; c&aacute;ch l&agrave;m cacao trứng chi tiết, đơn giản m&agrave; FPT Shop muốn giới thiệu cho bạn:</p>

<h3><strong>Nguy&ecirc;n liệu</strong></h3>

<ul>
	<li><strong>Bột cacao</strong>: 3 muỗng canh</li>
	<li><strong>Trứng</strong>: 2 quả (chỉ lấy l&ograve;ng đỏ)</li>
	<li><strong>Đường</strong>: 2 muỗng canh</li>
	<li><strong>Nước s&ocirc;i</strong>: 200ml</li>
</ul>

<p><img alt="cách làm cacao trứng 1.1" src="https://cdn2.fptshop.com.vn/unsafe/800x0/cach_lam_cacao_kem_trung_1_1_9738f2eef2.png" /></p>

<h3><strong>C&aacute;ch thực hiện</strong></h3>

<ul>
	<li><strong>Bước 1</strong>: T&aacute;ch lấy 2 l&ograve;ng đỏ trứng cho v&agrave;o một c&aacute;i ly c&ugrave;ng với 2 muỗng canh đường. D&ugrave;ng m&aacute;y đ&aacute;nh trứng đ&aacute;nh khoảng 3 - 5 ph&uacute;t cho đến khi trứng c&oacute; m&agrave;u v&agrave;ng nhạt v&agrave; b&ocirc;ng mịn.</li>
	<li><strong>Bước 2</strong>: Chuẩn bị một c&aacute;i ly kh&aacute;c, cho 3 muỗng canh bột cacao nguy&ecirc;n chất c&ugrave;ng 200ml nước s&ocirc;i v&agrave;o v&agrave; khuấy đều cho đến khi bột cacao tan hết.</li>
	<li><strong>Bước 3</strong>: R&oacute;t nhẹ phần trứng đ&atilde; đ&aacute;nh b&ocirc;ng v&agrave;o ly cacao v&agrave; rắc th&ecirc;m một &iacute;t bột cacao l&ecirc;n tr&ecirc;n để trang tr&iacute;.</li>
</ul>

<p><img alt="cách làm cacao trứng 1" src="https://cdn2.fptshop.com.vn/unsafe/800x0/cach_lam_cacao_kem_trung_1_071d4cf502.jpg" /></p>

<h3><strong>Mẹo t&aacute;ch ri&ecirc;ng l&ograve;ng đỏ, l&ograve;ng trắng trứng</strong></h3>

<p>Trong khi thực hiện c&aacute;ch l&agrave;m cacao trứng, c&oacute; thể một số bạn sẽ kh&ocirc;ng quen hoặc c&ograve;n &quot;vụng về&quot; khi thực hiện thao t&aacute;c t&aacute;ch ri&ecirc;ng l&ograve;ng đỏ v&agrave; l&ograve;ng trắng trứng g&agrave;. Thực tế, c&ocirc;ng đoạn n&agrave;y kh&ocirc;ng kh&oacute; như bạn nghĩ, chỉ cần bạn để &yacute;, tập trung v&agrave; l&agrave;m theo những c&aacute;ch m&agrave; FPT Shop chia sẻ dưới đ&acirc;y:&nbsp;</p>

<ul>
	<li><strong>C&aacute;ch 1</strong>: Đập nhẹ quả trứng để tạo một vết nứt ở giữa, sau đ&oacute; từ từ t&aacute;ch đ&ocirc;i vỏ trứng sao cho l&ograve;ng đỏ nằm hẳn về một b&ecirc;n. Bạn chỉ cần đổ l&ograve;ng đỏ từ vỏ n&agrave;y sang vỏ kia khoảng 2 - 3 lần l&agrave; c&oacute; thể t&aacute;ch th&agrave;nh c&ocirc;ng.</li>
	<li><strong>C&aacute;ch 2</strong>: T&aacute;ch vỏ trứng v&agrave; cho v&agrave;o một c&aacute;i muỗng c&oacute; lỗ. Lắc nhẹ để l&ograve;ng trắng chảy xuống, trong muỗng sẽ c&ograve;n lại l&ograve;ng đỏ. Đ&acirc;y l&agrave; c&aacute;ch đơn giản v&agrave; nhanh ch&oacute;ng để t&aacute;ch l&ograve;ng đỏ m&agrave; kh&ocirc;ng l&agrave;m vỡ.</li>
	<li><strong>C&aacute;ch 3</strong>: Đổ trứng v&agrave;o một c&aacute;i ch&eacute;n, sau đ&oacute; d&ugrave;ng muỗng nhẹ nh&agrave;ng vớt l&ograve;ng đỏ ra khỏi ch&eacute;n. Phương ph&aacute;p n&agrave;y rất dễ thực hiện v&agrave; gi&uacute;p bạn t&aacute;ch l&ograve;ng đỏ m&agrave; kh&ocirc;ng gặp kh&oacute; khăn.</li>
</ul>

<p><img alt="cách làm cacao trứng 2" src="https://cdn2.fptshop.com.vn/unsafe/800x0/cach_lam_cacao_kem_trung_2_0fa83df31f.jpg" /></p>

<h2><strong>C&aacute;ch l&agrave;m cacao kết hợp kem trứng b&eacute;o ngậy</strong></h2>

<p>Cacao kem trứng l&agrave; thức uống &quot;biến thể&quot; từ c&ocirc;ng thức cacao truyền thống, c&oacute; sự s&aacute;ng tạo trong c&aacute;ch đ&aacute;nh kem khi kết hợp l&ograve;ng đỏ trứng với whipping cream. Điều n&agrave;y c&agrave;ng khiến cho loại thức uống n&agrave;y trở n&ecirc;n b&eacute;o ngậy v&agrave; thơm ngon hơn. Nhiều thương hiệu đồ uống nổi tiếng cũng đ&atilde; &aacute;p dụng c&aacute;ch pha chế n&agrave;y v&agrave; cho ra những ly cacao thơm ngon, nhận được phản hồi t&iacute;ch cực từ kh&aacute;ch h&agrave;ng. Nếu bạn đang t&igrave;m kiếm c&aacute;ch l&agrave;m cacao trứng dạng kem b&eacute;o ngậy như vậy tại nh&agrave;, h&atilde;y tham khảo c&ocirc;ng thức dưới đ&acirc;y!</p>

<h3><strong>Nguy&ecirc;n liệu</strong></h3>

<ul>
	<li><strong>Bột cacao nguy&ecirc;n chất:&nbsp;</strong>10gr</li>
	<li><strong>Sữa đặc:</strong>&nbsp;20ml</li>
	<li><strong>Trứng:&nbsp;</strong>2 quả (chỉ lấy l&ograve;ng đỏ)</li>
	<li><strong>Kem b&eacute;o:&nbsp;</strong>15ml</li>
	<li><strong>Bột cake cream:</strong>&nbsp;50gr</li>
	<li><strong>Whipping cream:&nbsp;</strong>200ml</li>
	<li><strong>Sữa tươi:&nbsp;</strong>200ml (100ml d&ugrave;ng l&agrave;m kem trứng v&agrave; 100ml d&ugrave;ng để pha bột cacao)</li>
</ul>

<p><img alt="cách làm cacao trứng 4" src="https://cdn2.fptshop.com.vn/unsafe/800x0/cach_lam_cacao_kem_trung_4_2_19f75e8e91.jpg" /></p>

<h3><strong>C&aacute;ch thực hiện</strong></h3>

<p><strong>Đ&aacute;nh b&ocirc;ng hỗn hợp kem trứng:</strong></p>

<ul>
	<li>Cho 2 l&ograve;ng đỏ trứng, 200ml whipping cream, 50gr bột cake cream v&agrave; 100ml sữa tươi v&agrave;o một ly lớn.</li>
	<li>D&ugrave;ng m&aacute;y đ&aacute;nh trứng đ&aacute;nh trong khoảng 3 ph&uacute;t cho đến khi kem trứng b&ocirc;ng l&ecirc;n v&agrave; xuất hiện c&aacute;c đường v&acirc;n nhẹ.</li>
</ul>
', N'638768940074162211.jpg', 0, 4)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Topics] ON 

INSERT [dbo].[Topics] ([Id], [Name]) VALUES (1, N'Pha chế')
INSERT [dbo].[Topics] ([Id], [Name]) VALUES (2, N'Blog')
SET IDENTITY_INSERT [dbo].[Topics] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FullName], [Password], [Email], [IsAdmin]) VALUES (2, N'Nguyễn Chí Thanh QTV', N'123456', N'adminnguyenchithanh@gmail.com', 1)
INSERT [dbo].[Users] ([Id], [FullName], [Password], [Email], [IsAdmin]) VALUES (4, N'Nguyễn Chí Thanh', N'123456', N'nguyenchithanh@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_dbo.News_dbo.Topics_TopicId] FOREIGN KEY([TopicId])
REFERENCES [dbo].[Topics] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_dbo.News_dbo.Topics_TopicId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId]
GO
