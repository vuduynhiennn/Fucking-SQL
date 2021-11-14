USE Northwind

--------------------------------------------------------------------------------------------------------------
-- LÍ THUYẾT
-- CÚ PHÁP MỞ RỘNG LỆNH SELECT 
-- KHI CẦN LỌC DỮ LIỆU TRONG MỘT ĐOẠN CHO TRƯỚC, THAY VÌ DÙNG >= ... AND <= ... TA CÓ THỂ THAY THẾ 
-- BẰNG MỆNH ĐỀ BETWEEN, IN
-- CÚ PHÁP VIẾT: CỘT BETWEEN VALUE-1 AND VALUE-2
-- BETWEEN THAY THẾ CHO 2 MỆNH ĐỀ >= VÀ <= CÔNG VỚI TOÁN TỬ AND
--
-- CÚ PHÁP VIẾT: IN ... MỘT TẬP HỢP CÁC GIÁ TRỊ ĐƯỢC LIỆT KÊ CÁCH NHAU BẰNG DẤU PHẨY
-- IN SẼ THAY THẾ CHO MỘT LOẠT CÁC MỆNH ĐỀ OR 
---------------------------------------------------------------------------------------------------------------
-- 1. IN DANH SÁCH NHÂN VIÊN TỪ 1960 ĐẾN 1970	
SELECT * FROM Customers
SELECT * FROM Employees WHERE YEAR(BirthDate) BETWEEN 1960 AND 1970 ORDER BY BirthDate DESC

-- 2. LIỆT KÊ CÁC ĐƠN HÀNG CÓ TRỌNG LƯỢNG TỪ 100 ĐẾN 500
SELECT * FROM Orders WHERE Freight BETWEEN 100 AND 500

-- 3. LIỆT KÊ CÁC ĐƠN HÀNG GỬI TỚI ANH, PHÁP, MỸ
SELECT * FROM Orders WHERE ShipCountry = 'USA' OR ShipCountry = 'France' OR ShipCountry = 'UK'
SELECT * FROM Orders WHERE ShipCountry IN ('USA', 'France', 'UK')

-- 4. ĐƠN HÀNG NÀO KHÔNG GỬI TỚI ANH, PHÁP, MỸ
SELECT * FROM Orders WHERE ShipCountry NOT IN ('USA', 'France', 'UK')

-- 5. LƯU Ý: CHỈ KHI TA LIỆT KÊ ĐƯỢC TẬP GIÁ TRỊ THÌ MỚI CHƠI ĐƯỢC IN 
-- KHOẢNG SỐ THỰC THÌ KHÔNG LÀM ĐƯỢC
-- 6. LIỆT KÊ CÁC ĐƠN HÀNG CÓ TRỌNG LƯỢNG TỪ 100...100
SELECT * FROM Orders WHERE Freight >= 100 AND Freight <= 110 ORDER BY Freight DESC
SELECT * FROM Orders WHERE Freight BETWEEN 100 AND 110 ORDER BY Freight DESC
-- SELECT * FROM Orders WHERE Freight IN ()  100 ĐẾN 110 VÔ CHỪNG GIÁ TRỊ THỰC



 


