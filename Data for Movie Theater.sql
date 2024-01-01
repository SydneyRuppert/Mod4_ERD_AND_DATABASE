---inserting Data into the movie theater sql
insert into customer1 (
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
	)values(
	1,
	'Ronald',
	'Reagan',
	'22345 White House Road',
	'Chase Visa ending in 4444');
insert into movies (
	movie_id,
	movie_title
	)values(
	1,
	'Black Beauty');
insert into inventory1 (
	upc,
	concessions_amount,
	tickets_amount
	)values(
	1,
	5.00,
	20);
insert into tickets (
	ticket_id,
	ticket_cost,
	movie_id,
	upc)values(
	345,
	12.50,
	1,
	1);
insert into concessions(
	item_id,
	amount,
	product_namer,
	upc)values(
	234,
	30,
	'candy',
	1);
insert into order_ (
	order_id,
	sub_total,
	total_cost,
	upc)values(
	2,
	45.00,
	50.00,
	1);
insert into regal_online_cart (
	cart_id,
	customer_id,
	order_id)values(
	1,
	1,
	2);
select * from customer1 
