-- 1
SELECT DISTINCT NIK, Nama, Asal_Kota FROM Pelanggan
JOIN Membership ON Membership.ID = Pelanggan.Membership_ID
JOIN Transaksi ON Transaksi.Pelanggan_NIK = Pelanggan.NIK
WHERE Transaksi.Waktu_Mulai > "2023-01-01 08:00:00";