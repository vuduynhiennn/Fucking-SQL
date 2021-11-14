USE Northwind

-- LÝ THUYẾT
-- cú pháp mở rộng của select
-- mệnh đề where: dùng làm bộ lọc filter nhặt ra dữ liệu cần theo tiêu chí nào đó
-- Ví dụ: lọc ra những sv có quê ở Bình Dương
--	    : lọc ra những sv quê ở Tiền Giang và điểm tb > 8
-- Cú pháp dùng bộ lọc
-- SELECT * (cột bạn muốn in ra) FROM [tên table] WHERE điều_kiện_lọc
-- * điều kiện lọc: tìm theo từng dòng, với cái cột có giá trị cần lọc
--                                       lọc theo tên cột với value ntn lấy tên cột
-- Để viết điều kiện lọc ta cần: tên cột, value của cột, toán tử > < >= <= = (một dấu bằng thôi) !=, <> (!= hoặc <> là giống nhau cùng ý nghĩa)
-- Nếu có nhiều điều kiện kèm theo, dùng thêm toán tử logic operators and or not & || != 
--  ví dụ: WHERE City = N'Bình Dương'
--         WHERE City = N'Tiền Giang' AND GPA >= 8
-- Lọc liên quan đến giá trị, value, cell chứa gì ta phải quan tâm đến data types
-- số: nguyên, thực, ghi sổ ra như truyền thông 5, 10, 3.14, 9.8
-- chuỗi kí tự: 'A', 'Ahihi'
-- ngày tháng: '2003-01-01...'
--------------------------------------------------------------------------------------------------
-- THỰC HÀNH
-- 1. in ra danh sách các khách hàng
SELECT * FROM Customers 

-- 2. in ra danh sách khách hàng đến từ ý
SELECT * FROM Customers WHERE Country = 'Italy' -- 3

-- 3. ỉn a danh sách khách hàng đến từ mĩ
SELECT * FROM Customers WHERE Country = 'USA'   -- 13

-- 4. in ra những khách hàng đến từ Mĩ, Ý
SELECT * FROM Customers WHERE Country = 'USA' OR Country = 'Italy'

-- 5. in ra khách hàng từ nước Đức
SELECT * FROM Customers WHERE Country = 'Germany' And City = 'Berlin'

-- 6. in ra thông tin nhân viên
SELECT * FROM Customers

-- 7. in ra thông tin 
SELECT * FROM Employees WHERE YEAR(BirthDate) >= 1960

-- 8. in ra thông tin nhân viên có tuổi từ 60 trở lên
SELECT YEAR(GETDATE()) - YEAR(BirthDate) AS AGE, * FROM Employees WHERE YEAR(GETDATE()) - YEAR(BirthDate) > 60

-- 9. những nhân viên nào ở London
SELECT * FROM Employees WHERE City = 'London'

-- 10. những ai không ở London
SELECT * FROM Employees WHERE City <> 'London'	
SELECT * FROM Employees WHERE City != 'London'

-- 11. đảo mệnh đề 
SELECT * FROM Employees WHERE NOT(City = 'London')

-- 12. in ra hồ sơ của nhân viên có mã số là 1
SELECT * FROM Employees WHERE EmployeeID = 1 -- kiểu số, ko có '', chơi như lập trình
-- WHERE trên key chỉ ra 1 mà thôi
-- SELECT mà có WHERE chỉ có 1 dòng trả về, distinct là vô nghĩa
-- SELECT ... FROM ... WHERE ... GROUP BY ... HAVING .. ORDER BY
--      DISTINCT   1, N TABLE
--       HAM()
--        NESTED QUERY, SUB QUERY

-- 13. xem thông tin của bên đơn hàng
SELECT * FROM Orders  -- 830 đơn hàng
 
-- 14. sắp xếp giảm dần theo trọng lượng
SELECT * FROM Orders ORDER BY Freight DESC

-- 15. in thông tin đơn hàng trọng lượng >= 500 kg
SELECT * FROM Orders WHERE Freight >= 500 ORDER BY Freight DESC

-- 16. in ra thông tin đơn hàng sắp xếp giảm dần theo trọng lượng, nằm trong khoảng 100 đến 500 và đc ship bởi công ty giao vận số 1
SELECT * FROM Orders WHERE Freight >= 100 AND Freight <= 500 ORDER BY ShipVia

SELECT * FROM Orders WHERE Freight >= 100 AND Freight <= 500 AND ShipVia = 1


-- Để phân tách thứ tự filter
SELECT * FROM Orders WHERE Freight >= 100 AND Freight <= 500 AND ShipVia = 1 AND ShipCity <> 'London'

-- 17. liệt kê khách hàng từ Mĩ hoặc Mexico
SELECT * FROM Customers WHERE Country = 'Mexico' AND Country = 'USA'
SELECT * FROM Customers WHERE Country = 'Mexico' OR Country = 'USA'

-- 18. liệt kê khách hàng không đến từ Mĩ hoặc Mexico
SELECT * FROM Customers WHERE NOT(Country = 'USA' OR Country = 'Mexico')
SELECT * FROM Customers WHERE Country != 'USA' OR Country != 'Mexico'

-- 19. liệt kê các nhân viên sinh ra trong đoạn 1960 đến 1970
SELECT * FROM Employees WHERE YEAR(BirthDate) >= 1960 AND YEAR(BirthDate) <= 1970 ORDER BY BirthDate DESC