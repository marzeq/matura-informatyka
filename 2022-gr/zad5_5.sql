SELECT
  klienci.imie,
  klienci.nazwisko,
  SUM(uslugi_dodatkowe.cena_uslugi) as lacznie_wydano

FROM uslugi_dodatkowe 
  INNER JOIN noclegi
ON uslugi_dodatkowe.id_pobytu = noclegi.id_pobytu
  INNER JOIN klienci
ON noclegi.nr_dowodu = klienci.nr_dowodu

GROUP BY klienci.nr_dowodu
HAVING lacznie_wydano > 0;
