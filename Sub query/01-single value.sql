USE Northwind

------------------------------------------------------------------------------------------------
-- LÍ THUYẾT
-- CÚ PHÁP CHUẨN CỦA LỆNH SELECT
-- SELECT * FROM [TABLE] WHERE ...
-- WHERE CỘT LIKE PATTERN NÀO ĐÓ e.g .'_____'
-- WHERE CỘT BETWEEN RANGE
-- WHERE CỘT IN (TẬP HỢP GIÁ TRỊ ĐƯỢC LIỆT KÊ)
------------------------------------------------------------------------------------------------

-- THỰC HÀNG
-- 1. IN RA DANH SÁCH NHÂN VIÊN
SELECT * 
FROM Employees 

SELECT FirstName
FROM Employees
WHERE EmployeeID = 1
-- MỘT CÂU SELECT TÙY CÁCH VIẾT CÓ THỂ TRẢ VỀ ĐÚNG MỘT VALUE/CELL TÊN LÀ NANCY

-- 2. MỘT CÂU SELECT CÓ THỂ TRẢ VỀ MỘT TẬP VALUE
SELECT EmployeeID
FROM Employees 
ORDER BY EmployeeID
-------------------------------------------------------------------------------------------------------
-- WHERE CỘT BẰNG VALUE NÀO ĐÓ
-- MỆNH ĐỀ WHERE CỘT BẰNG MỘT CÁI GÌ ĐÓ, BẰNG MỘT VALUE NÀO ĐÓ (ĐÃ HỌC RỒI) 
-- KĨ THUẬT VIẾT SQL THEO KIỂU HỎI GIÁN TIẾP
-- TRONG CÂU SQL CHỨA CÂU SQL KHÁC 
-------------------------------------------------------------------------------------------------------
SELECT * 
FROM Employees

-- 3. LIỆT KÊ CÁCH NHÂN VIÊN Ở LONDON
SELECT * 
FROM Employees 
WHERE City = 'London'

-- 4. LIỆT KÊ CÁC NHÂN VIÊN CÙNG QUÊ VỚI KING ROBERT
SELECT * 
FROM Employees
WHERE City = 'London'
ORDER BY EmployeeID

SELECT City
FROM Employees
WHERE FirstName = 'Robert'

-- ĐÁP ÁN CHO CÂU 3 BẮT ĐẦU
SELECT * 
FROM Employees
WHERE City = (          
			 SELECT City
		     FROM Employees
             WHERE FirstName = 'Robert'
			 )
AND FirstName <> 'Rober'
-- 9. CÂU NÀY CHO 9 ĐIỂM RƯỠI, LOẠI LUÔN TRONG KẾT QUẢ CÒN ROBERT, TÌM CÙNG QUÊ ROBERT KHÔNG CẦN PHẢI NÓI LẠI ROBERT
-- KHÔNG CẦN NÓI LẠI ROBERT

-- 10. LIỆT KÊ TẤT CẢ CÁC ĐƠN HÀNG
SELECT * 
FROM Orders
ORDER BY Freight DESC

-- 11. LIỆT KÊ TẤT CẢ CÁC ĐƠN HÀNG CÓ TRỌNG LƯỢNG LỚN HƠN 252kg
SELECT * 
FROM Orders
WHERE Freight >= (
	SELECT Freight
	FROM Orders
	WHERE OrderID = 10555
)
AND OrderID <> 10555
ORDER BY Freight DESC
-- Xuất hiện luôn cả 1055

-- BÀI TẬP VỀ NHÀ
--    DEALINE 23:00 22/09/2021 hoangnt2@fpt.edu.vn
-- 1. LIỆT KÊ DANH SÁCH CÁC CÔNG TI VẬN CHUYỂN HÀNG 
-- 2. LIỆT KÊ DANH SÁCH CÁC ĐƠN HÀNG ĐƯỢC VẬN CHUYỂN BỞI CÔNG TY GIAO VẬN CÓ MÃ SỐ LÀ 1
-- 3. LIỆT KÊ DANH SÁCH CÁC ĐƠN HÀNG ĐƯỢC VẬN CHUYỂN BỞI CÔNG TY GIAO VẬN CÓ TÊN Speedy-Express
-- 4. NHƯ CÂU 3 VÀ TRỌNG LƯỢNG TỪ 50 CHO ĐẾN 100 BOUND
-- 5. LIỆT KÊ CÁC MẶT HÀNG CÙNG CHỦNG LOẠI VỚI MẶT HÀNG FILO MIX
-- 6. LIỆT KÊ CÁC NHÂN VIÊN TRẺ TUỔI HƠN NHÂN VIÊN Janet
-- 7. 

--------------------------------------------------------------------------
-- 1. GIẢI BÀI TẬP VỀ NHÀ
SELECT * 
FROM Orders

SELECT ShipNAME
FROM Orders

-- 2. LIỆT KÊ DANH SÁCH CÁC ĐƠN HÀNG ĐƯỢC VẬN CHUYỂN BỞI CÔNG TY GIAO VẬN MÃ SỐ LÀ 1
SELECT *
FROM Orders
WHERE ShipVia = 1

-- 3, 4, 5 DỄ QUÁ KHỎI CẦN LÀM
-- 6
SELECT *, YEAR(GETDATE()) - YEAR(BirthDate) AS [AGE]
FROM Employees
WHERE YEAR(GETDATE()) - YEAR(BirthDate) > (
	SELECT YEAR(GETDATE()) - YEAR(BirthDate)
	FROM Employees
	WHERE FirstName = 'Janet'
)
ORDER BY AGE














