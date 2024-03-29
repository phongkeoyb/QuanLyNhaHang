USE [master]
GO
/****** Object:  Database [ResManager]    Script Date: 25-Jun-19 8:11:06 PM ******/
CREATE DATABASE [ResManager]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ResManager', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ResManager.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ResManager_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ResManager_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ResManager] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ResManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ResManager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ResManager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ResManager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ResManager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ResManager] SET ARITHABORT OFF 
GO
ALTER DATABASE [ResManager] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ResManager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ResManager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ResManager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ResManager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ResManager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ResManager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ResManager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ResManager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ResManager] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ResManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ResManager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ResManager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ResManager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ResManager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ResManager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ResManager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ResManager] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ResManager] SET  MULTI_USER 
GO
ALTER DATABASE [ResManager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ResManager] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ResManager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ResManager] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ResManager] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ResManager] SET QUERY_STORE = OFF
GO
USE [ResManager]
GO
/****** Object:  Table [dbo].[BanAn]    Script Date: 25-Jun-19 8:11:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanAn](
	[MaSoBan] [int] NOT NULL,
	[SoGhe] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSoBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 25-Jun-19 8:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[SoHD] [int] NOT NULL,
	[MaThucDon] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC,
	[MaThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gia]    Script Date: 25-Jun-19 8:11:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gia](
	[NgayADGia] [datetime] NOT NULL,
	[MaThucDon] [int] NOT NULL,
	[Gia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[NgayADGia] ASC,
	[MaThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 25-Jun-19 8:11:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[SoHD] [int] NOT NULL,
	[ThoiGianLap] [datetime] NULL,
	[MaSoBan] [int] NULL,
	[SoKhach] [int] NULL,
	[MaNVLap] [int] NULL,
	[MaNVTT] [int] NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThucDon]    Script Date: 25-Jun-19 8:11:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThucDon](
	[MaLoai] [int] NOT NULL,
	[Nhom] [nvarchar](20) NULL,
	[TenLoai] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 25-Jun-19 8:11:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] NOT NULL,
	[HoTen] [nvarchar](40) NULL,
	[NgaySinh] [nvarchar](30) NULL,
	[TenDN] [nvarchar](20) NULL,
	[MatKhau] [nvarchar](20) NULL,
	[Quyen] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 25-Jun-19 8:11:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[Ca] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[MaSoBan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ca] ASC,
	[MaNV] ASC,
	[MaSoBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThucDon]    Script Date: 25-Jun-19 8:11:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucDon](
	[MaThucDon] [int] NOT NULL,
	[MaLoai] [int] NULL,
	[TenThucDon] [nvarchar](50) NULL,
	[DonViTinh] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (1, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (2, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (3, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (4, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (5, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (6, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (7, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (8, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (9, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (10, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (11, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (12, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (13, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (14, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (15, 4)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (16, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (17, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (18, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (19, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (20, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (21, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (22, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (23, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (24, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (25, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (26, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (27, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (28, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (29, 8)
INSERT [dbo].[BanAn] ([MaSoBan], [SoGhe]) VALUES (30, 8)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (1, 104, 100, 7000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (2, 3, 19, 60000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (2, 7, 2, 65000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (3, 2, 9, 55000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (3, 10, 15, 55000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (4, 10, 55, 55000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (5, 15, 23, 80000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (5, 16, 7, 60000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (5, 18, 4, 180000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (5, 19, 4, 60000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (5, 20, 6, 85000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (5, 22, 13, 60000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (5, 23, 5, 60000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (5, 24, 1, 30000)
INSERT [dbo].[ChiTietHD] ([SoHD], [MaThucDon], [SoLuong], [DonGia]) VALUES (5, 25, 4, 65000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 1, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 2, 55000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 3, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 4, 50000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 5, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 6, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 7, 65000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 8, 65000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 9, 55000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 10, 55000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 11, 25000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 12, 30000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 13, 50000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 14, 45000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 15, 80000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 16, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 17, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 18, 180000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 19, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 20, 85000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 21, 55000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 22, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 23, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 24, 250000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 25, 65000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 26, 65000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 27, 55000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 28, 85000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 29, 65000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 30, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 31, 28000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 32, 26000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 33, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 34, 70000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 35, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 36, 45000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 37, 50000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 38, 50000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 39, 65000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 40, 65000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 41, 55000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 42, 55000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 43, 70000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 44, 70000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 45, 90000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 46, 90000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 47, 85000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 48, 75000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 49, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 50, 160000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 51, 120000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 52, 85000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 53, 80000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 54, 120000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 55, 75000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 56, 75000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 57, 70000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 58, 65000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 59, 70000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 60, 65000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 61, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 62, 55000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 63, 55000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 64, 45000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 65, 55000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 66, 40000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 67, 75000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 68, 35000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 69, 28000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 70, 15000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 71, 15000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 72, 40000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 73, 30000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 74, 40000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 75, 25000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 76, 50000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 77, 50000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 78, 45000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 79, 45000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 80, 45000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 81, 60000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 82, 25000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 83, 25000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 84, 25000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 85, 20000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 86, 10000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 87, 15000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 88, 12000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 89, 8000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 90, 38000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 91, 58000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 92, 95000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 93, 95000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 94, 135000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 95, 200000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 96, 350000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 97, 450000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 98, 600000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 99, 990000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 100, 9000)
GO
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 101, 8000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 102, 8000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 103, 8000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 104, 7000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 105, 7000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 106, 7000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 107, 6000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 108, 5000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 109, 5000)
INSERT [dbo].[Gia] ([NgayADGia], [MaThucDon], [Gia]) VALUES (CAST(N'2019-05-22T00:00:00.000' AS DateTime), 110, 60000)
INSERT [dbo].[HoaDon] ([SoHD], [ThoiGianLap], [MaSoBan], [SoKhach], [MaNVLap], [MaNVTT], [TongTien]) VALUES (1, CAST(N'2019-06-25T19:16:18.000' AS DateTime), 14, 4, 23, 8, 700000)
INSERT [dbo].[HoaDon] ([SoHD], [ThoiGianLap], [MaSoBan], [SoKhach], [MaNVLap], [MaNVTT], [TongTien]) VALUES (2, CAST(N'2019-06-25T19:16:24.000' AS DateTime), 13, 5, 23, 8, 1270000)
INSERT [dbo].[HoaDon] ([SoHD], [ThoiGianLap], [MaSoBan], [SoKhach], [MaNVLap], [MaNVTT], [TongTien]) VALUES (3, CAST(N'2019-06-25T19:16:02.000' AS DateTime), 1, 4, 23, 1, 1320000)
INSERT [dbo].[HoaDon] ([SoHD], [ThoiGianLap], [MaSoBan], [SoKhach], [MaNVLap], [MaNVTT], [TongTien]) VALUES (4, CAST(N'2019-06-25T19:15:42.000' AS DateTime), 12, 3, 23, 6, 3025000)
INSERT [dbo].[HoaDon] ([SoHD], [ThoiGianLap], [MaSoBan], [SoKhach], [MaNVLap], [MaNVTT], [TongTien]) VALUES (5, CAST(N'2019-06-25T19:19:25.000' AS DateTime), 4, 5, 23, 19, 5100000)
INSERT [dbo].[LoaiThucDon] ([MaLoai], [Nhom], [TenLoai]) VALUES (1, N'Thức Ăn', N'Đồ Nguội, Thức Ăn Nhanh')
INSERT [dbo].[LoaiThucDon] ([MaLoai], [Nhom], [TenLoai]) VALUES (2, N'Thức Ăn', N'Thịt Rừng')
INSERT [dbo].[LoaiThucDon] ([MaLoai], [Nhom], [TenLoai]) VALUES (3, N'Thức Ăn', N'Hải Sản')
INSERT [dbo].[LoaiThucDon] ([MaLoai], [Nhom], [TenLoai]) VALUES (4, N'Thức Ăn', N'Các Món Lẩu')
INSERT [dbo].[LoaiThucDon] ([MaLoai], [Nhom], [TenLoai]) VALUES (5, N'Thức Ăn', N'Cật - Bao Tử - Dồi Trường')
INSERT [dbo].[LoaiThucDon] ([MaLoai], [Nhom], [TenLoai]) VALUES (6, N'Thức Ăn', N'Súp - Cháo - Cơm')
INSERT [dbo].[LoaiThucDon] ([MaLoai], [Nhom], [TenLoai]) VALUES (7, N'Thức Ăn', N'Rau - Khoai - Đậu')
INSERT [dbo].[LoaiThucDon] ([MaLoai], [Nhom], [TenLoai]) VALUES (8, N'Thức Ăn', N'Bánh - Bún - Mì')
INSERT [dbo].[LoaiThucDon] ([MaLoai], [Nhom], [TenLoai]) VALUES (9, N'Thức Ăn', N'Tráng Miệng')
INSERT [dbo].[LoaiThucDon] ([MaLoai], [Nhom], [TenLoai]) VALUES (10, N'Nước Uống', N'Bia')
INSERT [dbo].[LoaiThucDon] ([MaLoai], [Nhom], [TenLoai]) VALUES (11, N'Nước Uống', N'Rượu')
INSERT [dbo].[LoaiThucDon] ([MaLoai], [Nhom], [TenLoai]) VALUES (12, N'Nước Uống', N'Nước Giải Khát')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (1, N'Phạm Thị Kim Anh', N'09-Jun-98 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (2, N'Doãn Thị Kim Liên', N'08-Dec-98 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (3, N'Trần Thị Huyền', N'12-Nov-98 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (4, N'Trần Thị Thanh', N'15-Jun-98 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (5, N'Nguyễn Thị Huế Thanh', N'12-Apr-99 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (6, N'Mai Văn Đạt', N'28-Feb-97 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (7, N'Nguyễn Tiến Dũng', N'30-Apr-96 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (8, N'Đoàn Duy Dũng', N'24-Aug-98 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (9, N'Lê Quốc Phong', N'07-Jan-98 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (10, N'Ngô Bích Doãn', N'21-Dec-98 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (11, N'Đào Lệ Phương', N'01-Mar-00 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (12, N'Lê Thanh Ngọc', N'05-May-01 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (13, N'Huỳnh Hữu Châu', N'13-Apr-98 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (14, N'Đặng Minh Nhật', N'12-Apr-95 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (15, N'Chu Minh Tân', N'16-Apr-01 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (16, N'Trần Thị Hải Yến', N'12-Jul-99 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (17, N'Đỗ Thị Phương Diễm', N'02-Nov-92 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (18, N'Nguyễn Tuân', N'01-Apr-96 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (19, N'Nguyễn Bảo An', N'08-Apr-99 ', N'', N'', N'Tiếp Tân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (20, N'Đỗ Thanh Tùng', N'11-Dec-98 ', N'tunguu', N'123456', N'Thu Ngân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (21, N'Nguyễn Việt Anh', N'29-Jan-98 ', N'keoooo', N'keoooo', N'Thu Ngân')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (22, N'Administrator', N'01-Jan-99 ', N'quantri', N'123456', N'Admin')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [TenDN], [MatKhau], [Quyen]) VALUES (23, N'Administrator', N'01/01/1998', N'phong', N'1', N'Admin')
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 1, 1)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 1, 2)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 1, 3)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 2, 4)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 2, 5)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 2, 6)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 4, 7)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 4, 8)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 4, 9)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 5, 10)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 5, 11)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 5, 12)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 7, 13)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 7, 14)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 7, 15)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 8, 16)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 8, 17)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 10, 18)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 10, 19)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 11, 20)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 11, 21)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 13, 22)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 13, 23)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 14, 24)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 14, 25)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 16, 26)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 16, 27)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 17, 28)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 17, 29)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (1, 19, 30)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 1, 1)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 1, 2)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 1, 3)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 3, 4)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 3, 5)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 3, 6)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 4, 7)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 4, 8)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 4, 9)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 6, 10)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 6, 11)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 6, 12)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 7, 13)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 7, 14)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 7, 15)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 9, 16)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 9, 17)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 10, 18)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 10, 19)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 12, 20)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 12, 21)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 13, 22)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 13, 23)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 15, 24)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 15, 25)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 16, 26)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 16, 27)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 18, 28)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 18, 29)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (2, 19, 30)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 2, 1)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 2, 2)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 2, 3)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 3, 4)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 3, 5)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 3, 6)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 5, 7)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 5, 8)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 5, 9)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 6, 10)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 6, 11)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 6, 12)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 8, 13)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 8, 14)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 8, 15)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 9, 16)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 9, 17)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 11, 18)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 11, 19)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 12, 20)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 12, 21)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 14, 22)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 14, 23)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 15, 24)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 15, 25)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 17, 26)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 17, 27)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 18, 28)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 18, 29)
INSERT [dbo].[PhanCong] ([Ca], [MaNV], [MaSoBan]) VALUES (3, 19, 30)
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (1, 1, N'Chả Cá Thì Là', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (2, 1, N'Gỏi Sen Tôm Thịt', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (3, 1, N'Gỏi cá hồi', N'Đĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (4, 1, N'Gỏi Cuốn', N'Phần')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (5, 1, N'Gỏi Khô Cá Sặc', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (6, 1, N'Gỏi Mực Thái', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (7, 1, N'Gỏi Sứa Tôm Thịt', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (8, 1, N'Gỏi Bò Bóp Thấu', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (9, 1, N'Gỏi Bồn Bồn Tôm Thịt', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (10, 1, N'Gỏi Ngó Sen', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (11, 1, N'Khoai Tây Chiên', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (12, 1, N'Đậu Hủ Chiên', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (13, 1, N'Chả Giò SaKê', N'Phần')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (14, 1, N'Xúc Xích Đức Nướng', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (15, 2, N'Cà Ri Dê, Bánh Mì', N'Tô')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (16, 2, N'Heo Rừng Nướng Muối Ớt', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (17, 2, N'Thịt Dê Nướng', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (18, 2, N'Gà HMông Nướng', N'Con')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (19, 2, N'Dê Quay Chảo', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (20, 2, N'Bê Luộc Cuốn Bánh Tráng Phơi Sương', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (21, 2, N'Thỏ RôTi', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (22, 2, N'Nhím Xào Lăn', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (23, 2, N'Nhím Hấp Gừng', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (24, 2, N'Gà Nấu Cháo', N'Con')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (25, 2, N'Bò Nhúng Dấm', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (26, 3, N'Mực 1 Nắng Nướng', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (27, 3, N'Mực Nướng Sa Tế', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (28, 3, N'Cá SaPa Nướng', N'Con')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (29, 3, N'Ếch Nướng', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (30, 3, N'Tôm Lăn Bột', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (31, 3, N'Tôm Sú Tái Chanh', N'100gr')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (32, 3, N'Tôm Sú Rang Me - Rang Muối', N'100gr')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (33, 3, N'Cua Rang Me', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (34, 3, N'Cua Hấp', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (35, 3, N'Hàu Tái Chanh', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (36, 3, N'Nghêu Hấp Xã', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (37, 3, N'Sò Huyết Cháy Tỏi', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (38, 3, N'Sò Huyết Rang Me', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (39, 3, N'Mực Hấp Gừng', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (40, 3, N'Mực Nhúng Dấm', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (41, 3, N'Mực Xào Chua Ngọt', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (42, 3, N'Mực Chiên Giòn', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (43, 3, N'Lươn Xào Lăn', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (44, 3, N'Lươn Nướng', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (45, 3, N'Cá Lóc Hấp Bầu', N'Con')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (46, 3, N'Cá Tai Tượng Chiên Xù', N'Con')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (47, 3, N'Cá Basa Nướng', N'Con')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (48, 3, N'Cá Diêu Hồng Tái Chanh', N'Con')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (49, 3, N'Cá Thác Lác Bao Cốm', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (50, 3, N'Cua Đinh Tiềm Thuốc Bắc', N'Con')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (51, 4, N'Lẩu Thái', N'Lẩu')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (52, 4, N'Lẩu Cá Bông Lau', N'Lẩu')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (53, 4, N'Lẩu Dê', N'Lẩu')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (54, 4, N'Lẩu Mắm', N'Lẩu')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (55, 4, N'Lẩu Cá Diêu Hồng Nấu Riêu', N'Lẩu')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (56, 4, N'Lẩu Cá Diêu Hồng Chua Ngọt', N'Lẩu')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (57, 4, N'Lẩu Đầu Cá Hồi', N'Lẩu')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (58, 5, N'Dồi Lươn Nướng', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (59, 5, N'Dồi Trường Chiên Giòn', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (60, 5, N'Dồi Trường Hấp Gừng', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (61, 5, N'Bao Tử Hầm Tiêu', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (62, 5, N'Cật Xào Nấm Đông Cô', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (63, 5, N'Cật Cháy Tỏi', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (64, 6, N'Cơm Xào Thập Cẩm', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (65, 6, N'Cơm Xào Hải Sản', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (66, 6, N'Cháo Hàu', N'Tô')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (67, 6, N'Cháo Lươn', N'Tô')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (68, 6, N'Cháo Tôm', N'Tô')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (69, 6, N'Cháo Bò', N'Tô')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (70, 6, N'Soup Cua', N'Chén')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (71, 6, N'Soup Hải Sản', N'Chén')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (72, 7, N'Khổ Qua Chà Bông', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (73, 7, N'Rau Muống Xào Tỏi', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (74, 7, N'Rau Nhút Xào Tỏi', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (75, 7, N'Khoai Tây Chiên', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (76, 8, N'Bún Gạo Xào Hải Sản', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (77, 8, N'Miến Xào Tôm', N'Phần')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (78, 8, N'Mì Xào Bò', N'Phần')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (79, 8, N'Mì Xào Thập Cẩm', N'Phần')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (80, 8, N'Bún Gạo Xào Thập Cẩm', N'Phần')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (81, 8, N'Bún Nướng', N'Phần')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (82, 9, N'Bưởi Da Xanh', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (83, 9, N'Dưa', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (84, 9, N'Thơm', N'Dĩa')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (85, 10, N'Heineken', N'Chai')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (86, 10, N'Sài Gòn Đỏ', N'Chai')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (87, 10, N'333', N'Lon')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (88, 10, N'Tiger', N'Lon')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (89, 10, N'Đại Việt', N'Lon')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (90, 11, N'Vang Đà Lạt Dakia', N'Chai 750 ml')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (91, 11, N'Vodka Thăng Long 39,5', N'Chai 750 ml')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (92, 11, N'Champagne Nga Đỏ', N'Chai 750 ml')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (93, 11, N'Champagne Nga Trắng', N'Chai 750 ml')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (94, 11, N'Mật Sim', N'Chai 650 ml')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (95, 11, N'Nếp Cẩm', N'Chai 750 ml')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (96, 11, N'Cognac X.O Bahia', N'Chai 370 ml')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (97, 11, N'Cognac Henessy V.S.O.P', N'Chai 370 ml')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (98, 11, N'Nếp Quốc Tửu', N'Chai 750 ml')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (99, 11, N'Champagne Mumm', N'Chai 750 ml')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (100, 12, N'Doctor Thanh', N'Chai')
GO
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (101, 12, N'Trà Xanh 0 Độ', N'Chai')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (102, 12, N'Redbull', N'Lon')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (103, 12, N'Sprite', N'Lon')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (104, 12, N'Cocacola', N'Lon')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (105, 12, N'7 Up', N'Lon')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (106, 12, N'Pepsi', N'Lon')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (107, 12, N'Nước Yến', N'Lon')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (108, 12, N'Sting Dâu', N'Lon')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (109, 12, N'Soda', N'Lon')
INSERT [dbo].[ThucDon] ([MaThucDon], [MaLoai], [TenThucDon], [DonViTinh]) VALUES (110, 1, N'Rượu Gạo', N'1 lít')
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_HD] FOREIGN KEY([SoHD])
REFERENCES [dbo].[HoaDon] ([SoHD])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [fk_CTHD_HD]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_TD] FOREIGN KEY([MaThucDon])
REFERENCES [dbo].[ThucDon] ([MaThucDon])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [fk_CTHD_TD]
GO
ALTER TABLE [dbo].[Gia]  WITH CHECK ADD  CONSTRAINT [fk_Gia_TD] FOREIGN KEY([MaThucDon])
REFERENCES [dbo].[ThucDon] ([MaThucDon])
GO
ALTER TABLE [dbo].[Gia] CHECK CONSTRAINT [fk_Gia_TD]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HD_BA] FOREIGN KEY([MaSoBan])
REFERENCES [dbo].[BanAn] ([MaSoBan])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HD_BA]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HD_NV] FOREIGN KEY([MaNVLap])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HD_NV]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HD_NV2] FOREIGN KEY([MaNVTT])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HD_NV2]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [fk_PC_BA] FOREIGN KEY([MaSoBan])
REFERENCES [dbo].[BanAn] ([MaSoBan])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [fk_PC_BA]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [fk_PC_NV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [fk_PC_NV]
GO
ALTER TABLE [dbo].[ThucDon]  WITH CHECK ADD  CONSTRAINT [fk_TD_Loai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiThucDon] ([MaLoai])
GO
ALTER TABLE [dbo].[ThucDon] CHECK CONSTRAINT [fk_TD_Loai]
GO
/****** Object:  StoredProcedure [dbo].[sp_LayCTHDTuSoHD]    Script Date: 25-Jun-19 8:11:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LayCTHDTuSoHD] @SoHD int
as
begin
	select hd.SoHD, hd.ThoiGianLap, hd.SoKhach, nv1.HoTen as 'Người Lập', hd.MaSoBan, nv2.HoTen as 'Tiếp Tân' , hd.TongTien, td.TenThucDon, ct.SoLuong, ct.DonGia
	from ChiTietHD ct, HoaDon hd, NhanVien nv1, NhanVien nv2, ThucDon td
	where hd.SoHD = ct.SoHD and hd.MaNVLap = nv1.MaNV and hd.MaNVTT = nv2.MaNV and hd.SoHD = @SoHD and td.MaThucDon = ct.MaThucDon
end

GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeHDTheoKhoangNgay]    Script Date: 25-Jun-19 8:11:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_ThongKeHDTheoKhoangNgay] @TuNgay datetime, @DenNgay datetime
as
begin
	set dateformat DMY select convert(varchar(10),convert(datetime, @TuNgay) , 103) as 'TuNgay', convert(varchar(10),convert(datetime,@DenNgay), 103) as 'DenNgay', SoHD as 'Số HĐ', ThoiGianLap as 'Thời Gian Lập', MaSoBan as 'Mã Bàn', SoKhach as 'Số Khách', nv1.HoTen as 'Người Lập', nv2.HoTen as 'Tiếp Tân', TongTien as 'Tổng Tiền' 
	from HoaDon, NhanVien nv1, NhanVien nv2 
	where HoaDon.MaNVLap = nv1.MaNV and HoaDon.MaNVTT = nv2.MaNV and convert(varchar(10), ThoiGianLap,103) >= convert(varchar(10),convert(datetime, @TuNgay), 103) and convert(varchar(10), ThoiGianLap,103) <= convert(varchar(10),convert(datetime,@DenNgay), 103)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeHDTheoNgay]    Script Date: 25-Jun-19 8:11:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_ThongKeHDTheoNgay] @Ngay datetime
as 
begin 
	set dateformat DMY 
	select SoHD as 'Số HĐ', ThoiGianLap as 'Thời Gian Lập', MaSoBan as 'Mã Bàn', SoKhach as 'Số Khách', nv1.HoTen as 'Người Lập', nv2.HoTen as 'Tiếp Tân', TongTien as 'Tổng Tiền' 
	from HoaDon, NhanVien nv1, NhanVien nv2 
	where HoaDon.MaNVLap = nv1.MaNV and HoaDon.MaNVTT = nv2.MaNV and convert(varchar(10), ThoiGianLap,103) = convert(varchar(10), convert(datetime, @Ngay), 103)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeHDTheoThangNam]    Script Date: 25-Jun-19 8:11:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_ThongKeHDTheoThangNam] @ThangNam nvarchar(7)
as
begin
	select hd.SoHD as 'Số HĐ', hd.ThoiGianLap as 'Thời Gian Lập', hd.MaSoBan as 'Mã Bàn', hd.SoKhach as 'Số Khách', nv1.HoTen as 'Người Lập', nv2.HoTen as 'Tiếp Tân', hd.TongTien as 'Tổng Tiền' 
	from HoaDon hd, NhanVien nv1, NhanVien nv2 
	where hd.MaNVLap = nv1.MaNV and hd.MaNVTT = nv2.MaNV and convert(nvarchar(10), ThoiGianLap, 103) like '%'+@ThangNam
end

GO
USE [master]
GO
ALTER DATABASE [ResManager] SET  READ_WRITE 
GO
