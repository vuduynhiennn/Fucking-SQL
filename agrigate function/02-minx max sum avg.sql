USE Northwind

--------------------------------------------------
-- LÍ THUYẾT
-- CÚ PHÁP CHUẨN CỦA LỆNH SELECT
-- COUNT() SUM() MIN() MAX() AVG()
-- SELECT CỘT..., HÀM GOM NHÓM()... FROM TABLE
-- SELECT CỘT..., HÀM GOM NHÓM()... FROM TABLE WHERE ... GROUP BY ... HAVING
--------------------------------------------------
-- 1. LIỆT KÊ DANH SÁCH NHÂN VIÊN
SELECT * FROM Employees

-- 2. NĂM SINH NÀO LÀ BÉ NHẤT (TUỔI MAX)
SELECT MIN(BirthDate)
FROM Employees

-- 3. NĂM SINH LỚN NHẤT
SELECT MAX(BirthDate)
FROM Employees

-- 4. AI SINH NĂM BÉ NHẤT
SELECT LastName 
FROM Employees 
WHERE BirthDate = (SELECT MAX(BirthDate) FROM Employees)

-- 5. CÁC KHÁC CỦA CÂU 4
SELECT LastName
FROM Employees
WHERE BirthDate >= ALL (SELECT MAX(BirthDate) FROM Employees)

-- 6. TRONG CÁC ĐƠN HÀNG, ĐƠN HÀNG NÀO CÓ TRỌNG LƯỢNG NẶNG NHẤT, NHỎ NHẤT
SELECT * 
FROM Orders
ORDER BY Freight DESC

SELECT *
FROM Orders
WHERE Freight = (SELECT MAX(Freight) FROM Orders)

SELECT *
FROM Orders
WHERE Freight = (SELECT MAX(Freight) FROM Orders)







