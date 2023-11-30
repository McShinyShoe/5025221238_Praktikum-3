-- 3
SELECT * FROM Pelanggan
WHERE Pelanggan.Usia > (
    SELECT AVG(TIMESTAMPDIFF(YEAR, Tanggal_Lahir, CURRENT_DATE())) 
    FROM Pegawai
);