SELECT przybycia.Nabrzeze
FROM przybycia
WHERE przybycia.Nabrzeze NOT IN (
  SELECT przybycia.Nabrzeze
  FROM przybycia
  JOIN kody ON przybycia.Bandera = kody.Bandera
  WHERE kody.Kontynent = 'EUROPA'
)
GROUP BY przybycia.Nabrzeze;
