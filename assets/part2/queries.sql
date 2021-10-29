-- a
select *
from flight
where status = "Upcoming";
-- results: 
-- '1234','China Eastern','KP210','2021-04-12 11:20:00','2021-04-12 13:20:20','JFK','PVG','800.40','Upcoming'


-- b
select *
from flight
where status = "Delayed";
-- results: 
-- '5678','China Eastern','KP210','2021-03-12 11:20:00','2021-03-12 13:20:20','JFK','PVG','670.80','Delayed'


-- c
select *
from customer, purchase
where customer.email = purchase.customer_email 
and booking_agent_email is not null;
-- results: 
-- 'mika@int.com','Mika','12341234','2','Island','Honolulu','Hawaii','280-330-527','US123','2026-01-01','USA','1998-12-21','89567','mika@int.com','agentstrange@avex.com'


-- d
select *
from airplane, airline
where airline.name = airplane.airline_name 
and airline.name = "China Eastern";
-- results: 
-- 'KP210','120','China Eastern','China Eastern'
-- 'SK339','30','China Eastern','China Eastern'


