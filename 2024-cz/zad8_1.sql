SELECT wizyty.kod_szczepionki, COUNT(wizyty.kod_szczepionki) AS liczba_dawek
FROM wizyty
JOIN szczepionki ON wizyty.kod_szczepionki = szczepionki.kod_szczepionki
GROUP BY wizyty.kod_szczepionki
ORDER BY liczba_dawek DESC;
