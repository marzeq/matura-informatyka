SELECT
  STRFTIME('%Y', wizyty.data_szczepienia) AS rok,
  STRFTIME('%m', wizyty.data_szczepienia) AS miesiac,
  COUNT(DISTINCT pesel) AS liczba_osob
FROM
  wizyty
WHERE
  wizyty.numer_dawki = (
    SELECT
      szczepionki.liczba_dawek
    FROM
      szczepionki
    WHERE
      szczepionki.kod_szczepionki = wizyty.kod_szczepionki
  )
GROUP BY
  rok,
  miesiac
ORDER BY
  liczba_osob DESC
LIMIT 1;
