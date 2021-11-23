CREATE DATABASE Cartesian
											-- DB KHO TỦ THƯỜNG CHỨA DATA BÊN TRONG
											-- DATA BÊN TRONG CẤT DƯỚI DẠNG CÓ NGĂN - TABLE 
USE Cartesian

CREATE TABLE EnDict (						-- DDl một nhánh của sql data definition language
	Numbr int, 
	EnDesc varchar(30)
)
-- từ điển số đếm tiếng anh
-- 1 one
-- 2 two
-- chèn data
SELECT * FROM EnDict						 -- DML DATA MANIPULATION LANGUAGE
INSERT INTO EnDict							 -- DML
VALUES (1, 'ONE'), (2, 'TWO'), (3, 'THREE')  -- DML 

--DROP TABLE EnDict

CREATE TABLE VnDict (
	Numbr INT,
	VnDesc NVARCHAR(30)                      -- NVARHCAR LUƯ TIẾNG VIỆT, VARCHAR CHỈ LƯU TIẾNG ANH THÔI
)

INSERT INTO VnDict 
VALUES (1, N'MỘT'), (2, N'HAI'), (3, N'BA')

--DROP TABLE VnDict

SELECT * FROM EnDict
SELECT * FROM VnDict

SELECT * FROM EnDict, VnDict ORDER BY EnDict.Numbr   -- THAM CHIẾU CỘT QUA TÊN TABLE
SELECT * FROM EnDict, VnDict ORDER BY VnDict.Numbr   -- BỐI RỐI DO TRÙNG TÊN 
SELECT * FROM EnDict, VnDict en ORDER BY en.Numbr    -- ĐẶT TÊN NGẮN, GIẢ THAM CHIẾU CHO TABLE 
-- KHI JOIN SẼ BỊ TRÙNG TÊN CỘT 

SELECT vn.Numbr, vn.VnDesc, en.EnDesc FROM VnDict vn, EnDict en ORDER BY en.Numbr
SELECT vn.*, en.EnDesc FROM VnDict vn, EnDict en ORDER BY en.Numbr

-- CÚ PHÁP THỨ HAI
SELECT vn.*, en.EnDesc FROM VnDict CROSS JOIN EnDict ORDER BY en.Numbr






