use startsql;

create table Customers (
    customer_id int primary key,
    customer_name varchar(50),
    city varchar(50)
);

insert into Customers values
(1, 'Ali', 'Karachi'),
(2, 'Ayesha', 'Lahore'),
(3, 'Bilal', 'Islamabad'),
(4, 'Sara', 'Karachi'),
(5, 'Usman', 'Multan'),
(6, 'Hina', 'Faisalabad'),
(7, 'Zeeshan', 'Rawalpindi'),
(8, 'Maryam', 'Peshawar'),
(9, 'Tariq', 'Quetta'),
(10, 'Amna', 'Hyderabad'),
(11, 'Hamza', 'Sialkot'),
(12, 'Sadia', 'Karachi'),
(13, 'Imran', 'Lahore'),
(14, 'Farah', 'Islamabad'),
(15, 'Shahid', 'Karachi'),
(16, 'Adeel', 'Multan'),
(17, 'Kiran', 'Peshawar'),
(18, 'Adnan', 'Rawalpindi'),
(19, 'Nida', 'Quetta'),
(20, 'Arslan', 'Lahore');

create table Orders (
    order_id int primary key,
    customer_id int,
    product varchar(50)
);

insert into Orders values
(101, 1, 'Laptop'),
(102, 2, 'Mobile'),
(103, 1, 'Tablet'),
(104, 5, 'Headphone'),
(105, 6, 'Keyboard'),
(106, 3, 'Mouse'),
(107, 7, 'Monitor'),
(108, 2, 'Printer'),
(109, 10, 'Speakers'),
(110, 11, 'Smartwatch'),
(111, 12, 'Camera'),
(112, 15, 'Charger'),
(113, 18, 'Power Bank'),
(114, 4, 'LED TV'),
(115, 9, 'Gaming Console'),
(116, 8, 'Router'),
(117, 13, 'SSD Drive'),
(118, 14, 'Hard Disk'),
(119, 20, 'Microphone'),
(120, 21, 'Drone');  

-- Inner Joins:
select c.customer_id, c.customer_name, o.order_id, o.product from Customers c inner join Orders o
on c.customer_id = o.customer_id;

-- Left Joins:
select c.customer_id, c.customer_name, o.order_id, o.product from Customers c left join Orders o
on c.customer_id = o.customer_id;


-- Right Joins:
select c.customer_id, c.customer_name, o.order_id, o.product from  Customers c right join Orders o
on c.customer_id = o.customer_id;

-- Full Joins:
select c.customer_id, c.customer_name, o.order_id, o.product from customers c left join orders o 
on c.customer_id = o.customer_id 
union 
select c.customer_id, c.customer_name, o.order_id, o.product from customers c right join orders o 
on c.customer_id = o.customer_id;


