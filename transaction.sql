BEGIN;

-- Lưu trạng thái ban đầu
SAVEPOINT initial_state;

-- Thêm mới hóa đơn vào hệ thống
INSERT INTO HOADON (SOHD, NGHD, TRIGIA, MAKH)
VALUES (2001, NOW(), 2000000, 'KH02');

-- Lưu trạng thái sau khi thêm hóa đơn
SAVEPOINT after_insert;

-- Điều chỉnh trị giá hóa đơn
UPDATE HOADON
SET TRIGIA = TRIGIA + 100000
WHERE SOHD = 2001;

-- Lưu trạng thái trước khi thực hiện xóa hóa đơn
SAVEPOINT before_delete;

-- Thực hiện xóa hóa đơn
DELETE FROM HOADON
WHERE SOHD = 2001;

-- Hoàn tác việc xóa hóa đơn
ROLLBACK TO before_delete;

-- Hoàn tác việc cập nhật trị giá hóa đơn
ROLLBACK TO after_insert;

-- Hoàn tác mọi thay đổi, quay về trạng thái ban đầu
ROLLBACK TO initial_state;

COMMIT;