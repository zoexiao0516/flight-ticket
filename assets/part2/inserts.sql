-- delete from airline;
-- delete from airport;
-- delete from customer;
-- delete from booking_agent;
-- delete from airplane;
-- delete from airline_staff;
-- delete from flight;
-- delete from ticket;
-- delete from purchase;

insert into airline values ('China Eastern');

insert into airport values ('JFK', 'NYC');
insert into airport values ('PVG', 'Shanghai');
insert into airport values ('HND', 'Tokyo');

-- email, name, password, building_number, street, city, state, phone_number, passport_number, passport_expiration, passport_country, date_of_birth
insert into customer values ('mika@int.com', 'Mika', '12341234', '2', 'Island', 'Honolulu', 'Hawaii', '280-330-527', "US123", "2026-01-01", "USA", "1998-12-21");
insert into customer values ('kazuma@int.com', 'Kazuma', '12123434', '1', 'Upstate', 'New York', 'New York', '287-978-562', "US456", "2028-03-01", "Japan", "2000-05-15");
insert into customer values ('caelan@int.com', 'Caelan', '11223344', '3', 'Pacific', 'LA', 'California', '457-872-334', "US789", "2030-02-01", "Cuba", "2001-04-12");

insert into booking_agent values ("agentstrange@avex.com","strange","876543321");

insert into airplane values ("KP210", 120, 'China Eastern');
insert into airplane values ("SK339", 30, 'China Eastern');

-- username, password, first_name, last_name, date_of_birth, airline_name
insert into airline_staff values ("staffpretty", "77886655", "Brad", "Pitt", "1980-07-21", 'China Eastern');

-- flight_num, airline_name, airplane_id, departure_time, arrival_time, departure_airport, arrival_airport, price, status
insert into flight values ("1234", 'China Eastern', "KP210", "2021-4-12-11:20:00", "2021-4-12-13:20:20", "JFK", "PVG", 800.40, "Upcoming");
insert into flight values ("2345", 'China Eastern', "SK339", "2021-3-28-11:20:00", "2021-3-28-13:20:20", "HND", "PVG", 320.30, "In-progress");
insert into flight values ("5678", 'China Eastern', "KP210", "2021-3-12-11:20:00", "2021-3-12-13:20:20", "JFK", "PVG", 670.80, "Delayed");

insert into ticket values ("89567", "1234", 'China Eastern');
insert into ticket values ("58797", "2345", 'China Eastern');

insert into purchase values ("89567", "mika@int.com", "agentstrange@avex.com");
insert into purchase values ("58797", "kazuma@int.com", null);