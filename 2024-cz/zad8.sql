CREATE TABLE IF NOT EXISTS szczepionki (
  kod_szczepionki TEXT,
  liczba_dawek INTEGER
);

CREATE TABLE IF NOT EXISTS wizyty (
  pesel TEXT,
  kod_szczepionki TEXT,
  data_szczepienia DATE,
  numer_dawki INTEGER
);
