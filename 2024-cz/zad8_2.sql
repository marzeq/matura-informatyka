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

SELECT COUNT(DISTINCT wizyty.pesel) FROM wizyty
WHERE wizyty.kod_szczepionki = "sz12_3d"
AND (
  wizyty.pesel LIKE "_________0_" OR
  wizyty.pesel LIKE "_________2_" OR
  wizyty.pesel LIKE "_________4_" OR
  wizyty.pesel LIKE "_________6_" OR
  wizyty.pesel LIKE "_________8_")
;


SELECT COUNT(DISTINCT wizyty.pesel) FROM wizyty
WHERE wizyty.kod_szczepionki = "sz12_3d"
-- AND (
--   wizyty.pesel LIKE "_________0_" OR
--   wizyty.pesel LIKE "_________2_" OR
--   wizyty.pesel LIKE "_________4_" OR
--   wizyty.pesel LIKE "_________6_" OR
--   wizyty.pesel LIKE "_________8_")
;
