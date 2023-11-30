-- 9
SELECT Transaksi.ID, Transaksi.Tanggal_Sewa, TIMESTAMPDIFF(HOUR, Transaksi.Waktu_Mulai, Transaksi.Waktu_Selesai) AS Durasi, Sepeda.Jenis FROM Transaksi
JOIN Sepeda ON Transaksi.Sepeda_ID = Sepeda.ID
WHERE TIMESTAMPDIFF(HOUR, Transaksi.Waktu_Mulai, Transaksi.Waktu_Selesai) > (
    SELECT AVG(Durasi)
    FROM (
        SELECT TIMESTAMPDIFF(HOUR, Transaksi.Waktu_Mulai, Transaksi.Waktu_Selesai) AS Durasi
        FROM Transaksi
    ) AS A
);