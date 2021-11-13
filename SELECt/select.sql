USE Northwind -- chọn để chơi với thùng chứa data nào đó	
              -- tại 1 thời điểm chỉ chơi với 1 thùng chứa data

SELECT * FROM Customers

-----------------------------------------------------------------
-- LÍ THUYẾT 
-- 1. dbe cung cấp các câu lệnh SELECT dùng để
--	  in ra màn hình một cái gì đó ~~ printf của C, sout() java
--    in ra dữ liệu có trong table ( hàng, cột )
--    dùng cho mục đích nào thì kết quả hiển thị luôn là một tables
-----------------------------------------------------------------

-- 1. Hôm nay là ngày bao nhiêu ???
SELECT GETDATE()
SELECT GETDATE() AS [Hôm nay là ngày]

-- 2. Bây giờ là tháng mất hỡi em ???
SELECT MONTH(GETDATE()) AS [Month]
SELECT YEAR(GETDATE()) AS [Year]

-- 3. Trị tuyệt đối -5 là mấy ???
SELECT ABS(-5) AS [Trị tuyệt đối của số 5 là : ]

-- 4. 5 + 5 là mấy ???
SELECT 5 + 5 

-- 5. In ra tên của mình 
SELECT N'Vũ Duy' + N'Nhiên' AS [My name is]
SELECT N'Vũ Duy Nhiên' AS [My name is]

-- 6. Tính tuổi và in ra tuổi 
SELECT 2021 - 2003
SELECT YEAR(GETDATE()) - 2003

-- Lộn xộn kiểu data
SELECT N'Hoang' + N'Ngoc Trinh' + CONVERT(VARCHAR, YEAR(GETDATE()) - 2003) + ' years old' AS [cột 1]
SELECT N'Hoang' + N'Ngoc Trinh' + CAST(YEAR(GETDATE()) - 2003 AS VARCHAR) + ' years old' AS [cột 2]