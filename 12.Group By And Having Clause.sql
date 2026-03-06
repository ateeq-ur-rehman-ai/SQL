use startsql;
create table MyCustomers (
    customer_id int primary key,
    customer_name varchar(50)
);

create table MyOrders (
    order_id int primary key,
    customer_id int,
    product varchar(50),
    amount decimal(10,2),
    foreign key (customer_id) references MyCustomers(customer_id)
);

insert into MyCustomers values
(1, 'Ali'),
(2, 'Ahmed'),
(3, 'Sara'),
(4, 'Hina'),
(5, 'Zeeshan');

insert into MyOrders values
(101, 1, 'Laptop', 80000),
(102, 1, 'Mouse', 1500),
(103, 1, 'Keyboard', 3000),

(104, 2, 'Phone', 50000),
(105, 2, 'Charger', 2000),
(106, 2, 'Headphones', 4000),

(107, 3, 'Tablet', 30000),
(108, 3, 'Cover', 1000),
(109, 3, 'Stylus', 2500),

(110, 4, 'Camera', 60000),
(111, 4, 'Tripod', 3500),
(112, 4, 'Bag', 2000),

(113, 5, 'Monitor', 25000),
(114, 5, 'HDMI Cable', 1200),
(115, 5, 'Speakers', 4500);

select customer_id, sum(amount) as total_spent from MyOrders group by customer_id;

select customer_id, max(amount) as max_order from MyOrders group by customer_id;

select customer_id, min(amount) as min_order from MyOrders group by customer_id;

select c.customer_id, c.customer_name, sum(o.amount) as total_spent from MyCustomers c join MyOrders o on c.customer_id = o.customer_id
group by c.customer_id, c.customer_name;

-- Having Clause:


select c.customer_id, c.customer_name, sum(o.amount) as total_spent from MyOrders o join MyCustomers c 
on o.customer_id = c.customer_id group by c.customer_id, c.customer_name having sum(o.amount) > 30000;