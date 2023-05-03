INSERT INTO customer(
	first_name,
	last_name,
	address,
	payment_info,
	email
)VALUES(
	'sean',
	'currie',
	'123 cool breeze lane',
	'4242 4242 4242',
	'seacc@codingtemple.com'
)

SELECT *
FROM customer; 


INSERT INTO customer(
	first_name,
	last_name,
	address,
	payment_info,
	email
)VALUES(
	'dylan',
	'smith',
	'122 cool breeze lane',
	'4242 4242 4242',
	'dylan@codingtemple.com'
)

SELECT *
FROM customer; 

INSERT INTO products
values(
	1,
	'pikachu card',
	10.50,
	'Card with pikachu on it'
)

SELECT *
FROM products 

INSERT INTO products(
	product_name,
	price,
	description
) 
values(
	'card binder',
	12.00,
	'binder to hold cards'
),(
	'charizard card',
	100.00,
	'1st edition charizard card'
)

SELECT *
FROM products 

SELECT *
FROM customer 
INSERT INTO orders(
	orders_placed,
	order_shipped,
	shipping_method,
	tracking_number,
	total_price,
	customer_id
)VALUES(
	'2022-04-01',
	'2022-04-05',
	'standard',
	'EB897256',
	100.01,
	1
)

INSERT INTO orders(
	orders_placed,
	shipping_method,
	total_price,
	customer_id 
)VALUES(
	'2023-05-01',
	'standard',
	50.00,
	2
)


SELECT *
FROM orders;

INSERT INTO order_products(
	orders_id,
	product_id 
)VALUES(
	'1',
	'3'
) 

INSERT INTO inventory(
	quantity,
	product_id,
	expiration_date 
)VALUES(
	'10',
	'3',
	'2020-01-05'
)

SELECT *
FROM order_products;

SELECT *
FROM inventory; 

--ALTER TABLE customer RENAME column lats_name TO last_name;