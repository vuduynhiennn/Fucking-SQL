USE Northwind

--------------------------------------------------------------------------------------
-- LÍ THUYẾT
-- MỘT BD là nơi chứa data (bán hàng, thư viện, quản lí sinh viên, mạng xã hội,...)
-- DATA được lưu dưới dạng TABLE, tách thành nhiều table (nghệ thuật, design db, NF)
-- Muốn in dữ liệu ta sài lệnh SELECT để xem, in dữ liệu table, hiển thị dưới dạng table
-- Cú pháp chuẩn: SELECT * FROM tên_table	
-- *: đại diện cho tao muốn lấy tất cả các cột
-- CÚ PHÁP MỞ RỘNG
--			SELECT các_cột_muốn_lấy, cách_nhau_bởi_dấu_phẩy FROM tên_table
--          SELECT có thể sử dụng các hàm xử lý các cột để độ lại thông tin hiển thị
--          SELECT FROM <tên-table>

-- Data trả về có cell/ô có NULL hiểu rằng chưa có xác định value/ giá trị, chưa có, chưa biết
-- Từ từ cập nhật sau. Ví Dụ sv kí tên vào danh sách thi, cột điểm ngay lúc kí tên
-- gọi là NULL, mang trạng thái chưa xác định
--------------------------------------------------------------------------------------

-- 1. Xem thông tin của tất cả khách hàng đang giao dịch với mình
SELECT * FROM Customers 
INSERT INTO Customers(CustomerID, CompanyName, ContactName)
				VALUES('FPTU', 'FPT UNIVERSITY', 'Thanh Nguyen Khac')
				-- Bị chửi vì trùng PK
				-- Ngon lành cành đào
-- 4. Mua hàng, thì thông tin sẽ nằm ở order và order details
SELECT * FROM [Order Details]  -- 830 bills
SELECT * FROM Orders

--5 . Xem thông tin công ti giao hàng
SELECT * FROM Shippers
INSERT INTO Shippers(CompanyName, Phone) VALUES('Fedex Viet Nam', '(084) 353021375')

--6. Xem chi tiết mua hàng
SELECT * FROM Orders                   -- Phần trên của bill siêu thị
SELECT * FROM [Order Details]          -- Phần table của bill order

-- Câu 7: in ra tên khách hàng, chỉ gồm cột ID, company name, contact name, country
SELECT CustomerID, CompanyName, ContactName, Country FROM Customers

-- Câu 8: in ra thông tin nhân viên
-- Tên người tách thành last & first: dành cho mục tiêu sort theo tiêu chí, ho, tên. In ra 
-- Tên theo quy ước mỗi quốc gia
SELECT EmployeeID, LastName, FirstName, Title, BirthDate FROM Employees

-- Câu 9: In ra thông tin, ghép tên cho đẹp, tính luôn tuổi cho vui cái
SELECT EmployeeID, LastName + ' ' +  FirstName AS [	Full Name] , Title, BirthDate FROM Employees

SELECT EmployeeID, LastName + ' ' +  FirstName AS [	Full Name] , Title, YEAR(BirthDate) AS [Birthday] FROM Employees

SELECT EmployeeID,
	   LastName + ' ' +  FirstName AS [	Full Name] ,
	   Title, YEAR(GETDATE()) - YEAR(BirthDate) AS AGE 
FROM Employees

-- Câu 7:	 Phép nhân 2 số
SELECT 7 * 7 AS [7 X 7 = ]

-- Câu 10: in ra thông tin chi tiết mua hàng
SELECT * FROM [Order Details]

SELECT *, UnitPrice * Quantity AS [Total] FROM [Order Details]  

-- SL * DG - Giam gia => tien phai tra
-- SL * DG - SL * DG * DISCOUNT (%) ==> Phải trả
-- SL * GD (1 - DISCOUNT) ==> công thức tính tiền phải trả
SELECT *, UnitPrice * Quantity * (1 - Discount) AS SubTotal FROM [Order Details]

-- Khi ta SELECT ít cột từ table gốc có nguy cơ các dữ liệu sẽ trùng lại
-- Người nhập liệu bị sai do chúng ta có nhiều đặc điểm trùng nhau, nếu chỉ tập trung vào data này thì chung
-- 100 triệu người dân Việt Nam được quản lí infor bao gồm: ID, tên, DOB,...Tỉnh thành sinh sống
--															<>						63 tỉnh	
--  														<>						63 tỉnh
-- LỆNH SELECT HỖ TRỢ LOẠI TRỪ DÒNG TRÙNG NHAU/ TRÙNG 100%
-- SELECT DISTINCT tên_các_cột FROM tên_table
-- 1. Liệt kê danh sách nhân viên
SELECT * FROM Employees
-- Phân tích: 9 người nhưng chỉ có 4 title. ~~~ 100 triệu dân VN chỉ có 63 tỉnh thành 
SELECT TitleOfCourtesy FROM Employees    -- 9 Danh sách
SELECT  DISTINCT TitleOfCourtesy FROM Employees -- chỉ là 4  


SELECT DISTINCT EmployeeID, TitleOfCourtesy FROM Employees
-- Nếu distinct đi kèm với ID/key thì nó vô dụng, key sao trùng mà loại trừ
-- In ra thông tin của khách hàng
SELECT * FROM Customers

SELECT DISTINCT City FROM Customers

-- LÍ THUYẾT
-- CÚ PHÁP MỞ RỘNG LỆNH SELECT 
-- Ta muốn sắp xếp dữ liệu dữ liệu, sort theo tiêu chí nào đó, thường là tăng dần - assending/asc
--                                                                       giảm dần - desending/desc
-- Mặc định không nói gì cả thì sort tăng dần
-- A < B < C
-- 1 < 2 < 3
-- Ta có thể sort trên nhiều cột
-- SELECT ... FROM tên_table order by tên cột muốn sort tên <kiểu muốn sort>
----------------------------------------------------------------------------------------------------------------------------------------

-- 1. In ra danh sách nhân viên
SELECT * FROM Employees ORDER BY BirthDate

-- 2. Sắp xếp giảm dần
SELECT * FROM Employees ORDER BY BirthDate DESC

-- 3. Tính tiền chi tiết mua hàng
SELECT * FROM [Order Details] 
SELECT *, UnitPrice * Quantity * (1 - Discount) AS [Sub title] FROM [Order Details] ORDER BY [Sub title] DESC

-- 4. In ra danh sách nhân viên theo tuổi
SELECT * FROM Employees 
SELECT LastName + ' ' + FirstName AS [Full Name] , YEAR(GETDATE()) - YEAR(BirthDate) AS [AGE] FROM Employees ORDER BY AGE ASC 
