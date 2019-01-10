CREATE TABLE series (
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  subgenre_id INTEGER
  );
  
CREATE TABLE subgenres (
  id INTEGER PRIMARY KEY,
  name TEXT
  );

CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
  name TEXT
  );
  
CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  year NUMERIC,
  series_id INTEGER
  );
  
CREATE TABLE characters (
  id INTEGER PRIMARY KEY,
  name TEXT,
  species TEXT,
  motto TEXT,
  series_id INTEGER,
  author_id INTEGER);

CREATE TABLE character_books (
  id INTEGER PRIMARY KEY,
  book_id INTEGER,
  character_id INTEGER);
  
 SELECT books.title,characters.species FROM books JOIN series WHERE series.id = books.series_id JOIN characters WHERE series.id = characters.series_id
  