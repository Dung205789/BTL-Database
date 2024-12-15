DELIMITER $$
CREATE PROCEDURE CalculateCustomerRevenue (
    IN startDate DATE,    -- Ngày bắt đầu
    IN endDate DATE,      -- Ngày kết thúc
    IN customerId CHAR(4) -- Mã khách hàng
)
BEGIN
    SELECT SUM(TRIGIA) AS TotalRevenue
    FROM HOADON
    WHERE MAKH = customerId
    AND NGHD BETWEEN startDate AND endDate;
END$$

DELIMITER ;
