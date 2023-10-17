--Create table for customer
CREATE TABLE Customer1(
  customer_id SERIAL primary key,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  address VARCHAR(100),
  billing_info VARCHAR(100)
);
--Create table for MOVIES
CREATE TABLE Movies(
  movie_id SERIAL primary key,
  movie_title VARCHAR(100)
);
--Create table for Inventory
CREATE TABLE Inventory1(
  upc SERIAL primary key,
  concessions_amount INTEGER,
  tickets_amount INTEGER
);
--Creat table for tickets
CREATE TABLE Tickets (
  ticket_id SERIAL primary key,
  ticket_cost NUMERIC(8,2),
  movie_id INTEGER not null,
  upc INTEGER not null,
  foreign key(movie_id) references Movies(movie_id),
  foreign key(upc) references Inventory1(upc)
);
--Create table for Concessions
CREATE TABLE Concessions (
  item_id SERIAL primary key,
  amount NUMERIC(5,2),
  product_namer VARCHAR(100),
  upc INTEGER not null,
  foreign key (upc) references Inventory1(upc)
);

--Create table for Order
CREATE TABLE Order_ (
  order_id SERIAL primary key,
  order_date DATE default CURRENT_DATE,
  sub_total NUMERIC(8,2),
  total_cost NUMERIC(10,2),
  upc INTEGER not null,
  foreign key (upc) references Inventory1(upc)
);
--create table for the online cart
CREATE TABLE REGAL_ONLINE_CART (
  cart_id SERIAL primary key,
  customer_id INTEGER not null,
  order_id INTEGER not null,
  foreign key (customer_id) references Customer1(customer_id),
  foreign key (order_id) references Order_(order_id)
);









