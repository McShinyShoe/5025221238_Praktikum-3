-- 10
SELECT ID, MIN(BanyakTransaksi) AS BanyakTransaksi FROM (
    SELECT Cabang.ID, COUNT(Transaksi.ID) AS BanyakTransaksi FROM Cabang
    LEFT JOIN Transaksi ON Transaksi.Cabang_ID = Cabang.ID
    GROUP BY Cabang.ID
) AS A;