INSERT INTO customer(
	first_name,
	last_name,
	email,
	payment_info
)VALUES(
	'jennifer',
	'lopez',
	'jlofromtheblock@gmail.com',
	'0101 0202 0303'	
)

SELECT *
FROM customer; 

INSERT INTO customer(
	first_name,
	last_name,
	email,
	payment_info
)VALUES(
	'ben',
	'affleck',
	'bennyfromtheblock@yahoo.com',
	'0202 0303 0404'
)

INSERT INTO ticket(
	customer_id,
	payment_method,
	quantity
)VALUES(
	'1',
	'13.00',
	'2'
)
INSERT INTO ticket(
	customer_id,
	payment_method,
	quantity
)VALUES(
	'2',
	'13.00',
	'2'
)

SELECT *
FROM ticket;

INSERT INTO movie(
	showtime_date,
	showtime,
	available_seats,
	movie_description,
	ticket_id
)VALUES(
	'2023-05-01',
	'14:00',
	'50',
	'Guardians of the Galaxy - Part 3: Folks protecting the universe',
	'001'
)

INSERT INTO movie(
	showtime_date,
	showtime,
	available_seats,
	movie_description,
	ticket_id
)VALUES(
	'2023-05-14',
	'16:00',
	'50',
	'John Wick - Chapter 4: John Wick fight against High Table global seeking powerful players underworld, from NY to Paris to Berlin',
	'002'
)

SELECT *
FROM movie;

INSERT INTO concession(
	drink_quantity,
	snack_quantity,
	popcorn_quantity,
	price
)VALUES(
	'100',
	'100',
	'100',
	'5.00'
) 

INSERT INTO concession(
	drink_quantity,
	snack_quantity,
	popcorn_quantity,
	price
)VALUES(
	'100',
	'100',
	'100',
	'10.00'
) 

SELECT *
FROM concession; 