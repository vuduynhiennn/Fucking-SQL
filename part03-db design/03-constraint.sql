-- PRIMARY KEY PHẦN NÀY DÍNH DẾN CÁC RÀNG BUỘC
-- CONSTRAINT CÁC QUY TẮC GÀI TRÊN DATA
-- 1. RÀNG BUỘC PRIMARY KEY
-- TẠM THỜI HIỂU, CHẤP NHẬN PK LÀ MỘT CỘT TƯƠNG LAI CÓ THỂ CÓ NHIỀU CỘT, MÀ GIÁ TRỊ CỦA NÓ TRÊN MỌI DÒNG CỦA CỘT CELL CỦA CỘT NÀY
-- KHÔNG TRÙNG LẠI, MỤC ĐÍCH ĐỂ WHERE RA ĐƯỢC 1 DÒNG DUY NHẤT 
-- VD: SỐ CHỨNG MINH NHÂN DÂN XÁC ĐỊNH DUY NHẤT MỘT CON NGƯỜI 
-- CÁCH 1: TỰ NHẬP BẰNG TAY VÀ DB ENGINE SẼ TƯ KIỂM TRA DÙM MÌNH XEM CÓ TRÙNG KHÔNG, DB ENGINE SẼ TỰ BÁO VI PHẠM CONTRAINT HỌC RÒI 

USE DBDESIGN_ONETABLE

CREATE TABLE Registration (
	SEQ INT PRIMARY KEY IDENTITY,
	FirstName NVARCHAR(10),
	LastName NVARCHAR(30),
	Email VARCHAR(50),  -- CAM TRUNG TINH SAU
	Phone VARCHAR(11),	-- 
	RegDate DATETIME DEFAULT GETDATE() -- CONSTRAINT DEFAULT

)
-- ĐĂNG KÍ THỬ 

INSERT INTO Registration
VALUES (N'An', N'Nguyễn', 'an@gmail.com', '090X', DEFAULT) -- BÁO LỖI DO KHÔNG CUNG CẤP ĐỦ CỘT

INSERT INTO Registration (FirstName, LastName, Email, Phone)
VALUES (N'Linh', N'Nguyễn', 'linh@gmail.com', '090X') -- BÁO LỖI DO KHÔNG CUNG CẤP ĐỦ CỘT

 
SELECT * FROM Registration





