USE [BangiayDB]
GO
/****** Object:  Table [dbo].[Giay]    Script Date: 4/16/2023 12:42:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giay](
	[MaGiay] [int] IDENTITY(1,1) NOT NULL,
	[TenGIAY] [nvarchar](50) NOT NULL,
	[Gia] [float] NOT NULL,
	[Hinh] [varchar](50) NOT NULL,
	[MaLoai] [int] NULL,
	[NgayDang] [datetime] NULL,
	[SoLuotXem] [int] NULL,
 CONSTRAINT [PK_Hoa] PRIMARY KEY CLUSTERED 
(
	[MaGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiGiay]    Script Date: 4/16/2023 12:42:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGiay](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Giay] ON 

INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (2, N'Giày JD Đen', 300000, N'jdd.png', 2, CAST(N'2010-12-12T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (3, N'Giày AD đỏ ', 350000, N'ado.jpg', 1, CAST(N'2010-12-12T00:00:00.000' AS DateTime), 180)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (4, N'Giày da', 350000, N'gda.jpg', 1, CAST(N'2010-12-13T00:00:00.000' AS DateTime), 599)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (5, N'Giày cao gót', 259000, N'caog.jpg', 1, CAST(N'2010-12-13T00:00:00.000' AS DateTime), 11)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (6, N'sành điệu', 249000, N'sanhd.jpg', 1, CAST(N'2010-12-13T00:00:00.000' AS DateTime), 62)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (7, N'Ánh vàng', 200000, N'anhv.png', 1, CAST(N'2010-12-13T00:00:00.000' AS DateTime), 49)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (8, N'Ánh Sao', 249000, N'anhs.jpg', 1, CAST(N'2010-12-13T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (9, N'Hồi Tưởng', 279000, N'htu.jpg', 2, CAST(N'2010-12-15T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (10, N'Cánh Sen', 179000, N'anhsen.jpg', 2, CAST(N'2010-12-16T00:00:00.000' AS DateTime), 189)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (11, N'Cổ Xưa', 300000, N'cox.png', 2, CAST(N'2010-12-16T00:00:00.000' AS DateTime), 109)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (12, N'Quý Tộc', 400000, N'quytoc.png', 2, CAST(N'2010-12-16T00:00:00.000' AS DateTime), 769)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (13, N'Cặp Đôi', 499000, N'cdoi.jpg', 3, CAST(N'2010-12-23T00:00:00.000' AS DateTime), 76)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (14, N'Cách Mạng', 190000, N'cachmang.jpg', 4, CAST(N'2010-12-23T00:00:00.000' AS DateTime), 264)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (15, N'Tiệc Cưới', 233000, N'tcuoi.jpg', 6, CAST(N'2010-12-23T00:00:00.000' AS DateTime), 451)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (29, N'Giày caro', 1200000, N'vancaro.jpg', 1, CAST(N'2023-04-05T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (30, N'Giày da', 1200000, N'vanhong.jpg', 5, CAST(N'2023-04-13T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (31, N'Giày cao cổ', 1200000, N'vancaoco.jpg', 4, CAST(N'2023-04-21T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (32, N'Van red', 1200000, N'vando.jpg', 4, CAST(N'2023-04-14T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (33, N'Giày lửa', 1700000, N'vanlua.jpg', 6, CAST(N'2023-04-19T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (34, N'Nike cao cổ', 1700000, N'nikecaoco.png', 1, CAST(N'2023-04-11T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (35, N'Nike Trắng', 3500000, N'niketrang.jpg', 1, CAST(N'2023-04-17T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (36, N'Nike jordan', 13500000, N'nikejd.jpg', 1, CAST(N'2023-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (37, N'GIÀY NIKE JORDAN 1 MID METALLIC GOLD MÀU VÀNG GOLD', 12500000, N'nikemid.png', 1, CAST(N'2023-04-13T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Giay] ([MaGiay], [TenGIAY], [Gia], [Hinh], [MaLoai], [NgayDang], [SoLuotXem]) VALUES (38, N'Giày kiên cường', 13500000, N'van1.jpeg', 1, CAST(N'2023-04-27T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Giay] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiGiay] ON 

INSERT [dbo].[LoaiGiay] ([MaLoai], [TenLoai], [GhiChu]) VALUES (1, N'Giày Nike', NULL)
INSERT [dbo].[LoaiGiay] ([MaLoai], [TenLoai], [GhiChu]) VALUES (2, N'Giày JD', NULL)
INSERT [dbo].[LoaiGiay] ([MaLoai], [TenLoai], [GhiChu]) VALUES (3, N'Giày AD', NULL)
INSERT [dbo].[LoaiGiay] ([MaLoai], [TenLoai], [GhiChu]) VALUES (4, N'Giày Vans', NULL)
INSERT [dbo].[LoaiGiay] ([MaLoai], [TenLoai], [GhiChu]) VALUES (5, N'Giày Bitis', NULL)
INSERT [dbo].[LoaiGiay] ([MaLoai], [TenLoai], [GhiChu]) VALUES (6, N'Giày converse', NULL)
SET IDENTITY_INSERT [dbo].[LoaiGiay] OFF
GO
