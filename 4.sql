-- 4
SELECT Cabang_ID, MAX(JumlahTransaksi), GROUP_CONCAT(Sepeda_ID) FROM (
    SELECT Sepeda_ID, Cabang_ID, COUNT(Transaksi.ID) AS JumlahTransaksi FROM Sepeda
    LEFT JOIN Transaksi ON Transaksi.Sepeda_ID = Sepeda.ID
    GROUP BY Sepeda.ID, Transaksi.Cabang_ID
) AS A
GROUP BY Cabang_ID;
