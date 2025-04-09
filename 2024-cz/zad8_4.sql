-- CREATE TABLE IF NOT EXISTS szczepionki (
--   kod_szczepionki TEXT,
--   liczba_dawek INTEGER
-- );
-- 
-- CREATE TABLE IF NOT EXISTS wizyty (
--   pesel TEXT,
--   kod_szczepionki TEXT,
--   data_szczepienia DATE,
--   numer_dawki INTEGER
-- );

CREATE TABLE IF NOT EXISTS pacjenci (
  pesel TEXT,
  wojewodztwo_pacjenta TEXT
);

CREATE TABLE IF NOT EXISTS punkt_szczepien (
  kod_punktu TEXT,
  wojewodztwo_punktu TEXT
);

ALTER TABLE wizyty ADD COLUMN kod_punktu TEXT;

SELECT
  wizyty.pesel
FROM ((wizyty
INNER JOIN pacjenci ON pacjenci.pesel = wizyty.pesel)
INNER JOIN punkt_szczepien ON punkt_szczepien.kod_punktu = wizyty.kod_punktu)
WHERE
  pacjenci.wojewodztwo_pacjenta != punkt_szczepien.wojewodztwo_punktu;
