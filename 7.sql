-- 7
SELECT Sepeda.Jenis, COUNT(Transaksi.ID) FROM Sepeda
LEFT JOIN Transaksi ON ((Transaksi.Sepeda_ID = Sepeda.ID) AND (MONTH(Transaksi.Tanggal_Sewa) = MONTH(CURRENT_DATE())))
GROUP BY Sepeda.Jenis;