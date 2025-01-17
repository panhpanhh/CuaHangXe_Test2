CREATE DATABASE [CuaHangXe_test1]
GO
ALTER DATABASE [CuaHangXe_test1] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CuaHangXe_test1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CuaHangXe_test1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET ARITHABORT OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CuaHangXe_test1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CuaHangXe_test1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CuaHangXe_test1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CuaHangXe_test1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CuaHangXe_test1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET RECOVERY FULL 
GO
ALTER DATABASE [CuaHangXe_test1] SET  MULTI_USER 
GO
ALTER DATABASE [CuaHangXe_test1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CuaHangXe_test1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CuaHangXe_test1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CuaHangXe_test1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QL_TuiXach', N'ON'
GO
USE [CuaHangXe_test1]
GO

/****** Object:  Table [dbo].[BaoHanhXe]    Script Date: 11/8/2024 9:51:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHanhXe](
	[MaBaoHanh] [nchar](10) NOT NULL,
	[MaXe] [nchar](10) NULL,
	[MaKhachHang] [nchar](10) NULL,
	[NgayBatDauBaoHanh] [date] NULL,
	[NgayKetThucBaoHanh] [date] NULL,
	[DieuKhoanBaoHanh] [text] NULL,
	[TrangThaiBaoHanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaoHanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 11/8/2024 9:51:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDichVu] [nchar](10) NOT NULL,
	[TenDichVu] [nvarchar](100) NULL,
	[MoTaDichVu] [nvarchar](255) NULL,
	[ChiPhiDichVu] [decimal](18, 2) NULL,
	[ThoiGianThucHien] [nvarchar](50) NULL,
	[MaKhachHang] [nchar](10) NULL,
	[NgaySuDungDichVu] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBanHang]    Script Date: 11/8/2024 9:51:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBanHang](
	[MaHoaDon] [nchar](10) NOT NULL,
	[MaHopDong] [nchar](10) NULL,
	[NgayLapHoaDon] [date] NULL,
	[TongSoTien] [decimal](20, 0) NULL,
	[ThueVAT] [decimal](18, 2) NULL,
	[SoTienThanhToan] [decimal](20, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDongMuaBan]    Script Date: 11/8/2024 9:51:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDongMuaBan](
	[MaHopDong] [nchar](10) NOT NULL,
	[MaKhachHang] [nchar](10) NULL,
	[MaXe] [nchar](10) NULL,
	[NgayLapHopDong] [date] NULL,
	[DieuKhoanHopDong] [text] NULL,
	[TongGiaTriHopDong] [decimal](18, 2) NULL,
	[MaNhanVienPheDuyet] [nchar](10) NULL,
	[TrangThaiHopDong] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/8/2024 9:51:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [nchar](10) NOT NULL,
	[HoTenKhachHang] [nvarchar](50) NULL,
	[DiaChiKhachHang] [nvarchar](50) NULL,
	[SoDienThoaiKhachHang] [nvarchar](15) NULL,
	[EmailKhachHang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 11/8/2024 9:51:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [nchar](10) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NULL,
	[DiaChiNhaCungCap] [nvarchar](50) NULL,
	[SoDienThoaiNhaCungCap] [nvarchar](15) NULL,
	[EmailNhaCungCap] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/8/2024 9:51:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[ChucVuNhanVien] [nvarchar](50) NULL,
	[DiaChiNhanVien] [nvarchar](50) NULL,
	[SoDienThoaiNhanVien] [nvarchar](15) NULL,
	[EmailNhanVien] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapKho]    Script Date: 11/8/2024 9:51:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapKho](
	[MaPhieuNhap] [nchar](10) NOT NULL,
	[MaXe] [nchar](10) NULL,
	[MaNhaCungCap] [nchar](10) NULL,
	[NgayNhap] [date] NULL,
	[SoLuongNhap] [int] NULL,
	[GiaNhap] [decimal](20, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuatKho]    Script Date: 11/8/2024 9:51:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuatKho](
	[MaPhieuXuat] [nchar](10) NOT NULL,
	[MaXe] [nchar](10) NULL,
	[MaKhachHang] [nchar](10) NULL,
	[NgayXuat] [date] NULL,
	[SoLuongXuat] [int] NULL,
	[GiaXuat] [decimal](20, 0) NULL,
	[MaNhanVienKiemTra] [nchar](10) NULL,
	[TrangThaiDonHang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/8/2024 9:51:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [nchar](10) NOT NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[VaiTro] [nvarchar](50) NULL,
	[MaNhanVien] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 11/8/2024 9:51:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[MaXe] [nchar](10) NOT NULL,
	[TenXe] [nvarchar](100) NULL,
	[HangXe] [nvarchar](50) NULL,
	[DongXe] [nvarchar](50) NULL,
	[SoKhungXe] [nvarchar](50) NULL,
	[MauSac] [nvarchar](50) NULL,
	[NamSanXuat] [int] NULL,
	[GiaBanXe] [decimal](20, 0) NULL,
	[HinhAnh] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [SoDienThoaiNhaCungCap], [EmailNhaCungCap]) VALUES (N'NCC001    ', N'Mercedes-Benz', N'811 Nguyễn Văn Linh, quận 7,TP. Hồ Chí Minh', N'0123456789', N'mercedesq7@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [SoDienThoaiNhaCungCap], [EmailNhaCungCap]) VALUES (N'NCC002    ', N'August Luxury Motorcars', N'3510 Spectrum Court - Kelowna, BC V1V 2Z1', N'250-860-0444', N'augustlm@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [SoDienThoaiNhaCungCap], [EmailNhaCungCap]) VALUES (N'NCC003    ', N'Ferrari ViệtNam', N'D7,Tân Thuận,Q7,TpHCM,VietNam', N'84 283 622 0770', N'ferrarivn@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [SoDienThoaiNhaCungCap], [EmailNhaCungCap]) VALUES (N'NCC004    ', N'Lamborghini Hồ Chí Minh', N'Ks.Hilton,11Công Trường Mê Kinh, Q1,TpHCM,Vietnam', N'84 859 180 088', N'lamborghinivnn@gmail.com')
GO
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE001     ', N'Ford GT Heritage Edition', N'Ford', N'Hypercar', N'fo001', N'Trắng', 2021, CAST(1436462 AS Decimal(20, 0)), N'fordgt.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE0011    ', N'2024 Lamborghini Urus', N'Lamborghini', N'SUV', N'la002', N'Vàng', 2024, CAST(241843 AS Decimal(20, 0)), N'renazzo-lamborghini-urus-performante-unveiled-thailand-motor-expo-2022-7-16699859694741013805461-crop-16699861242161368888932.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE0012    ', N'2022 Lamborghini Aventador SVJ ', N'Lamborghini', N'Supercar', N'la003', N'Vàng', 2022, CAST(562000 AS Decimal(20, 0)), N'New-2020-Lamborghini-Aventador-SVJ-Roadster-1597949125 (1).jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE0013    ', N'2022 Lamborghini Revuelto', N'Lamborghini', N'Supercar', N'la004', N'Xanh', 2024, CAST(574495 AS Decimal(20, 0)), N'2024-lamborghini-revuelto-review.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE002     ', N'Pagani Huayra', N'Pagani', N'Hypercar', N'pa001', N'Xám', 2014, CAST(4000125 AS Decimal(20, 0)), N'640-sieu-xe-Pagani-Huayra-BC.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE003     ', N'Ferrari SF90 Stradale', N'Ferrari', N'Supercar', N'fe001', N'Đỏ', 2021, CAST(464900 AS Decimal(20, 0)), N'sf90.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE004     ', N' 2024 Lamborghini Huracán Tecnica', N'Lamborghini', N'Supercar', N'la001', N'Đen', 2020, CAST(248995 AS Decimal(20, 0)), N'Screenshot 2024-11-07 211457.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE005     ', N'Audi R8 V10 Performance', N'Audi', N'Supercar', N'ad001', N'Trắng', 2022, CAST(193492 AS Decimal(20, 0)), N'audiR8.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE006     ', N'Chevrolet Corvette', N'Chevrolet', N'Supercar', N'cv001', N'Trắng', 2021, CAST(89907 AS Decimal(20, 0)), N'corvette.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE007     ', N'Mercedes-Benz AMG® G 63', N'Mercedes-Benz', N'SUV', N'mc001', N'Trắng', 2022, CAST(162379 AS Decimal(20, 0)), N'g63.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE008     ', N'Rolls-Royce Cullinan', N'Rolls-Royce', N'SUV', N'rr001', N'Đen', 2024, CAST(524575 AS Decimal(20, 0)), N'xehay-Rolls-Royce-Cullinan-review-270120 (4) (1).jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE009     ', N'Mercedes-Maybach S-Class', N'Mercedes-Benz', N'Luxury', N'mc002', N'Đen', 2025, CAST(270400 AS Decimal(20, 0)), N'mayback.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE010     ', N'2025 Rolls Royce Ghost', N'Rolls-Royce', N'Luxury', N'rr002', N'Tím', 2025, CAST(264575 AS Decimal(20, 0)), N'Screenshot 2024-11-07 220012.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE014     ', N'2023 Ferrari 812 GTS', N'Ferrari', N'Supercar', N'fe002', N'Đỏ', 2023, CAST(378995 AS Decimal(20, 0)), N'Screenshot 2024-11-07 212609.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE015     ', N'2023 Ferrari 296 GTS', N'Ferrari', N'Supercar', N'fe004', N'Xanh', 2023, CAST(279995 AS Decimal(20, 0)), N'Screenshot 2024-11-07 213142.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE016     ', N'2024 Ferrari Purosangue', N'Ferrari', N'SUV', N'fe003', N'Đỏ', 2024, CAST(439995 AS Decimal(20, 0)), N'Screenshot 2024-11-07 212831.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE017     ', N'2023 Maserati GranCabrio', N'Maserati', N'Supercar', N'mc001', N'Xanh', 2023, CAST(203000 AS Decimal(20, 0)), N'hq720.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE018     ', N'2024 Ferrari MC20', N'Maserati', N'Supercar', N'mc002', N'Trắng', 2024, CAST(243095 AS Decimal(20, 0)), N'mc20-hero.jpg')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [HangXe], [DongXe], [SoKhungXe], [MauSac], [NamSanXuat], [GiaBanXe], [HinhAnh]) VALUES (N'XE019     ', N'2024 Maserati Levante Trofeo', N'Maserati', N'SUV', N'mc003', N'Trắng', 2024, CAST(839995 AS Decimal(20, 0)), N'ea047f6136a932aceb21459f111aa058.jpg')
GO
ALTER TABLE [dbo].[BaoHanhXe]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[BaoHanhXe]  WITH CHECK ADD FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD FOREIGN KEY([MaHopDong])
REFERENCES [dbo].[HopDongMuaBan] ([MaHopDong])
GO
ALTER TABLE [dbo].[HopDongMuaBan]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HopDongMuaBan]  WITH CHECK ADD FOREIGN KEY([MaNhanVienPheDuyet])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HopDongMuaBan]  WITH CHECK ADD FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[PhieuNhapKho]  WITH CHECK ADD FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[PhieuNhapKho]  WITH CHECK ADD FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[PhieuXuatKho]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PhieuXuatKho]  WITH CHECK ADD FOREIGN KEY([MaNhanVienKiemTra])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuXuatKho]  WITH CHECK ADD FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
