USE Northwind

----------------------------------------------------------------------------------------------------
-- LÍ THUYẾT
-- WHERE CỘT IN MỘT TẬP HỢP NÀO ĐÓ
-- VD:City IN ('London', 'Newyork', 'Berlin') THAY THẾ BẰNG MỆNH ĐỀ OR
                                              -- City = 'London' OR City = 'Newyork' OR City = 'Berlin'
-- NẾU CÓ 1 CÂU SQL MÀ TRẢ VỀ ĐƯỢC 1 CỘT NHƯNG NHIỀU DÒNG
-- 1 CỘT VÀ NHIỀU DÒNG THÌ TA CÓ THỂ XEM NÓ TƯƠNG ĐƯƠNG MỘT TẬP HỢP 
-- SELECT City FROM Employees, BẠN ĐC 1 LOẠT CÁC THÀNH PHỐ
-- WHERE CỘT IN (MỘT CÂU SELECT TRẢ VỀ 1 CỘT NHIỀU DÒNG, NHIỀU VALUE CÙNG KIỂU - TẬP HỢP )
----------------------------------------------------------------------------------------------------
-- CÂU 1: LIỆT KÊ CÁC NHÓM HÀNG
SELECT * FROM Categories

-- CÂU 2: IN RA CÁC NHÓM HÀNG THUỘC NHÓM 1, 6, 8
SELECT * 
FROM Products
WHERE CategoryID IN (1, 6, 8)

SELECT * 
FROM Products
WHERE CategoryID BETWEEN 1 AND 1 OR CategoryID BETWEEN 6 AND 6 OR CategoryID BETWEEN 8 AND 8

SELECT * 
FROM Products
WHERE CategoryID IN (
	SELECT CategoryID
	FROM Categories
	WHERE CategoryName IN ('Sea food', 'Beverages', 'Meat/Poultry')

)
SELECT * 
FROM Orders
WHERE EmployeeID IN (
	SELECT EmployeeID 
	FROM Employees
	WHERE City = 'London'
)

-- ASSIGNMENTS 
-- 1. CÁC NHÀ CUNG CẤP TỪ MĨ CUNG CẤP NHỮNG NHÓM HÀNG NÀO
-- 2. CÁC NHÀ CUNG CẤP TỪ MĨ CUNG CẤP NHỮNG MẶT HÀNG NÀO
-- 3. CÁC ĐƠN HÀNG VẬN CHUYỂN TỚI THÀNH PHỐ Sao Paulo ĐƯỢC VẬN CHUYỂN BỞI NHỮNG HÃNG VẬN CHUYỂN NÀO
-- 4. CÁC CÔNG TY ĐÃ VẬN CHUYỂN HÀNG TỚI Sao PaulO
-- 5. KHÁCH HÀNG ĐẾN TỪ Berlin, London, Marid CÓ NHỮNG ĐƠN HÀNG NÀO


SELECT * FROM Customers












