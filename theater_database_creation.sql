CREATE TABLE theater (
  theater_id SERIAL PRIMARY KEY,
  concessions_id INTEGER,
  theater_name VARCHAR(80)
);

CREATE TABLE showroom (
  showroom_id SERIAL PRIMARY KEY,
  current_viewers INTEGER,
  showroom_name VARCHAR(100),
  max_viewers INTEGER,
  theater_id INTEGER REFERENCES theater(theater_id)
);

CREATE TABLE movie (
  movie_id SERIAL PRIMARY KEY,
  movie_name VARCHAR(100),
  minutes_runtime INTEGER
);

CREATE TABLE Ticket (
  ticket_id SERIAL PRIMARY KEY,
  cost_ NUMERIC(6,2),
  movie_time DATE,
  showroom_id INTEGER REFERENCES showroom(showroom_id),
  movie_id INTEGER REFERENCES movie(movie_id)
);

CREATE TABLE concession_booth (
  concession_booth_id SERIAL PRIMARY KEY,
  theater_id INTEGER REFERENCES theater(theater_id)
);



CREATE TABLE concession (
  concession_id SERIAL PRIMARY KEY,
  concession_name VARCHAR(50),
  concession_price NUMERIC(6,2)
);

CREATE TABLE concession_amount (
  concession_amout_id INTEGER,
  amount INTEGER,
  concession_booth_id INTEGER REFERENCES concession_booth (concession_booth_id),
  concession_id INTEGER REFERENCES concession(concession_id)
);

