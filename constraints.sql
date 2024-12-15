-- Câu 1: Ràng buộc UNIQUE cho cột SDT trong bảng KHACHHANG
-- Đảm bảo rằng số điện thoại khách hàng là duy nhất trong bảng KHACHHANG
ALTER TABLE KHACHHANG ADD CONSTRAINT UNIQUE_SDT_KHACHHANG UNIQUE (SDT);
-- Câu 2: Ràng buộc CHECK cho cột SL trong bảng CTHD
-- Đảm bảo rằng số lượng sản phẩm trong chi tiết hóa đơn phải lớn hơn 0
ALTER TABLE CTHD ADD CONSTRAINT CHECK_SL_GT_0 CHECK (SL > 0);
-- Câu 3: Ràng buộc DEFAULT cho cột TRIGIA trong bảng HOADON
-- Đảm bảo rằng trị giá hóa đơn mặc định là 0 nếu không có giá trị nào được nhập
ALTER TABLE HOADON ALTER COLUMN TRIGIA SET DEFAULT 0;
