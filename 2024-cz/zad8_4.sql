SELECT
  wizyty.pesel
FROM ((wizyty
INNER JOIN pacjenci ON pacjenci.pesel = wizyty.pesel)
INNER JOIN punkt_szczepien ON punkt_szczepien.kod_punktu = wizyty.kod_punktu)
WHERE
  pacjenci.wojewodztwo_pacjenta != punkt_szczepien.wojewodztwo_punktu;
