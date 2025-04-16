SELECT
  klienci.imie, 
  klienci.nazwisko,
  SUM(julianday(noclegi.data_wyjazdu) - julianday(noclegi.data_przyjazdu)) AS laczna_liczba_dni

FROM klienci
  INNER JOIN noclegi
ON klienci.nr_dowodu = noclegi.nr_dowodu

GROUP BY klienci.nr_dowodu
ORDER BY laczna_liczba_dni DESC
LIMIT 1;

-- w ms access, zamien julianday(noclegi.data_wyjazdu) - julianday(noclegi.data_przyjazdu)
-- na DateDiff("d", noclegi.data_przyjazdu, noclegi.data_wyjazdu)
-- i w ORDER BY musisz powtorzyc ta funkcje bo w accessie nie mozesz uzywac aliasow w ORDER BY
-- a do tego zamiast LIMIT 1 na koncu uzyj TOP 1 zaraz po SELECT

-- WERSJA MS ACCESS:

-- SELECT TOP 1
--   klienci.imie,
--   klienci.nazwisko,
--   SUM(DateDiff("d", noclegi.data_przyjazdu, noclegi.data_wyjazdu)) AS laczna_liczba_dni
--
-- FROM klienci
--   INNER JOIN noclegi
-- ON klienci.nr_dowodu = noclegi.nr_dowodu
--
-- GROUP BY klienci.nr_dowodu
-- ORDER BY SUM(DateDiff("d", noclegi.data_przyjazdu, noclegi.data_wyjazdu)) DESC;
