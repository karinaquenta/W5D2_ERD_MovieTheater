CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(200),
	payment_info VARCHAR(200) NOT NULL
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	payment_method DECIMAL(8,2),
	quantity INTEGER
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	showtime_date DATE,
	showtime TIME,
	available_seats INTEGER,
	movie_description VARCHAR(250),
	ticket_id INTEGER,
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);

CREATE TABLE concession(
	concession_id SERIAL PRIMARY KEY,
	drink_quantity INTEGER,
	snack_quantity INTEGER,
	popcorn_quantity INTEGER,
	price DECIMAL(8,2)
);
