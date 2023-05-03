CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(200),
	payment_info VARCHAR(200),
	email VARCHAR(200) NOT NULL
);

DROP TABLE IF EXISTS orders; --
CREATE TABLE orders(
	orders_id SERIAL PRIMARY KEY,
	orders_placed DATE,
	order_shipped DATE,
	shipping_method VARCHAR(100),
	tracking_number VARCHAR(50) UNIQUE,
	total_price DECIMAL(8,2),
	customer_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

DROP TABLE IF EXISTS products;
CREATE TABLE products(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(150),
	price DECIMAL(8,2),
	description VARCHAR(250)
);


DROP TABLE IF EXISTS order_products;
CREATE TABLE order_products(
  	id SERIAL PRIMARY KEY,
  	orders_id INTEGER, 
	FOREIGN KEY(orders_id) REFERENCES orders(orders_id),
  	product_id INTEGER, 
	FOREIGN KEY(product_id) REFERENCES products(product_id)
);
 
CREATE TABLE inventory(
	inventory_id SERIAL PRIMARY KEY,
	quantity DECIMAL(8,2),
	product_id INTEGER REFERENCES products(product_id),
	expiration_date DATE
);