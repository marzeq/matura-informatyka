SELECT Typ_dzialalnosci, COUNT(*) AS Ilosc_Armatorow
FROM armatorzy
GROUP BY Typ_dzialalnosci;
