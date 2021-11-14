USE Northwind
----------------------------------------------------------------------------------------------------------
-- LÍ THUYẾT                                                                                             -
-- TRONG THỰC TẾ CÓ NHỮNG LÚC TA MUÔN TÌM DỮ LIỆU /FILTER QUA KIỂU GẦN ĐÚNG                              -
-- GẦN ĐÚNG TRÊN KIỂU CHUỖI, VÍ DỤ, LIỆT KÊ AI ĐÓ TÊN LÀ AN KHÁC CÂU                                     -
-- LIỆU KÊ AI ĐÓ TÊN CÓ CHỮ AN, HAY BẮT ĐẦU BẰNG CHỮ A                                                   -
-- TÌM ĐÚNG, TOÁN TỬ = AN                                                                                -
-- TÌM GẦN ĐÚNG, TÌM CÓ SỰ XUẤT HIỆN, KHÔNG DÙNG = DÙNG TOÁN TỬ LIKE                                     -
--                           LIKE 'AN...' ...                                                            -
-- ĐỂ SỬ DỤNG TOÁN TỬ LIKE TA SỬ DỤNG 2 THỨ TRỢ GIÚP DẤU % VÀ _                                          -
-- % ĐẠI DIỆN CHO 1 CHUỖI BẤT KÌ NÀO ĐÓ                                                                  -
-- _ ĐẠI DIỆN CHO 1 KÍ TỨ BẤT KÌ NÀO ĐÓ                                                                  -
-- VÍ DỤ: Name LIKE 'A%', BẤT KÌ AI CÓ TÊN XUẤT HIỆN BẰNG CHỮ Â, PHẦN CÒN LẠI LÀ GÌ KHÔNG CARE           -
--        Name LIKE 'A_' NGƯỜI NÀO TRONG TÊN CÓ 2 CHỮ CÁI VÀ CHỮ CÁI ĐẦU TIÊN PHẢI BẤT ĐẦU BẰNG CHỮ A    -
----------------------------------------------------------------------------------------------------------
-- 1. TẤT CẢ NHÂN VIÊN ra nè
SELECT * FROM Employees

-- 2. NHÂN VIÊN NÀO CÓ TÊN BẮT ĐẦU BẰNG CHỮ A
SELECT * FROM Employees WHERE FirstName = 'A%'               -- VÌ TOÁN TỬ SO SÁNH BẰNG, CÓ AI TÊN A% KHÔNG
SELECT * FROM Employees WHERE FirstName LIKE 'A%'            -- TÌM NHÂN VIÊN FIRST NAME = A 

-- 3. NHÂN VIÊN BẮT ĐẦU BẰNG CHỮ A, IN RA CẢ FULLNAME ĐƯỢC GHÉP ĐẦY ĐỦ 
SELECT EmployeeID, FirstName + ' ' + LastName AS [Full Name], Title 
FROM Employees
WHERE FirstName LIKE 'A%'		
-- THIS ONE IS THE SAME 
SELECT EmployeeID,
	   CONCAT(FirstName, ' ', LastName) AS [FULL NAME],
	   Title
FROM Employees
WHERE FirstName LIKE 'A%'

-- 4. TÌM NHỮNG AI TRONG FIRST NAME CÓ XUÂT HIỆN CHỮ A CUỐI CÙNG
SELECT EmployeeID,
	   CONCAT(FirstName, ' ', LastName) AS [FULL NAME],
	   Title
FROM Employees
WHERE FirstName LIKE '%A'

-- 5. TÌM NHÂN VIÊN CÓ 4 KÍ TỰ
-- DÙNG HÀM KIỂM TRA ĐỘ DÀI XEM CÓ BẰNG 4 KHÔNG
-- DÙNG TOÁN TỬ LIKE
SELECT * 
FROM Employees
WHERE FirstName LIKE '____'

-- 6. XEM DANH SÁCH CÁC SẢN PHẨM/ MỐN ĐỒ ĐANG CÓ
SELECT *
FROM Products


-- 7. NHỮNG SẢN PHẨM NÀO CÓ TÊN BẮT ĐẦU BẰNG Ch
SELECT * 
FROM Products
WHERE ProductName LIKE 'Ch%'

-- 8. TRONG TÊN CÓ CHỮ CH, KHÔNG QUAN TÂM VỊ TRÍ XUÂT HIỆN
SELECT * FROM Products WHERE ProductName LIKE '%Ch%'

-- 9. NHỨNG SẢN PHẨM MÀ TÊN CÓ 5 KÍ TỰ
SELECT * 
FROM Products
WHERE ProductName LIKE '_____'

-- 10. NHỮNG SẢN PHẦM CÓ TỪ 5 KÍ TỰ TRỞ LÊN
SELECT * 
FROM Products
WHERE ProductName LIKE '% _____' 

-- 11. NHỮNG SẢN PHẨM CÓ 5 KÍ TỰ CHỮ CÁI CUỐI CÙNG
SELECT * 
FROM Products
WHERE ProductName LIKE '% _____' OR ProductName LIKE '_____'
-- vô tình loại đi tên chỉ có 5 kí tự

