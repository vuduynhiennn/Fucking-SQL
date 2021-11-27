CREATE TABLE PhoneBookV2 (
	Nick NVARCHAR(30),
	HomePhone char(11), -- chỉ 1 số phone thôi
	WorkPhone2 char(11),
	CellPhone char(11)  -- éo biết cột nào là loại nào, 1 3 3 vô hồn
)

-- MỞ RỘNG TABLE THEO CHIỀU NGANG
SELECT p.CellPhone, P.HomePhone FROM PhoneBookV2 p

INSERT INTO PhoneBookV2
VALUES (N'Nhiên', '0353021375', '01676717928', '0973347739'), (N'An', '090231221', NULL, NULL), (N'Bình', '09X', '098X', '092')

DROP TABLE PhoneBookV2
-- THỐNG KÊ SỐ LƯỢNG, SỐ ĐT ĐANG CÓ MỖI NGƯỜI SÀI LÀ KHÔNG ĐƯUỌC

SELECT COUNT(*) FROM PhoneBookV2 WHERE Nick = 'An'
