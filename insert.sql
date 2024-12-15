-- 1. Chèn dữ liệu vào bảng KHACHHANG
INSERT INTO KHACHHANG (MAKH, HOTEN, DIACHI, SDT, NGAYSINH, DOANHSO, NGAYDK)
VALUES 
('KH01', 'Nguyen Thi Mai', '123 Le Loi, Q1, TP.HCM', '0912345678', '1990-05-10', 5000000, '2024-01-01'),
('KH02', 'Tran Hoang Nam', '456 Nguyen Trai, Q3, TP.HCM', '0923456789', '1985-03-25', 7000000, '2023-11-15'),
('KH03', 'Le Minh Tu', '789 Cao Thang, Q10, TP.HCM', '0934567890', '1992-07-20', 3000000, '2024-02-10'),
('KH04', 'Pham Thanh Son', '321 Ba Thang Hai, Q11, TP.HCM', '0945678901', '1980-12-05', 10000000, '2023-12-01'),
('KH05', 'Vu Lan Anh', '654 Tran Hung Dao, Q5, TP.HCM', '0956789012', '1995-08-18', 6000000, '2024-03-05');

-- 2. Chèn dữ liệu vào bảng NHANVIEN
INSERT INTO NHANVIEN (MANV, HOTEN, SDT, NGAYVL)
VALUES 
('NV01', 'Nguyen Thi Lan', '0967890123', '2022-05-01'),
('NV02', 'Pham Minh Tu', '0978901234', '2023-07-15'),
('NV03', 'Tran Thanh Son', '0989012345', '2024-02-20'),
('NV04', 'Le Minh Quang', '0990123456', '2023-09-30'),
('NV05', 'Vu Lan Anh', '0901234567', '2021-11-10');

-- 3. Chèn dữ liệu vào bảng SANPHAM
INSERT INTO SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA)
VALUES 
('SP01', 'Bàn làm việc', 'Cái', 'Việt Nam', 2000000),
('SP02', 'Ghế văn phòng', 'Cái', 'Nhật Bản', 1500000),
('SP03', 'Tủ tài liệu', 'Cái', 'Hàn Quốc', 2500000),
('SP04', 'Đèn bàn', 'Cái', 'Đức', 1200000),
('SP05', 'Máy tính để bàn', 'Cái', 'Mỹ', 10000000);
-- 4. Chèn dữ liệu vào bảng HOADON
INSERT INTO HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA)
VALUES 
(1001, '2024-01-05', 'KH01', 'NV01', 7000000),
(1002, '2024-02-10', 'KH02', 'NV02', 10000000),
(1003, '2024-03-01', 'KH03', 'NV03', 12000000),
(1004, '2024-03-15', 'KH04', 'NV04', 15000000),
(1005, '2024-04-01', 'KH05', 'NV05', 18000000);
-- 5. Chèn dữ liệu vào bảng CTHD
INSERT INTO CTHD (SOHD, MASP, SL)
VALUES 
(1001, 'SP01', 2),
(1001, 'SP02', 1),
(1002, 'SP03', 3),
(1003, 'SP04', 5),
(1004, 'SP05', 2);
