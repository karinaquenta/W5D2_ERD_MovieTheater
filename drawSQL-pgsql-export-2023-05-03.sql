CREATE TABLE "ticket"(
    "ticket_id" SERIAL NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "payment_method" DECIMAL(8, 2) NOT NULL,
    "quantity" INTEGER NOT NULL
);
ALTER TABLE
    "ticket" ADD PRIMARY KEY("ticket_id");
CREATE TABLE "movie"(
    "movie_id" SERIAL NOT NULL,
    "showtime_date" DATE NOT NULL,
    "showtime" TIME(0) WITHOUT TIME ZONE NOT NULL,
    "available_seats" INTEGER NOT NULL,
    "movie_description" VARCHAR(250) NOT NULL,
    "ticket_id" INTEGER NOT NULL
);
ALTER TABLE
    "movie" ADD PRIMARY KEY("movie_id");
CREATE TABLE "concession"(
    "concession_id" SERIAL NOT NULL,
    "drink_quantity" INTEGER NOT NULL,
    "snack_quantity" INTEGER NOT NULL,
    "popcorn_quantity" INTEGER NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    "concession" ADD PRIMARY KEY("concession_id");
CREATE TABLE "customers"(
    "customer_id" SERIAL NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(200) NULL,
    "payment_info" VARCHAR(200) NOT NULL
);
ALTER TABLE
    "customers" ADD PRIMARY KEY("customer_id");
ALTER TABLE
    "ticket" ADD CONSTRAINT "ticket_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "customers"("customer_id");
ALTER TABLE
    "movie" ADD CONSTRAINT "movie_ticket_id_foreign" FOREIGN KEY("ticket_id") REFERENCES "ticket"("ticket_id");