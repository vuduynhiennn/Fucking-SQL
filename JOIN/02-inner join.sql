USE Cartesian
SELECT * FROM VnDict, EnDict -- TÍCH ĐỀ CÁC 
SELECT * FROM VnDict CROSS JOIN EnDict -- TÍCH ĐỀ CÁC


SELECT * 
FROM VnDict vn, EnDict en
WHERE vn.Numbr = en.Numbr   -- NÊN ĐẶT ALIAS GIÚP NGẮN GỌN CÂU LỆNH 
-- TÍCH ĐỀ CÁC XONG FILTER LẠI, CHUẨN THẾ GIỚI THÍCH VIẾT CÁI NYAF

SELECT *
FROM VnDict vn INNER JOIN EnDict en
ON vn.Numbr = en.Numbr

SELECT *
FROM VnDict JOIN EnDict
ON VnDict.Numbr = EnDict.Numbr

SELECT * FROM EnDict
SELECT * FROM VnDict

SELECT * FROM EnDict e, VnDict v
WHERE e.Numbr != v.Numbr
-- NON EQUAL JOIN
-- GHÉP CÓ CHỌN LỌC    

SELECT * FROM EnDict e JOIN VnDict v
ON e.Numbr != v.Numbr


SELECT * FROM VnDict v LEFT JOIN EnDict e
ON v.Numbr = e.Numbr
WHERE e.Numbr >= 3






