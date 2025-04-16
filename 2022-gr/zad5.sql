CREATE TABLE IF NOT EXISTS klienci (
  nr_dowodu TEXT PRIMARY KEY,
  nazwisko TEXT,
  imie TEXT,
  miejscowosc TEXT
);

CREATE TABLE IF NOT EXISTS pokoje (
  nr_pokoju INT PRIMARY KEY,
  standard TEXT,
  cena INT 
);

CREATE TABLE IF NOT EXISTS noclegi (
  id_pobytu INT PRIMARY KEY,
  data_przyjazdu DATE,
  data_wyjazdu DATE,
  nr_dowodu TEXT,
  nr_pokoju INT,
  FOREIGN KEY (nr_dowodu) REFERENCES klienci(nr_dowodu),
  FOREIGN KEY (nr_pokoju) REFERENCES pokoje(nr_pokoju)
);
