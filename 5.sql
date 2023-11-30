-- 5
SELECT Pelanggan.Nama, Membership.ID, BanyakTransaksi
FROM Pelanggan
JOIN Membership ON Membership.ID = Pelanggan.Membership_ID
JOIN Transaksi ON Transaksi.Tanggal_Sewa = Membership.Tanggal_Pendaftaran
JOIN (
    SELECT Pelanggan.NIK, COUNT(Transaksi.ID) AS BanyakTransaksi
    FROM Pelanggan
    JOIN Transaksi ON Transaksi.Pelanggan_NIK = Pelanggan.NIK
    GROUP BY Pelanggan.NIk
) AS B ON Pelanggan.NIK = B.NIk;