/*
 *
 * Simple Store Database Example
 * github.com/skittlexyz
 *
 */

/* Creating the database */
CREATE DATABASE db_skt;

/* Selecting the database and creating tables*/
USE db_skt;
CREATE TABLE clients(
	client_id SERIAL PRIMARY KEY,
	client_name VARCHAR (50) NOT NULL,
	client_birth DATE NOT NULL,
	client_address VARCHAR(100) NOT NULL,
	client_email VARCHAR(50) NOT NULL,
	client_phone VARCHAR(20) NOT NULL
);
CREATE TABLE sellers(
	seller_id SERIAL PRIMARY KEY,
	seller_name VARCHAR(50) NOT NULL,
	seller_birth DATE NOT NULL,
	seller_adress VARCHAR(100) NOT NULL,
	seller_email VARCHAR(50) NOT NULL,
	seller_register_number INTEGER NOT NULL,
	seller_admission_date DATE NOT NULL
);
CREATE TABLE products(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(50) NOT NULL,
	product_category VARCHAR(50) NOT NULL,
	product_description TEXT NOT NULL,
	product_quantity_available INTEGER NOT NULL,
	product_price INTEGER NOT NULL
);
CREATE TABLE sales(
	sale_id SERIAL PRIMARY KEY,
	seller_id INTEGER REFERENCES Sellers(id_seller),
	client_id INTEGER REFERENCES Clients(id_client),
	product_id INTEGER REFERENCES Products(id_product),
	quantity_sold INTEGER NOT NULL 
);

/* Adding values to the tables */
INSERT INTO clients(client_name, client_birth, client_address, client_email, client_phone)
	VALUES('Josh Bellingham', '18-08-1992', '37 Oakridge Lane', 'eugenetdowning@rhyta.com', '469-752-0703');
INSERT INTO sellers(seller_name, seller_birth, seller_adress, seller_email, seller_register_number, seller_admission_date)
	VALUES('Barbara Kelly', '29-09-1970', '223 Glen Falls Road', 'barbarakkelly@cuvox.de', 1, '29-09-1997');
INSERT INTO products(product_name, product_category, product_description, product_quantity_available, product_price)
	VALUES('Inspiron 15', 'Electronics', 'Laptop Dell', 200, 2200);
INSERT INTO sales(seller_id, client_id, product_id, quantity_sold)
	VALUES(1, 1, 1, 2);
    
/* Querying the database*/
SELECT * FROM clients;
SELECT * FROM sellers;
SELECT * FROM products;
SELECT * FROM sales;

/* Deleting from the tables */
DELETE FROM clients;
DELETE FROM sellers;
DELETE FROM products;
DELETE FROM sales;
