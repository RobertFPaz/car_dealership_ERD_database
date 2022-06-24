--Insert values into customer table.

insert into
customer(customer_id, first_name, last_name, address, city, state, zipcode)
values (1, 'Porky', 'Pig', '100 Swine Drive', 'Oakland', 'CA', '99999');

insert into
customer(customer_id, first_name, last_name, address, city, state, zipcode)
values (2, 'Kermit', 'Frog', '100 Tadpole Drive', 'Fremont', 'CA', '99999');

insert into
customer(customer_id, first_name, last_name, address, city, state, zipcode)
values (3, 'Gonzo', 'Muppet', '100 Blue Hair Drive', 'Berkeley', 'CA', '99999');

insert into
customer(customer_id, first_name, last_name, address, city, state, zipcode)
values (4, 'Animal', 'Muppet', '100 Orange Hair Court', 'San Francisco', 'CA', '99999');
 
select *
from customer;

--Insert values into car table.
insert into
car(car_id, make, model, _year, customer_id)
VALUES(1, 'Ford', 'Mustang', '1990', 4);

insert into
car(car_id, make, model, _year, customer_id)
VALUES(2, 'Toyota', 'Tundra', '2020', 3);

insert into
car(car_id, make, model, _year, customer_id)
VALUES(3, 'Bentley', 'EXP 100 GT', '2019', 2);

insert into
car(car_id, make, model, _year, customer_id)
VALUES(4, 'Bugatti', 'Chiron', '2016', 1);

select * 
from car;

--Insert values into salesperson table.

insert into
salesperson(sales_id, first_name, last_name)
VALUES(1, 'Chris', 'Rock');


insert into
salesperson(sales_id, first_name, last_name)
VALUES(2, 'Will', 'Smith');


insert into
salesperson(sales_id, first_name, last_name)
VALUES(3, 'Jada', 'Smith');

insert into
salesperson(sales_id, first_name, last_name)
values(4, 'Hans', 'Slape');

select *
from salesperson;

--Insert values into invoice table.
insert into 
invoice(invoice_id, sub_total, total, car_id, sales_id, customer_id)
values(1, 15000.00, 170000.00, 2, 3, 4);

insert into 
invoice(invoice_id, sub_total, total, car_id, sales_id, customer_id)
values(2, 10000.00, 120000.00, 3, 4, 1);

insert into 
invoice(invoice_id, sub_total, total, car_id, sales_id, customer_id)
values(3, 1500000.00, 17000000.00, 4, 1, 2);

insert into 
invoice(invoice_id, sub_total, total, car_id, sales_id, customer_id)
values(4, 5000000.00, 6000000.00, 1, 2, 3);

select * 
from invoice;

--Insert values into mechanic table.

insert into 
mechanic(mechanic_id, first_name, last_name)
VALUES(1, 'James', 'Blake');

insert into 
mechanic(mechanic_id, first_name, last_name)
VALUES(2, 'Dwane', 'Johnson');


insert into 
mechanic(mechanic_id, first_name, last_name)
VALUES(3, 'Amy', 'Schumer');


insert into 
mechanic(mechanic_id, first_name, last_name)
VALUES(4, 'Mario', 'Lopez');

select *
from mechanic;

--Insert values into part table.
insert into
part(upc, description, price)
VALUES(1, 'tire', 239.99);

insert into
part(upc, description, price)
VALUES(2, 'wiper blade', 19.99);

insert into
part(upc, description, price)
VALUES(3, 'spark plug', 16.99);

insert into
part(upc, description, price)
VALUES(4, 'air filter', 29.99);

select * 
from part;

-- Insert values into service_ticket table.
insert into
service_ticket(ticket_id, service_type, sub_total, total, car_id, upc, mechanic_id)
VALUES(1, 'wheel aignment', 300.00, 350.00, 2, 3, 4);

insert into
service_ticket(ticket_id, service_type, sub_total, total, car_id, upc, mechanic_id)
VALUES(2, 'coolant flush', 350.00, 400.00, 3, 4, 1);

insert into
service_ticket(ticket_id, service_type, sub_total, total, car_id, upc, mechanic_id)
VALUES(3, 'oil change', 99.99, 120.00, 4, 1, 2);

insert into
service_ticket(ticket_id, service_type, sub_total, total, car_id, upc, mechanic_id)
VALUES(4, 'brake replacement', 200.00, 250.00, 1, 2, 3);
 

select * 
from service_ticket
where car_id = 2;

