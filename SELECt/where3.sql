USE Northwind

----------------------------------------------------------------------------------------------------
-- LÍ THUYẾT
-- CÚ PHÁP MỞ RỘNG
-- TRONG THỰC TẾ CÓ NHỮNG LÚC THÔNG TIN CHƯA XÁC ĐỊNH ĐƯỢC NÓ LÀ GÌ ??
-- VÍ DỤ: KÍ TÊN DANH SÁCH THI CUỐI KÌ, CÓ CÁC CỘT ĐIỂM , ĐIỂM NGAY LÚC KÍ TÊN CHƯA XÁC ĐỊNH ĐƯỢC
-- CHƯA XÁC ĐỊNH ĐƯỢC, TỪ TỪ SẼ UPDATE SAU, HIỆN TƯỢNG DỮ LIỆU CHƯA XÁC ĐỊNH CHƯA BIẾT, TỪ TỪ ĐƯA VÀO SAU, HIỆN NAY NHÌN VÀO CHƯA THẤY CÓ DATA THÌ TA GỌI GIÁ TRỊ CHƯA XÁC ĐỊNH NÀY LÀ NULL
-- NULL ĐẠI DIỆN CHO CÁC THỨ CHƯA XÁC ĐỊNH, CHƯA XÁC ĐỊNH TỨC LÀ CHƯA CÓ GIÁ TRỊ, KHÔNG CÓ GIÁ TRỊ
-- THÌ KHÔNG THỂ SO SÁNH > >= < <= = !=
-- CẤM TUYỆT ĐỐI KHÔNG XÀI CÁC TOÁN TỬ SO SÁNH ĐỂ KÈM VỚI GIÁ TRỊ NULL 
----------------------------------------------------------------------------------------------------

-- THỰC HÀNG
-- 1. IN RA DANH SÁCH NHÂN VIÊN
SELECT * FROM Employees -- 9 NGƯỜI

-- 2. AI CHƯA XÁC ĐỊNH KHU VỰC, REGION NULL
SELECT * FROM Employees WHERE Region = 'NULL'  -- 0 DÒNG VÌ KHÔNG AI Ở KHU VỰC TÊN LÀ NULL
SELECT * FROM Employees WHERE Region = NULL    -- 0 DÒNG VÌ NULL KHÔNG THỂ SO SÁNH VỚI TOÁN TỬ
SELECT * FROM Employees WHERE Region IS NULL  
SELECT * FROM Employees WHERE NOT Region IS NULL  

-- 3. NHỮNG NHÂN VIÊN ĐẠI DIỆN KINH DOANH ĐÃ XÁC ĐỊNH ĐƯỢC NƠI CƯ TRÚ
SELECT * FROM Employees WHERE Title = 'Sales Representative' AND Region IS NOT NULL
SELECT * FROM Employees WHERE Title = 'Sales Representative' AND NOT (Region IS NULL)

-- 4. LIỆT KÊ NHỮNG KHÁCH HÀNG ĐẾN TỪ ANH PHÁP MĨ, CÓ CẢ THÔNG TIN SỐ FAX VÀ REGION
SELECT * FROM Customers WHERE Country IN ('UK', 'USA', 'France') AND FAX IS NOT NULL AND Region IS NOT NULL
