-- 8
SELECT * FROM (
    SELECT Pelanggan.Nama, Pelanggan.Nomor_Telepon, Membership_ID, COUNT(Transaksi.ID) AS BanyakPeminjaman FROM Pelanggan
    JOIN Transaksi ON Transaksi.Pelanggan_NIK = Pelanggan.NIK
    JOIN Sepeda ON Sepeda.ID = Transaksi.Sepeda_ID
    WHERE Sepeda.Jenis = 'Gunung'
    GROUP BY Pelanggan.Nama
) AS A
WHERE BanyakPeminjaman > 1;