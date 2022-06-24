create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100), 
	address VARCHAR(150),
	city VARCHAR(150),
	state VARCHAR(10),
	zipcode VARCHAR(25)
);
create table salesperson(
	sales_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table car(
	car_id SERIAL primary key,
	make VARCHAR(100),
	model VARCHAR(100),
	_year VARCHAR(20),
	customer_id INTEGER, 
	foreign KEY(customer_id) references customer(customer_id)
);
create table invoice(
	invoice_id SERIAL primary key,
	sub_total NUMERIC(10,2),
	total NUMERIC(10,2),
	invoice_date DATE default CURRENT_DATE,
	car_id INTEGER,
	foreign key(car_id) references car(car_id),
	sales_id INTEGER,
	foreign KEY(sales_id) references salesperson(sales_id),
	customer_id INTEGER,
	foreign key(customer_id) references customer(customer_id)
);
create table mechanic(
	mechanic_id SERIAL primary key, 
	first_name VARCHAR(100), 
	last_name VARCHAR(100)
);
create table part(
	upc SERIAL primary key, 
	description VARCHAR(100),
	price NUMERIC(8,2)
);
create table service_ticket(
	ticket_id SERIAL primary key,
	service_date DATE default CURRENT_DATE,
	service_type VARCHAR(150),
	sub_total NUMERIC(8,2),
	total NUMERIC(10,2),
	car_id INTEGER,
	foreign KEY(car_id) references car(car_id),
	upc INTEGER,
	foreign KEY(upc) references part(upc),
	mechanic_id INTEGER,
	foreign key(mechanic_id) references mechanic(mechanic_id)
);

