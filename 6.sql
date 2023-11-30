-- 6
SELECT Pegawai.Nama, Pegawai.Tanggal_Mulai_Bekerja, COUNT(Transaksi.ID) AS 'Number of Transactions' FROM Pegawai
JOIN Transaksi ON Transaksi.Pegawai_ID = Pegawai.ID
WHERE YEAR(Tanggal_Mulai_Bekerja) >= 2023
GROUP BY Pegawai.Nama;