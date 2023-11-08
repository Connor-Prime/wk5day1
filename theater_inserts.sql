INSERT INTO theater (
  theater_name
)VALUES(
	'The Fox Theater'
)

SELECT * FROM theater

INSERT INTO showroom (
  current_viewers,
  showroom_name,
  max_viewers,
  theater_id
)VALUES(
	0,
	'THe Gold Room',
	250,
	1
)

INSERT INTO movie (
  movie_name,
  minutes_runtime
)VALUES(
	'Castle in the Sky',
	124
)


INSERT INTO Ticket (
  cost_,
  movie_time,
  showroom_id,
  movie_id
)VALUES(
	5.99,
	'2023-09-12',
	1,
	1
)

INSERT INTO concession_booth (
  theater_id
)VALUES(
	1
)

INSERT INTO concession (
  concession_name,
  concession_price
)VALUES(
	'M & Ms',
	2.65
)

INSERT INTO concession_amount(
	amount,
	concession_booth_id,
	concession_id
)VALUES(
	30,
	1,
	1
)
