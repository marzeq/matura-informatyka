CREATE TABLE IF NOT EXISTS statki (
  Nr_IMO INT PRIMARY KEY,
  Nazwa_statku TEXT,
  Ladownosc INT
);

CREATE TABLE IF NOT EXISTS przybycia (
  LP INT PRIMARY KEY,
  Data_przybycia DATE,
  Nr_IMO INT,
  Bandera TEXT,
  Nabrzeze TEXT,
  FOREIGN KEY (Nr_IMO) REFERENCES statki(Nr_IMO),
  FOREIGN KEY (Bandera) REFERENCES kody(Bandera)
);

CREATE TABLE IF NOT EXISTS kody (
  Bandera TEXT PRIMARY KEY,
  Nazwa_kraju TEXT,
  Kontynent TEXT
);
