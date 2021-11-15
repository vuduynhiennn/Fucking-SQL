USE Northwind

------------------------------------------------------------------------
-- LÍ THUYẾT
-- DB ENGINE HỖ TRỢ 1 LOẠT NHÓM HÀM DÙNG THAO TÁC TRÊN NHÓM/DÒNG/CỘT, GOM DATA VÀ TÍNH TOÁN TRÊN ĐÁM
-- DATA ĐƯỢC GOM NÀY - NHÓM HÀM GOM NHÓM: AGGREGATE FUNCTIONS, AGGREGATION
-- COUNT() SUM() MIN() MAX() AVERAGE()
-- CÚ PHÁP CHUẨN: SELECT CỘT ..., HÀM_GOM_NHÓM() ... FROM [TABLE] WHERE .. GROUP BY 
-- CÚ PHÁP MỞ RỘNG: SELECT CỘT ..., HÀM_GOM_NHÓM() ... FROM [TABLE] WHERE GROUP BY (GOM THEO CỘT NÀO) HAVING ...
-- * HÀM COUNT(????) ĐẾM SỐ LẦN XUẤT HIỆN CỦA MỘT CÁI GÌ ĐÓ
--     COUNT(*) ĐẾM SỐ DÒNG TRONG TABLE
--     COUNT(*) FROM ... WHERE ... CHỌN RA NHỮNG DÒNG THỎA TIÊU CHÍ WHERE NÀO ĐÓ RỒI MỚI ĐẾM 
--                                 FILTER RỒI MỚI ĐẾM
--     COUNT(CỘT NÀO ĐÓ):
------------------------------------------------------------------------
-- 1. IN RA DANH SÁCH CÁC NHÂN VIÊN
SELECT * 
FROM Employees 

-- 2. ĐẾM XEM CÓ BAO NHIÊU NHÂN VIÊN
SELECT COUNT(*)
FROM Employees

SELECT COUNT(*) AS [Number Of Employees] 
FROM Employees

-- 3. CÓ BAO NHIÊU NHÂN VIÊN Ở LONDON
SELECT COUNT(*) AS [No Employees in London]
FROM Employees 
WHERE City = 'London'

-- 4. CÓ BAO NHIÊU THÀNH PHỐ XUẤT HIỆN - CỨ XUẤT HIỆN LÀ ĐẾM KHÔNG CARE LẶP LẠI HAY KHÔNG
SELECT DISTINCT COUNT(City) AS [NO City is] FROM Employees

SELECT City FROM Employees WHERE Region IS NOT NULL

-- 5. ĐẾM XEM CÓ BAO NHIÊU REGION

SELECT COUNT(*) FROM Employees WHERE Region IS NULL
-- PHÁT HIỆN HÀM COUNT KHÔNG ĐẾM GIÁ TRỊ NULL, NẾU CELL CỦA CỘT CHỨA NULL THÌ KHÔNG TÍNH, KHÔNG ĐẾM 


-- ĐẾM XEM CÓ BAO NHIÊU KHU VỰC NULL , CÓ BAO NHIÊU DÒNG REGION NULL
SELECT * FROM Employees WHERE Region IS NULL

-- 6. CÓ BAO NHIÊU THÀNH PHỐ NẰM TRONG TABLE NHÂN VIÊN
SELECT DISTINCT City FROM Employees

-- 7. COI KẾT QUẢ NÀY LÀ 1 TABLE
-- SUB QUERY MỚI, COI 1 CÂU SELECT LÀ MỘT TABLE , BIẾN TABLE NÀY XUÂT HIỆN VÀO TRONG MỆNH ĐỀ FROM 
SELECT * 
FROM (
	SELECT DISTINCT City 
	FROM Employees) AS [CITES]
)
WHERE City = 'London'

SELECT COUNT(*) AS [MUỐN ĐỊT NGUYỄN KHÁNH LY]
FROM (
	SELECT DISTINCT City FROM Employees
) AS [DITLY]

SELECT COUNT(*) 
FROM Employees

SELECT COUNT(DISTINCT City) AS [PHANG KHÁNH LY]
FROM Employees

-- 8. ĐẾM XEM MỖI THÀNH PHỐ CÓ BAO NHIÊU NHÂN VIÊN
-- 9. KHI CÂU HỎI CÓ TÍNH TOÁN GOM DATA (HÀM AGGREGATE) MÀ LẠI CHỨA TỪ KHÓA MỖI ... 
-- GẶP TỪ MỖI CHÍNH LÀ CHIA ĐỂ TRỊ, CHIA ĐỂ ĐẾM, CHIA ĐỂ GOM, CHIA CỤM ĐỂ GOM ĐẾM

SELECT * FROM Employees
-- SỰ XUẤT HIỆN CỦA NHÓM
-- ĐẾM THEO SỰ XUẤT HIỆN CỦA NHÓM COUNT++ TRONG NHÓM, SAU ĐÓ RESET LẠI NHÓM MỚI

SELECT City, COUNT(City) AS[TIMES]
FROM Employees
GROUP BY City
ORDER BY TIMES
-- CHIA CITY THÀNH NHÓM XONG ĐẾM




























