-- Create database
CREATE DATABASE salon;

-- Connect to salon database
\c salon

-- Create customers table
CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  phone VARCHAR(20) UNIQUE NOT NULL
);

-- Create services table
CREATE TABLE services (
  service_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

-- Create appointments table
CREATE TABLE appointments (
  appointment_id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  service_id INT REFERENCES services(service_id),
  time VARCHAR(20) NOT NULL
);

-- Insert services into the table
INSERT INTO services (name) VALUES ('cut'), ('color'), ('perm'), ('style'), ('trim');
