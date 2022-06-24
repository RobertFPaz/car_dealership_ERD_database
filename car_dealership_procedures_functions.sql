--Create function to add service ticket
create or replace function add_service_ticket(_ticket_id INTEGER, _service_date TIMESTAMP without TIME zone, _service_type VARCHAR, _sub_total DECIMAL, _total DECIMAL, _car_id INTEGER, _upc INTEGER, _mechanic_id INTEGER)
returns void
as $BODY$
begin 
		insert into service_ticket(ticket_id, service_date, service_type, sub_total, total, car_id, upc, mechanic_id)
		values(_ticket_id, _service_date, _service_type, _sub_total, _total, _car_id, _upc, _mechanic_id);
end
$BODY$
language plpgsql;

select add_service_ticket(5, NOW()::timestamp, 'Wheel rotation', 119.99, 125.99, 3, 3, 3);

select add_service_ticket(6, NOW()::timestamp, 'Oil change', 39.99, 49.99, 1, 2, 4);


-- Create procedure to add sales tax to total in service_ticket table. 
create or replace procedure add_tax(
		ticket INTEGER, 
		tax DECIMAL
)
language plpgsql
as $$
begin 
	update service_ticket 
	set total = sub_total * tax
	where ticket_id  = ticket;
	commit;
end;
$$

call add_tax(1, 1.2);

call add_tax(2, 1.2);

-- Create function to add salesperson.

create or replace function add_salesperson(_sales_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
returns void
as $MAIN$
begin 
	insert into salesperson(sales_id, first_name, last_name)
	VALUES(_sales_id, _first_name, _last_name);
end;
$MAIN$
language plpgsql;

select add_salesperson(5, 'Freddie', 'Mercury');
select add_salesperson(6, 'Elton', 'John');

