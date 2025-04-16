CREATE TABLE IF NOT EXISTS uslugi_dodatkowe (
  data_wykonania DATE,
  id_pobytu INT,
  rodzaj TEXT,
  cena_uslugi INT,
  FOREIGN KEY (id_pobytu) REFERENCES noclegi(id_pobytu)
);

SELECT
  uslugi_dodatkowe.rodzaj,
  COUNT(*)

FROM uslugi_dodatkowe

GROUP BY uslugi_dodatkowe.rodzaj;
