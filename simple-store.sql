CREATE DATABASE db_skt;
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
