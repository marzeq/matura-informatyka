SELECT strftime('%Y', przybycia.Data_przybycia) AS Rok, Count(*) AS Liczba_przybyc
FROM przybycia
WHERE Rok IN ('2016', '2017', '2018', '2019')
GROUP BY Rok
ORDER BY Rok;
