SELECT 
  klienci.imie,
  klienci.nazwisko,
  SUM(pokoje.cena * (julianday(noclegi.data_wyjazdu) - julianday(noclegi.data_przyjazdu))) AS wydana_ilosc

FROM klienci
  INNER JOIN noclegi
ON noclegi.nr_dowodu = klienci.nr_dowodu
  INNER JOIN pokoje
ON noclegi.nr_pokoju = pokoje.nr_pokoju

GROUP BY klienci.nr_dowodu
HAVING wydana_ilosc > 2000
ORDER BY wydana_ilosc DESC;

-- w ms access, zamien julianday(noclegi.data_wyjazdu) - julianday(noclegi.data_przyjazdu)
-- na DateDiff("d", noclegi.data_przyjazdu, noclegi.data_wyjazdu)
-- i w ORDER BY oraz w HAVING musisz uzyc funkcji podobnie a nie aliasu

-- WERSJA MS ACCESS:

-- SELECT
--   klienci.imie,
--   klienci.nazwisko,
--   SUM(pokoje.cena * DateDiff("d", noclegi.data_przyjazdu, noclegi.data_wyjazdu)) AS wydana_ilosc
-- FROM klienci
--   INNER JOIN noclegi
-- ON noclegi.nr_dowodu = klienci.nr_dowodu
--   INNER JOIN pokoje
-- ON noclegi.nr_pokoju = pokoje.nr_pokoju
--
-- GROUP BY klienci.nr_dowodu
-- HAVING SUM(pokoje.cena * DateDiff("d", noclegi.data_przyjazdu, noclegi.data_wyjazdu)) > 2000
-- ORDER BY SUM(pokoje.cena * DateDiff("d", noclegi.data_przyjazdu, noclegi.data_wyjazdu)) DESC;
