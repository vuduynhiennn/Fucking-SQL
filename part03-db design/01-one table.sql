﻿CREATE DATABASE DBDESIGN_ONETABLE  -- DDL DATA DEFINITION LANGUAGE

USE DBDESIGN_ONETABLE              -- DDL 

-- TẠO RA CẤU TRÚC DDL - 1 NHÁNH CỦA SQL
CREATE TABLE Student (    --- DATA DEFINITION LANGUAGE
	StudentID CHAR(8) NOT NULL UNIQUE,
	LastName NVARCHAR(40),
	FirstName NVARCHAR(10),   -- TẠI SAO KHÔNG GỘP FULL NAME CHO RỒI, N ĐỂ LƯU TRỮ UNICODE TIẾNG VIỆT
	DOB DATETIME,
	[Address] NVARCHAR(50)
)

SELECT * FROM Student -- DQL DATA QUERY LANGUAGE, DATA MANIPULATION LANGUAGE

-- ĐƯA DATA VÀO
INSERT INTO Student 
VALUES ('SE123456', 'Nguyễn', 'An', '2003-01-01', N'TP Hồ Chí Minh')
-- NẾU KHÔNG NÓI NĂNG GÌ CẢ THÌ CHO PHÉP RỖNG
-- MỘT SỐ CỘT CHƯA THÊM NHẬP INFO ĐƯỢC QUYỀN BỎ TRỐNG NẾU CHO PHÉP TRỐNG
-- DEFAULT KHI THIẾT KẾ TỦ MẶC ĐỊNH LÀ NULL
INSERT INTO Student 
VALUES ('SE123457', 'Lê', 'Bình', '2003-02-01', NULL)

INSERT INTO Student 
VALUES ('SE123458', 'Võ', 'Cường', '2003-02-01', NULL)

INSERT INTO Student (StudentID, FirstName, LastName)
VALUES ('SE123459', N'Võ', N'Dũng')

INSERT INTO Student (StudentID, FirstName, LastName)
VALUES (NULL, NULL, NULL) 
-- SIÊU NGUY HIỂM VÌ CÓ SINH VIÊN TOÀN INFOR ĐỂ TRỐNG
SELECT * FROM Student


CREATE TABLE StudentV3 (
	StudentID CHAR(8),
	LastName NVARCHAR(40) NOT NULL,
	FirstName NVARCHAR(10) NOT NULL,
	DOB DATETIME NULL,
	Address NVARCHAR(50) 
    PRIMARY KEY(StudentID)
)

INSERT INTO StudentV3 
VALUES ('SE123456', N'Nguyễn', N'An', '2003-01-01', N'TP Ho Chi Minh')

SELECT * FROM StudentV3

CREATE TABLE Entity (
  StudentID char(8) NOT NULL, 
  LastName  varchar(50) NOT NULL, 
  FirstName varchar(10) NOT NULL, 
  PRIMARY KEY (StudentID)
)

------------------------------------------
--------------CONSTRAINT------------------
------------------------------------------
DROP TABLE StudentV7
CREATE TABLE StudentV7 (
	StudentID CHAR(8) NOT NULL,
	LastName NVARCHAR(40),
	FirstName NVARCHAR(30),
	DOB DATETIME,
	Address NVARCHAR(30)
)

ALTER TABLE StudentV7 ADD CONSTRAINT PK_StudentV7 PRIMARY KEY(StudentID)

ALTER TABLE StudentV7 DROP CONSTRAINT PK_StudentV7

ALTER TABLE StudentV2 DROP CONSTRAINT PK_StudentV_32C52A793F1A6D01












