USE Northwind

--------------------------------------------------
-- LÍ THUYẾT
-- CÚ PHÁP CHUẨN CỦA LỆNH SELECT
-- SELECT * FROM TABLE
-- WHERE CỘT TOÁN-TỬ-SO-SÁNH VỚI VALUE-CẦN-LỌC
--            CỘT > >= < <= != VALUE
--                             DÙNG CÂU SUBQUERY NẾU MUÔN VÌ NGỮ CẢNH
--             CỘT = (SUB CHỈ CÓ 1 VALUE)
--             CỘT IN (SUB CHỈ CÓ 1 CỘT NHƯNG NHIỀU VALUE)
--			   CỘT  > >= < <= ALL (CÂU SUB 1 CỘT NHIỀU VALUE)
--                            ANY (CÂU SUB 1 CỘT NHIỀU VALUE)
--------------------------------------------------

-- THỰC HÀNH
-- TẠO 1 TABLE CÓ MỘT CỘT TÊN LÀ NUMBR CHỈ CHỨA 1 DÒNG CÁC SỐ NGUYÊN
CREATE TABLE Num (
	Numbr INT 
)
DROP TABLE Num
SELECT * FROM Num

INSERT INTO Num (Numbr)
VALUES (1)

INSERT INTO Num (Numbr)
VALUES (2)

INSERT INTO Num (Numbr)
VALUES (3)

INSERT INTO Num (Numbr)
VALUES (4)

INSERT INTO Num (Numbr)
VALUES (5)

INSERT INTO Num (Numbr)
VALUES (6)

-- 1. IN RA NHỮNG SỐ LỚN HƠN 5
SELECT * FROM Num WHERE Numbr > 5

--2 . IN RA SỐ LỚN NHẤT 
SELECT * FROM Num

-- SỐ LỚN NHẤT ĐƯỢC ĐỊNH NGHĨA LÀ MÀY LỚN HƠN TẤT CẢ MỌI THỨ NGOAI TRỪ MÀY
-- LỚN HƠN TẤT CẢ NGOẠI TRỪ CHÍNH MÌNH THÌ MÌNH LÀ THẰNG LỚN NHẤT 
SELECT * FROM Num WHERE Numbr >= ALL (SELECT * FROM Num)


-- 3. TÌM SỐ NHỎ NHẤT
SELECT * FROM Num WHERE Numbr <= ALL (SELECT Numbr FROM Num)

-- 4. ĐƠN HÀNG CÓ TRỌNG LƯỢNG LỚN NHẤT
SELECT * FROM Orders WHERE Freight >= ALL (SELECT Freight FROM Orders)

-- 5. NHÂN VIÊN NÀO LỚN TUỔI NHẤT
SELECT * 
FROM Employees 
WHERE YEAR(GETDATE()) - YEAR(BirthDate) >= ALL (SELECT YEAR(GETDATE()) - YEAR(BirthDate) FROM Employees)

-- 6. CHỌN RA TUỔI CỦA NHÂN VIÊN
SELECT *, YEAR(GETDATE()) - YEAR(BirthDate) AS [AGE]
FROM Employees
ORDER BY AGE

-- 7. CÂY PHÂN CẤP 

-- 8. LIỆT KÊ CÁC ĐƠN HÀNG CỦA KHÁCH HÀNG CÓ MÃ SỐ VINET
SELECT COUNT(*) AS [Times]  
FROM Orders 
WHERE CustomerID = 'VINET'

-- 9. CHIA THEO MÃ KHÁCH HÀNG





