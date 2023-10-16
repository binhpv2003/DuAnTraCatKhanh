create database duantra2023
use duantra2023


create table san_pham(
    [id] int identity(1,1) NOT NULL primary key,
	[id_Nsx] [int] NULL,
	[id_danh_muc] [int] NULL,
	[ma] [nvarchar](50) NULL,
	[hinh_anh] [nvarchar](max) NULL,
	[tensp] [nvarchar](50) NULL,
	[hansd] [int] NULL,
	[mo_ta] [nvarchar](max) NULL,
	[so_luong_ton] [int] NULL,
	[gia_nhap] [decimal](20, 0) NULL,
	[gia_ban] [decimal](20, 0) NULL,
	trang_thai bit Null

)



create table chuc_vu(
	[id] int identity(1,1) NOT NULL primary key,
	[ma] [varchar](20) NULL,
	[ten] [nvarchar](50) NULL
)

create table danh_muc(
	[id] int identity(1,1) NOT NULL primary key,
	[ma] [varchar](20) NULL,
	[ten] [nvarchar](50) NULL,
)

create table NSX(
[id] int identity(1,1) NOT NULL primary key,
	[ma] [varchar](20) NULL,
	[ten] [nvarchar](30) NULL
	
)

create table nhan_vien(
[id] int identity(1,1) NOT NULL primary key,
	[ma] [varchar](20) NULL,
	[ten] [nvarchar](30) NULL,
	[ten_dem] [nvarchar](30) NULL,
	[ho] [nvarchar](30) NULL,
	[gioi_tinh] bit NULL,
	[ngay_sinh] [date] NULL,
	[dia_chi] [nvarchar](100) NULL,
	[sdt] [varchar](30) NULL,
	[mat_khau] [varchar](max) NULL,
	[idcv] int NULL,
	[trang_thai] [int] NULL
)

create table hoa_don(
    [id] int identity(1,1) NOT NULL primary key,
	[idkh] [int] NULL,
	[idnv] [int] NULL,
	[ma] [varchar](20) NULL,
	[ngay_tao] [date] NULL,
	[ngay_thanh_toan] [date] NULL,
	[ngay_ship] [date] NULL,
	[ngay_nhan] [date] NULL,
	[tinh_trang] [int] NULL,
	[ten_nguoi_nhan] [nvarchar](50) NULL,
	[dia_chi] [nvarchar](100) NULL,
	[sdt] [varchar](30) NULL,
	tong_tien  [decimal](20, 0) NULL
)

create table hoa_don_ct(
    id int identity(1,1) NOT NULL primary key,
	 [id_hoa_don]  int NOT NULL,
	[id_sp] [int] NOT NULL,
	[so_luong] [int] NULL,
	[don_gia] [decimal](20, 0) NULL
)
create table khach_hang(
	[id] int identity(1,1) NOT NULL primary key,
	[ma] [varchar](20) NULL,
	[ten] [nvarchar](30) NULL,
	[ten_dem] [nvarchar](30) NULL,
	[ho] [nvarchar](30) NULL,
	[ngay_sinh] [date] NULL,
	[sdt] [varchar](30) NULL,
	[dia_chi] [nvarchar](100) NULL,
	[thanh_pho] [nvarchar](50) NULL,
	[quoc_gia] [nvarchar](50) NULL,
	[mat_khau] [varchar](max) NULL,
	trang_thai bit NULL,
)

create table gio_hang(
    [id] int identity(1,1) NOT NULL primary key,
	[idkh] [int] NULL,
	[idnv] [int] NULL,
	[ma] [varchar](20) NULL,
	thanh_tien decimal(20, 0) NULL,
	[tinh_trang] [int] NULL

)

create table gio_hang_chi_tiet(
    id int identity(1,1) NOT NULL primary key,
	[id_gio_hang] int NOT NULL,
	[id_sp] [int] NOT NULL,
	[so_luong] [int] NULL,
	[don_gia] [decimal](20, 0) NULL,

)

ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD FOREIGN KEY([id_danh_muc])
REFERENCES [dbo].[danh_muc] ([Id])
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD FOREIGN KEY([Id_Nsx])
REFERENCES [dbo].[NSX] ([Id])
GO
ALTER TABLE [dbo].[gio_hang]  WITH CHECK ADD FOREIGN KEY([IdKH])
REFERENCES [dbo].[khach_hang] ([Id])
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK1_IdGioHang] FOREIGN KEY([id_gio_hang])
REFERENCES [dbo].[gio_hang] ([Id])
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet] CHECK CONSTRAINT [FK1_IdGioHang]
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK2_IdChiTietSP] FOREIGN KEY([id_sp])
REFERENCES [dbo].[san_pham] ([Id])
GO
ALTER TABLE [dbo].[gio_hang_chi_tiet] CHECK CONSTRAINT [FK2_IdChiTietSP]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD FOREIGN KEY([IdKH])
REFERENCES [dbo].[khach_hang] ([Id])
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD FOREIGN KEY([IdNV])
REFERENCES [dbo].[nhan_vien] ([Id])
GO
ALTER TABLE [dbo].[hoa_don_ct]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([id_hoa_don])
REFERENCES [dbo].[Hoa_don] ([Id])
GO
ALTER TABLE [dbo].[hoa_don_ct] CHECK CONSTRAINT [FK1]
GO
ALTER TABLE [dbo].[hoa_don_ct]  WITH CHECK ADD  CONSTRAINT [FK2] FOREIGN KEY([Id_sp])
REFERENCES [dbo].[san_pham] ([Id])
GO
ALTER TABLE [dbo].[hoa_don_ct] CHECK CONSTRAINT [FK2]
GO
ALTER TABLE [dbo].[Nhan_Vien]  WITH CHECK ADD FOREIGN KEY([IdCV])
REFERENCES [dbo].[Chuc_Vu] ([Id])
GO


