SELECT
  pokoje.nr_pokoju

FROM pokoje
  INNER JOIN noclegi
ON noclegi.nr_pokoju = pokoje.nr_pokoju
  INNER JOIN klienci
ON noclegi.nr_dowodu = klienci.nr_dowodu

WHERE
  (noclegi.data_wyjazdu BETWEEN '2022-07-01' AND '2022-09-30' OR -- noclegi ktore przenosza sie na dany okres
  noclegi.data_przyjazdu BETWEEN '2022-09-30' AND '2022-07-01') AND -- noclegi ktore zaczynaja sie w danym okresie
  klienci.miejscowosc NOT IN ('Opole', 'Katowice') AND
  pokoje.standard = 'N'

GROUP BY pokoje.nr_pokoju
ORDER BY pokoje.nr_pokoju;
