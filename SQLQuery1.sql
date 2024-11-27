CREATE DATABASE QuanLySinhVien;
GO
USE QuanLySinhVien;
GO
CREATE TABLE Khoa (
    MaKhoa NVARCHAR(10) PRIMARY KEY,
    TenKhoa NVARCHAR(255),
    NienKhoa NVARCHAR(50)
);
CREATE TABLE ChuyenNganh (
    MaNganh NVARCHAR(10) PRIMARY KEY,
    TenNganh NVARCHAR(255)
);
CREATE TABLE Lop (
    MaLop NVARCHAR(10) PRIMARY KEY,
    MaKhoa NVARCHAR(10) FOREIGN KEY REFERENCES Khoa(MaKhoa),
    MaNganh NVARCHAR(10) FOREIGN KEY REFERENCES ChuyenNganh(MaNganh),
    TenLop NVARCHAR(255),
    GVCN NVARCHAR(255),
    SDT NVARCHAR(15)
);
CREATE TABLE SinhVien (
    MaSV NVARCHAR(10) PRIMARY KEY,
    MaLop NVARCHAR(10) FOREIGN KEY REFERENCES Lop(MaLop),
    HoTen NVARCHAR(255),
    NgaySinh DATE,
    GioiTinh BIT,
    SDT NVARCHAR(15),
    DiaChi NVARCHAR(MAX)
);
CREATE TABLE MonHoc (
    MaMon NVARCHAR(10) PRIMARY KEY,
    TenMon NVARCHAR(255),
    SoTiet INT
);
CREATE TABLE KetQua (
    MaSV NVARCHAR(10),
    MaMon NVARCHAR(10),
    DiemHS1 FLOAT,
    DiemHS2 FLOAT,
    DiemThi FLOAT,
    DiemThiLai FLOAT,
    PRIMARY KEY (MaSV, MaMon),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    FOREIGN KEY (MaMon) REFERENCES MonHoc(MaMon)
);

INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [NienKhoa]) VALUES (N'K1', N'KHÓA 1', N'2009-2014')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [NienKhoa]) VALUES (N'K2', N'KHÓA 2', N'2010-2015')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [NienKhoa]) VALUES (N'K3', N'KHÓA 3', N'2011-2016')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [NienKhoa]) VALUES (N'K4', N'KHÓA 4', N'2012-2017')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [NienKhoa]) VALUES (N'K5', N'KHÓA 5', N'2013-2018')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [NienKhoa]) VALUES (N'K6', N'KHÓA 6', N'2014-2029')
GO
INSERT [dbo].[ChuyenNganh] ([MaNganh], [TenNganh]) VALUES (N'CNTT', N'CÔNG NGH? THÔNG TIN')
INSERT [dbo].[ChuyenNganh] ([MaNganh], [TenNganh]) VALUES (N'HTTT', N'H? TH?NG THÔNG TIN')
INSERT [dbo].[ChuyenNganh] ([MaNganh], [TenNganh]) VALUES (N'KTTC', N'K? TOÁN TÀI CHÍNH')
GO
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'A', N'K1', N'CNTT', N'Test', N'ABC', N'0')
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'K1CN1', N'K1', N'CNTT', N'L?P K1CN1', N'GIANG', N'0986542314')
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'K1CN2', N'K1', N'CNTT', N'L?P K1CN2', N'TRUNG', N'0997851153')
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'K1KT1', N'K1', N'CNTT', N'L?P K1KT1', N'ANH', N'0987523125')
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'K1KT2', N'K1', N'CNTT', N'L?P K1KT2', N'LAN', N'0974163548')
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'K1TT1', N'K1', N'HTTT', N'L?P K1TT1', N'MINH', N'0912549845')
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'K1TT2', N'K1', N'HTTT', N'L?P K1TT2', N'MAI PH??NG', N'0903654852')
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'K2CN1', N'K2', N'HTTT', N'L?P K2CN1', N'HOA LÝ', N'0904658325')
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'K2CN2', N'K2', N'CNTT', N'K2CN2', N'Bùi Ti?n Tr??ng', N'0989995221')
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'K2KT1', N'K2', N'CNTT', N'L?P K2KT1', N'PHI', N'0987522162')
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'K2TT1', N'K2', N'HTTT', N'L?p K2TT1', N'Minh', N'0987365542')
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'K3CN1', N'K3', N'CNTT', N'L?p K3CN1', N'Tr??ng', N'0989995221')
INSERT [dbo].[Lop] ([MaLop], [MaKhoa], [MaNganh], [TenLop], [GVCN], [SDT]) VALUES (N'K3CN2', N'K3', N'KTTC', N'K3CN2', N'Bùi Khánh An', N'0989991234')
GO
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06190061', N'K1CN1', N'Nguy?n V?n Di?m', CAST(N'1988-01-26' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06C0079', N'K1CN2', N'Tr?n Nguyên Giáp', CAST(N'1988-01-26' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06C0215', N'K1TT1', N'Tr?nh ??c Quy?n', CAST(N'1988-12-29' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06C0616', N'K1TT1', N'Hoàng Tu?n Vi?t', CAST(N'1988-10-26' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06C0617', N'K1CN2', N'Nguy?n Khánh Hùng', CAST(N'1987-09-01' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06C0618', N'K1TT1', N'Ph?m V? Tu?n', CAST(N'1988-04-21' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06C0619', N'K1TT1', N'Tr?nh Công Thành', CAST(N'1988-11-10' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06C0620', N'K1CN1', N'T?ng Thanh Chung', CAST(N'1987-12-09' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06C0621', N'K1CN1', N'Nguy?n Th? Anh', CAST(N'1988-10-11' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06C0633', N'K1KT1', N'Nguy?n Nguyên Ng?c', CAST(N'1987-03-15' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06C0635', N'K2CN1', N'Ph?m Gia Hi?u', CAST(N'1988-07-16' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06C0640', N'K1CN1', N'Ph?m Th? Chanh', CAST(N'1987-08-03' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'06C0655', N'K1KT1', N'Nguy?n ?ình Nhâm', CAST(N'1982-09-12' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190011', N'K1CN1', N'?ào Th? Ph??ng Anh', CAST(N'1988-08-15' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190033', N'K1CN1', N'?ào Th? Ng?c Châu', CAST(N'1987-05-20' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190045', N'K1CN1', N'Nguy?n Thành Công', CAST(N'1988-01-25' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190046', N'K1CN1', N'Nguy?n Ti?n Công', CAST(N'1987-10-04' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190058', N'K1CN1', N'V? H?u C??ng', CAST(N'1986-01-01' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190063', N'K1CN1', N'Hoàng Th? Di?p', CAST(N'1988-03-12' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190065', N'K1CN2', N'??ng V?n D?', CAST(N'1988-01-06' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190070', N'K1CN2', N'V? V?n Du?n', CAST(N'1987-06-05' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190077', N'K1CN2', N'V?n Th? Dung', CAST(N'1988-10-28' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190081', N'K1CN1', N'Nguy?n Ti?n D?ng', CAST(N'1987-05-23' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190088', N'K1CN2', N'Nguy?n Th? G?m', CAST(N'1987-12-15' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190094', N'K1CN2', N'Tr?n Thanh Giao', CAST(N'1987-05-25' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190143', N'K2CN1', N'Nguy?n Thu Hi?n', CAST(N'1987-07-03' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190154', N'K1CN2', N'L?u Quang H?i', CAST(N'1988-04-10' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190180', N'K1CN2', N'Nguy?n Th? H??ng', CAST(N'1987-03-09' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190184', N'K1CN2', N'?? Th? Mai H??ng', CAST(N'1988-09-23' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190191', N'K1CN2', N'D??ng ?ình Hùng', CAST(N'1988-04-01' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190192', N'K2CN1', N'D??ng V?n Hùng', CAST(N'1988-09-21' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190205', N'K2CN1', N'Tr?n Thanh Huy?n', CAST(N'1987-04-02' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190207', N'K2CN1', N'V? Th? Minh Huy?n', CAST(N'1988-12-17' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190223', N'K2CN1', N'Nguy?n Hoàng Lâm', CAST(N'1988-11-07' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190227', N'K2CN1', N'Lê Th? Liên', CAST(N'1987-03-12' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190244', N'K2CN1', N'?? Thanh Loan', CAST(N'1988-05-02' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190248', N'K2CN1', N'Bùi ??c Long', CAST(N'1988-06-19' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190249', N'K1KT1', N'H? ?ình Long', CAST(N'1988-08-06' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190250', N'K1KT1', N'Lê H?u Hoàng Long', CAST(N'1986-11-20' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190254', N'K2CN1', N'Nguy?n Thanh Long', CAST(N'1988-05-31' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190274', N'K1KT1', N'Ngô Th? Thanh Mai', CAST(N'1987-03-29' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190276', N'K1KT1', N'Nguy?n Th? Tuy?t Mai', CAST(N'1987-07-24' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190283', N'K1KT1', N'Nguy?n H?i Minh', CAST(N'1988-09-15' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190284', N'K1KT1', N'Nguy?n ??c Minh', CAST(N'1988-02-01' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190286', N'K1KT1', N'Nguy?n Th? Minh', CAST(N'1988-01-29' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190315', N'K1KT1', N'Nguy?n Ng?c Ngh?a', CAST(N'1987-02-02' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190321', N'K1KT1', N'Nguy?n H?ng Ng?c', CAST(N'1988-04-17' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190327', N'K1KT1', N'Tr?n Th? Nguyên', CAST(N'1987-02-19' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190334', N'K1KT1', N'Nguy?n Th? Nhung', CAST(N'1987-12-03' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190369', N'K1TT1', N'Nguy?n Hoàng Quân', CAST(N'1988-08-05' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190372', N'K1KT1', N'Ph?m Xuân Quân', CAST(N'1988-09-17' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190375', N'K1TT1', N'Nguy?n H?u Quang', CAST(N'1987-01-08' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190376', N'K1TT1', N'Nguy?n V?n Quy', CAST(N'1987-05-16' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190378', N'K1TT1', N'L?u V?n Qu?nh', CAST(N'1988-05-05' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190381', N'K1TT1', N'Nguy?n Ng?c Sanh', CAST(N'1988-04-08' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190383', N'K1TT1', N'Nguy?n Thanh Sáng', CAST(N'1988-02-04' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190388', N'K1TT1', N'Nguy?n V?n S?n', CAST(N'1987-09-10' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190396', N'K1TT1', N'Ph?m V?n Tài', CAST(N'1988-09-10' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190400', N'K1TT1', N'??ng V?n Th?ng', CAST(N'1988-08-08' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190418', N'K1TT1', N'Hoàng Minh Thái', CAST(N'1988-08-30' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190419', N'K1TT1', N'Tr?n ?ình Thái', CAST(N'1988-11-26' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190423', N'K1TT1', N'Nguy?n Th? Ph??ng Th?o', CAST(N'1988-11-24' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190445', N'K1TT1', N'?inh Th? Minh Thu', CAST(N'1988-05-12' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190453', N'K1TT1', N'Nguy?n Th? Thu?', CAST(N'1988-10-16' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190482', N'K1TT1', N'Khúc Th? Trang', CAST(N'1987-02-01' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190486', N'K1TT1', N'Nguy?n Th? Th?o Trang', CAST(N'1987-06-26' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190490', N'K1TT1', N'Tr?n Th? Thu Trang', CAST(N'1988-07-12' AS Date), 0, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'6190517', N'K1TT1', N'Nguy?n Anh Tú', CAST(N'1988-01-26' AS Date), 1, N'0', N'Hà N?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'A02', N'K2CN2', N'Nguy?n Th? Thu', CAST(N'1982-01-25' AS Date), 0, N'0', N'HN')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'A03', N'K2CN2', N'Bùi Khánh An', CAST(N'2001-09-16' AS Date), 0, N'0029313', N'HH12')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'SV001', N'K1CN1', N'Bùi Ti?n Tr??ng', CAST(N'1982-12-28' AS Date), 1, N'0989995221', N'Hà n?i')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'SV002', N'K2CN1', N'Bùi ??c Kiên', CAST(N'2000-12-01' AS Date), 1, N'0', N'HN')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'SV003', N'K2CN1', N'Bùi Khánh An', CAST(N'2000-09-16' AS Date), 0, N'0987779999', N'HN')
INSERT [dbo].[SinhVien] ([MaSV], [MaLop], [HoTen], [NgaySinh], [GioiTinh], [SDT], [DiaChi]) VALUES (N'SV004', N'K2CN1', N'Nguy?n Huy Ti?n', CAST(N'1985-04-16' AS Date), 1, N'0975846987', N'Hà N?i')
GO
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoTiet]) VALUES (N'AC', N'MS ACCESS', 45)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoTiet]) VALUES (N'ASP', N'NGÔN NG? ASP', 75)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoTiet]) VALUES (N'ATBM', N'An Toàn b?o m?t thông tin', NULL)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoTiet]) VALUES (N'C', N'NGÔN NG? C/C++', 75)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoTiet]) VALUES (N'NET', N'NGÔN NG? .NET', 90)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoTiet]) VALUES (N'PASCAL', N'L?p Trình Pascal', 45)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [SoTiet]) VALUES (N'VB', N'Ngôn ng? VB6', 90)
GO
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06190061', N'AC', 5, 6, 0, 5)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06190061', N'ASP', 3, 7, 7, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06190061', N'C', 4, 8, 7, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06190061', N'NET', 4, 7, 0, 8)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06190061', N'PASCAL', 4, 1, 2, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06190061', N'VB', 9, 6, 8, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0079', N'AC', 9, 9, 8, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0079', N'ASP', 8, 5, 8, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0079', N'C', 6, 0, 6, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0079', N'NET', 2, 2, 8, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0079', N'PASCAL', 4, 9, 0, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0079', N'VB', 9, 3, 4, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0215', N'AC', 2, 5, 0, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0215', N'ASP', 3, 9, 9, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0215', N'C', 2, 2, 5, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0215', N'NET', 8, 1, 2, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0215', N'PASCAL', 2, 2, 9, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0215', N'VB', 5, 2, 5, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0616', N'AC', 6, 8, 7, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0616', N'ASP', 0, 5, 1, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0616', N'C', 6, 5, 1, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0616', N'NET', 1, 1, 5, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0616', N'PASCAL', 7, 0, 1, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0616', N'VB', 0, 6, 8, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0621', N'AC', 8, 6, 8, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0621', N'PASCAL', 7, 7, 0, 8)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'06C0640', N'PASCAL', 6, 6, 7, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190011', N'C', 6, 9, 7, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190033', N'ASP', 8, 8, 9, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190033', N'PASCAL', 8, 9, 8, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190045', N'AC', 7, 7, 5, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190045', N'C', 8, 4, 9, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190058', N'PASCAL', 7, 8, -1, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190063', N'AC', 8, 7, 8, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190063', N'NET', 8, 8, 9, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190077', N'AC', 7, 8, 7, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190077', N'PASCAL', 8, 8, -1, 7)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190081', N'AC', 8, 6, 6, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190154', N'PASCAL', 8, 9, 9, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'6190180', N'VB', 6, 9.2, 9, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'SV001', N'AC', 9, 9.2, 9, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'SV001', N'ASP', 7, 7, 6, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'SV001', N'C', 9, 8, 8, -1)
INSERT [dbo].[KetQua] ([MaSV], [MaMon], [DiemHS1], [DiemHS2], [DiemThi], [DiemThiLai]) VALUES (N'SV001', N'NET', 6, 7, 8, -1)

