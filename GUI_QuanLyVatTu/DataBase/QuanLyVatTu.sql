USE [master]
GO
/****** Object:  Database [Xuong_QuanLyVatTu]    Script Date: 04/06/2025 10:32:24 SA ******/
CREATE DATABASE [Xuong_QuanLyVatTu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Xuong_QuanLyVatTu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NHD\MSSQL\DATA\Xuong_QuanLyVatTu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Xuong_QuanLyVatTu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NHD\MSSQL\DATA\Xuong_QuanLyVatTu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Xuong_QuanLyVatTu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET ARITHABORT OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET RECOVERY FULL 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET  MULTI_USER 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Xuong_QuanLyVatTu', N'ON'
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET QUERY_STORE = ON
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Xuong_QuanLyVatTu]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 04/06/2025 10:32:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[ChiTietDonHangID] [varchar](10) NOT NULL,
	[DonHangID] [varchar](10) NOT NULL,
	[VatTuID] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [decimal](18, 2) NOT NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ChiTietDonHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 04/06/2025 10:32:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[DonHangID] [varchar](10) NOT NULL,
	[KhachHangID] [varchar](10) NOT NULL,
	[NhanVienID] [varchar](10) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[TrangThai] [nvarchar](255) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[DonHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 04/06/2025 10:32:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[HoaDonID] [varchar](10) NOT NULL,
	[DonHangID] [varchar](10) NOT NULL,
	[TongTien] [decimal](18, 2) NOT NULL,
	[NgayThanhToan] [datetime] NOT NULL,
	[PhuongThucThanhToan] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HoaDonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 04/06/2025 10:32:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[KhachHangID] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[SoDienThoai] [varchar](20) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[KhachHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiVatTu]    Script Date: 04/06/2025 10:32:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiVatTu](
	[LoaiVatTuID] [varchar](10) NOT NULL,
	[TenLoaiVatTu] [nvarchar](255) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[LoaiVatTuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 04/06/2025 10:32:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[NhaCungCapID] [varchar](10) NOT NULL,
	[TenNhaCungCap] [nvarchar](255) NOT NULL,
	[SoDienThoai] [varchar](20) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[DiaChi] [varchar](max) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[NhaCungCapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 04/06/2025 10:32:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[NhanVienID] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](255) NOT NULL,
	[ChucVu] [nvarchar](255) NOT NULL,
	[SoDienThoai] [varchar](20) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MatKhau] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[VaiTro] [bit] NOT NULL,
	[TinhTrang] [bit] NOT NULL,
 CONSTRAINT [PK__NhanVien__E27FD7EA3EADC74E] PRIMARY KEY CLUSTERED 
(
	[NhanVienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiVatTu]    Script Date: 04/06/2025 10:32:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiVatTu](
	[TrangThaiID] [varchar](10) NOT NULL,
	[TenTrangThai] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TrangThaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VatTu]    Script Date: 04/06/2025 10:32:24 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VatTu](
	[VatTuID] [varchar](10) NOT NULL,
	[LoaiVatTuID] [varchar](10) NOT NULL,
	[TenVatTu] [nvarchar](255) NOT NULL,
	[DonGia] [decimal](18, 2) NOT NULL,
	[SoLuongTon] [int] NOT NULL,
	[NhaCungCapID] [varchar](10) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
	[TrangThaiID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VatTuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[DonHang] ([DonHangID], [KhachHangID], [NhanVienID], [NgayDat], [TrangThai], [GhiChu]) VALUES (N'DH001', N'KH001', N'NV001', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Đ? giao', N'Xi măng, thép')
INSERT [dbo].[DonHang] ([DonHangID], [KhachHangID], [NhanVienID], [NgayDat], [TrangThai], [GhiChu]) VALUES (N'DH002', N'KH002', N'NV002', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Ch? x? l?', N'G?ch, sơn')
INSERT [dbo].[DonHang] ([DonHangID], [KhachHangID], [NhanVienID], [NgayDat], [TrangThai], [GhiChu]) VALUES (N'DH003', N'KH003', N'NV003', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Đang v?n chuy?n', N'Cát, thép')
INSERT [dbo].[DonHang] ([DonHangID], [KhachHangID], [NhanVienID], [NgayDat], [TrangThai], [GhiChu]) VALUES (N'DH004', N'KH004', N'NV004', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Đ? h?y', N'Sai đơn hàng')
INSERT [dbo].[DonHang] ([DonHangID], [KhachHangID], [NhanVienID], [NgayDat], [TrangThai], [GhiChu]) VALUES (N'DH005', N'KH005', N'NV005', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Ch? thanh toán', N'Sơn ngo?i th?t')
GO
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [SoDienThoai], [Email], [DiaChi], [NgayTao], [GhiChu]) VALUES (N'KH001', N'Nguy?n Văn Nam', N'0912345678', N'nguyennam@gmail.com', N'Hà N?i, Vi?t Nam', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Ch? th?u xây d?ng')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [SoDienThoai], [Email], [DiaChi], [NgayTao], [GhiChu]) VALUES (N'KH002', N'Tr?n Th? H?nh', N'0987654321', N'tranhanh@gmail.com', N'TP. H? Chí Minh, Vi?t Nam', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Nhà đ?u tư b?t đ?ng s?n')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [SoDienThoai], [Email], [DiaChi], [NgayTao], [GhiChu]) VALUES (N'KH003', N'Lê Văn H?i', N'0345678912', N'levanhai@gmail.com', N'Đà N?ng, Vi?t Nam', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Doanh nghi?p xây d?ng')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [SoDienThoai], [Email], [DiaChi], [NgayTao], [GhiChu]) VALUES (N'KH004', N'Ph?m Văn B?nh', N'0765432198', N'phambinh@gmail.com', N'C?n Thơ, Vi?t Nam', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Công ty n?i th?t')
INSERT [dbo].[KhachHang] ([KhachHangID], [HoTen], [SoDienThoai], [Email], [DiaChi], [NgayTao], [GhiChu]) VALUES (N'KH005', N'Hoàng Th? Minh', N'0891234567', N'hoangminh@gmail.com', N'B?nh Dương, Vi?t Nam', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Thi?t k? công tr?nh')
GO
INSERT [dbo].[LoaiVatTu] ([LoaiVatTuID], [TenLoaiVatTu], [NgayTao], [GhiChu]) VALUES (N'LVT001', N'Xi măng', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Các lo?i xi măng xây d?ng')
INSERT [dbo].[LoaiVatTu] ([LoaiVatTuID], [TenLoaiVatTu], [NgayTao], [GhiChu]) VALUES (N'LVT002', N'Cát', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Cát xây d?ng các lo?i')
INSERT [dbo].[LoaiVatTu] ([LoaiVatTuID], [TenLoaiVatTu], [NgayTao], [GhiChu]) VALUES (N'LVT003', N'Thép', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Thép xây d?ng')
INSERT [dbo].[LoaiVatTu] ([LoaiVatTuID], [TenLoaiVatTu], [NgayTao], [GhiChu]) VALUES (N'LVT004', N'G?ch', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'G?ch đ?, g?ch block')
INSERT [dbo].[LoaiVatTu] ([LoaiVatTuID], [TenLoaiVatTu], [NgayTao], [GhiChu]) VALUES (N'LVT005', N'Sơn', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Sơn các lo?i cho công tr?nh')
GO
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi], [NgayTao], [GhiChu]) VALUES (N'NCC001', N'Xi Măng Hà Tiên', N'0912345678', N'contact@hatien.com', N'TP. H? Chí Minh, Vi?t Nam', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Chuyên xi măng')
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi], [NgayTao], [GhiChu]) VALUES (N'NCC002', N'Thép Pomina', N'0987654321', N'contact@pomina.com', N'B?nh Dương, Vi?t Nam', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Thép xây d?ng')
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi], [NgayTao], [GhiChu]) VALUES (N'NCC003', N'G?ch Đ?ng Tâm', N'0345678912', N'contact@dongtam.com', N'Long An, Vi?t Nam', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'G?ch xây d?ng')
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi], [NgayTao], [GhiChu]) VALUES (N'NCC004', N'Sơn Jotun', N'0765432198', N'contact@jotun.com', N'TP. H? Chí Minh, Vi?t Nam', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Sơn công tr?nh')
INSERT [dbo].[NhaCungCap] ([NhaCungCapID], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi], [NgayTao], [GhiChu]) VALUES (N'NCC005', N'Cát Xây D?ng Mi?n Tây', N'0891234567', N'contact@catmientay.com', N'C?n Thơ, Vi?t Nam', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Cát xây d?ng')
GO
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTen], [ChucVu], [SoDienThoai], [GhiChu], [MatKhau], [Email], [VaiTro], [TinhTrang]) VALUES (N'NV001', N'Nguyễn Văn Hùng', N'Quản lý bán hàng', N'0912345678', N'10 năm kinh nghi?m', N'1', N'1', 1, 1)
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTen], [ChucVu], [SoDienThoai], [GhiChu], [MatKhau], [Email], [VaiTro], [TinhTrang]) VALUES (N'NV002', N'Tr?n Th? Linh', N'Nhân viên kinh doanh', N'0987654321', N'Chuyên tư v?n v?t li?u xây d?ng', N'5', N'5', 0, 0)
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTen], [ChucVu], [SoDienThoai], [GhiChu], [MatKhau], [Email], [VaiTro], [TinhTrang]) VALUES (N'NV003', N'Lê Văn L?c', N'Nhân viên kho', N'0345678912', N'Kiểm tra hàng tồn kho', N'2', N'2', 0, 1)
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTen], [ChucVu], [SoDienThoai], [GhiChu], [MatKhau], [Email], [VaiTro], [TinhTrang]) VALUES (N'NV004', N'Ph?m Văn Ti?n', N'Nhân viên thu ngân', N'0765432198', N'Kế toán viên', N'3', N'3', 0, 0)
INSERT [dbo].[NhanVien] ([NhanVienID], [HoTen], [ChucVu], [SoDienThoai], [GhiChu], [MatKhau], [Email], [VaiTro], [TinhTrang]) VALUES (N'NV005', N'Hoàng Th? Lan', N'Nhân viên h? tr? khách hàng', N'0891234567', N'Chăm sóc khách hàng doanh nghi?p', N'4', N'4', 0, 0)
GO
INSERT [dbo].[TrangThaiVatTu] ([TrangThaiID], [TenTrangThai]) VALUES (N'TT001', N'C?n hàng')
INSERT [dbo].[TrangThaiVatTu] ([TrangThaiID], [TenTrangThai]) VALUES (N'TT002', N'H?t hàng')
INSERT [dbo].[TrangThaiVatTu] ([TrangThaiID], [TenTrangThai]) VALUES (N'TT003', N'Ng?ng kinh doanh')
INSERT [dbo].[TrangThaiVatTu] ([TrangThaiID], [TenTrangThai]) VALUES (N'TT004', N'Đ?t hàng')
INSERT [dbo].[TrangThaiVatTu] ([TrangThaiID], [TenTrangThai]) VALUES (N'TT005', N'Đ? nh?p kho')
GO
INSERT [dbo].[VatTu] ([VatTuID], [LoaiVatTuID], [TenVatTu], [DonGia], [SoLuongTon], [NhaCungCapID], [NgayTao], [GhiChu], [TrangThaiID]) VALUES (N'VT001', N'LVT001', N'Xi măng PCB40 Hà Tiên', CAST(120000.00 AS Decimal(18, 2)), 500, N'NCC001', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Xi măng dùng cho bê tông', N'TT001')
INSERT [dbo].[VatTu] ([VatTuID], [LoaiVatTuID], [TenVatTu], [DonGia], [SoLuongTon], [NhaCungCapID], [NgayTao], [GhiChu], [TrangThaiID]) VALUES (N'VT002', N'LVT002', N'Cát vàng', CAST(150000.00 AS Decimal(18, 2)), 300, N'NCC005', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Cát vàng lo?i t?t', N'TT001')
INSERT [dbo].[VatTu] ([VatTuID], [LoaiVatTuID], [TenVatTu], [DonGia], [SoLuongTon], [NhaCungCapID], [NgayTao], [GhiChu], [TrangThaiID]) VALUES (N'VT003', N'LVT003', N'Thép Pomina D10', CAST(200000.00 AS Decimal(18, 2)), 200, N'NCC002', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Thép phi 10', N'TT001')
INSERT [dbo].[VatTu] ([VatTuID], [LoaiVatTuID], [TenVatTu], [DonGia], [SoLuongTon], [NhaCungCapID], [NgayTao], [GhiChu], [TrangThaiID]) VALUES (N'VT004', N'LVT004', N'G?ch Đ?ng Tâm 200x100', CAST(5000.00 AS Decimal(18, 2)), 1000, N'NCC003', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'G?ch đ?', N'TT001')
INSERT [dbo].[VatTu] ([VatTuID], [LoaiVatTuID], [TenVatTu], [DonGia], [SoLuongTon], [NhaCungCapID], [NgayTao], [GhiChu], [TrangThaiID]) VALUES (N'VT005', N'LVT005', N'Sơn Jotun n?i th?t', CAST(450000.00 AS Decimal(18, 2)), 50, N'NCC004', CAST(N'2025-05-21T00:00:00.000' AS DateTime), N'Sơn cho tư?ng n?i th?t', N'TT001')
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([DonHangID])
REFERENCES [dbo].[DonHang] ([DonHangID])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([VatTuID])
REFERENCES [dbo].[VatTu] ([VatTuID])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__NhanVie__46E78A0C] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__NhanVie__46E78A0C]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([DonHangID])
REFERENCES [dbo].[DonHang] ([DonHangID])
GO
ALTER TABLE [dbo].[VatTu]  WITH CHECK ADD FOREIGN KEY([LoaiVatTuID])
REFERENCES [dbo].[LoaiVatTu] ([LoaiVatTuID])
GO
ALTER TABLE [dbo].[VatTu]  WITH CHECK ADD FOREIGN KEY([NhaCungCapID])
REFERENCES [dbo].[NhaCungCap] ([NhaCungCapID])
GO
ALTER TABLE [dbo].[VatTu]  WITH CHECK ADD FOREIGN KEY([TrangThaiID])
REFERENCES [dbo].[TrangThaiVatTu] ([TrangThaiID])
GO
USE [master]
GO
ALTER DATABASE [Xuong_QuanLyVatTu] SET  READ_WRITE 
GO
