SELECT DISTINCT statki.Nazwa_statku
FROM statki
INNER JOIN armatorzy
ON statki.Id_armatora = armatorzy.Id_armatora
WHERE armatorzy.Armator = 'XYZ';
