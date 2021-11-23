
CREATE DATABASE OuterJ
USE OuterJ
CREATE TABLE Major (
	MajorID CHAR(2) PRIMARY KEY,       -- PK KHÓA CHÍNH
	MajorrName NVARCHAR(30),
	Hotline NVARCHAR(11)
)

INSERT INTO Major (MajorID, MajorrName, Hotline)
VALUES (1, N'Vũ Duy Nhiên', '0353021375') 

INSERT INTO Major (MajorID, MajorrName, Hotline)
VALUES (2, N'Ngô Thị Huyền', '01672717928'), (3, N'Nguyễn Thị Linh', '0973347739')

SELECT * FROM Major

