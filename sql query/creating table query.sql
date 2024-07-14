create database Pizzahut;

create table Orders(
Order_id int not null,
order_date date not  null,
order_time time not null,
primary key(order_id));

create table Order_details(
order_details_id int not null,
Order_id int not null,
pizza_id text not null,
quantity int not null,
primary key(order_details_id));