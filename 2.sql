-- 2
SELECT Cabang.*, COUNT(Transaksi.ID) AS JumlahTransaksi
FROM Cabang
LEFT JOIN Transaksi ON Transaksi.Cabang_ID = Cabang.ID
GROUP BY Cabang.ID;