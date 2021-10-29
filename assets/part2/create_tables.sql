DROP DATABASE IF EXISTS `air_ticket_reservation_system`;
CREATE DATABASE `air_ticket_reservation_system`; 
USE `air_ticket_reservation_system`;

-- SET NAMES utf8 ;
-- SET character_set_client = utf8mb4 ;

create table customer
	(email			 		varchar(30) not null,
	 name			 		varchar(30) not null,
	 password		 		varchar(30) not null,
     building_number 		varchar(30) not null,
     street 				varchar(30) not null,
	 city 					varchar(30) not null,
     state 					varchar(30) not null,
     phone_number 	 		varchar(30) not null,
     passport_number 		varchar(30) not null,
     passport_expiration 	date not null,
     passport_country	 	varchar(30) not null,
     date_of_birth	 		date not null,
	 primary key (email));
    
create table booking_agent
	(email			 		varchar(30) not null,
     booking_agent_id    	varchar(30) not null,
     password		 		varchar(30) not null,
     primary key (email));

create table airline
	(name			 		varchar(30) not null,
    primary key(name));
     
create table airline_staff
	(username			    varchar(30) not null,
	 password		 		varchar(30) not null,
     first_name    			varchar(30) not null,
     last_name    			varchar(30) not null,
     date_of_birth	 		timestamp not null,
     airline_name			varchar(30),
     primary key (username),
     foreign key (airline_name) references airline(name) on delete set null);

create table airplane
	(id			 			varchar(30) not null,
	 seats		 			numeric(30, 0) not null,
     airline_name    		varchar(20),
     primary key (id),
     foreign key (airline_name) references airline(name) on delete set null);
     
create table airport
	(name			 		varchar(30) not null,
	 city		 			varchar(30) not null,
     primary key (name));

create table flight
	(flight_num		 		varchar(30) not null,
     airline_name			varchar(30),
     airplane_id			varchar(30),
     departure_time    		timestamp not null,
     arrival_time    		timestamp not null,
     departure_airport    	varchar(30),
     arrival_airport     	varchar(30),
     price					numeric(30, 2) not null,
     status					varchar(30) not null,
     primary key (flight_num, airline_name),
     foreign key (airline_name) references airline(name) on delete cascade,
     foreign key (airplane_id) references airplane(id) on delete set null,
     foreign key (departure_airport) references airport(name) on delete set null,
     foreign key (arrival_airport) references airport(name) on delete set null);
     
create table ticket
	(ticket_id			    varchar(30) not null,
	 flight_num		 		varchar(30),
     airline_name 			varchar(30),
     primary key (ticket_id),
     foreign key (flight_num) references flight(flight_num) on delete set null,
     foreign key (airline_name) references flight(airline_name) on delete set null);

create table purchase
    (ticket_id 				varchar(30),
     customer_email    		varchar(30),
	 booking_agent_email    varchar(30),
     primary key (ticket_id),
     foreign key (ticket_id) references ticket(ticket_id) on delete cascade,
     foreign key (customer_email) references customer(email) on delete cascade);


