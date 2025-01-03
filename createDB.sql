-- Tạo cơ sở dữ liệu QuanLyBanHang
CREATE DATABASE QuanLyBanHang;
USE QuanLyBanHang;

-- Tạo bảng KHACHHANG
CREATE TABLE KHACHHANG (
    MAKH CHAR(4) PRIMARY KEY,
    HOTEN VARCHAR(40),
    DIACHI VARCHAR(50),
    SDT VARCHAR(20),
    NGAYSINH DATETIME,
    DOANHSO DECIMAL(15, 2),
    NGAYDK DATETIME
);

-- Tạo bảng NHANVIEN
CREATE TABLE NHANVIEN (
    MANV CHAR(4) PRIMARY KEY,
    HOTEN VARCHAR(40),
    SDT VARCHAR(20),
    NGAYVL DATETIME
);

-- Tạo bảng SANPHAM
CREATE TABLE SANPHAM (
    MASP CHAR(4) PRIMARY KEY,
    TENSP VARCHAR(40),
    DVT VARCHAR(20),
    NUOCSX VARCHAR(40),
    GIA DECIMAL(15, 2)
);

-- Tạo bảng HOADON
CREATE TABLE HOADON (
    SOHD INT PRIMARY KEY,
    NGHD DATETIME,
    MAKH CHAR(4),
    MANV CHAR(4),
    TRIGIA DECIMAL(15, 2),
    FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH),
    FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
);

-- Tạo bảng CTHD (Chi Tiết Hóa Đơn)
CREATE TABLE CTHD (
    SOHD INT,
    MASP CHAR(4),
    SL INT,
    PRIMARY KEY (SOHD, MASP),
    FOREIGN KEY (SOHD) REFERENCES HOADON(SOHD),
    FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)
);
alter table HOADON add constraint FK_MAKH foreign key (MAKH) references KHACHHANG(MAKH);
alter table HOADON add constraint FK_MANV foreign key (MANV) references NHANVIEN(MANV);
alter table CTHD add constraint FK_MASP foreign key (MASP) references SANPHAM(MASP);
alter table CTHD add constraint FK_SOHD foreign key (SOHD) references HOADON(SOHD);