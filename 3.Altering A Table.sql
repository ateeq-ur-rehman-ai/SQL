use createtable;

-- this is how we can comment any thing in sql "--" 

alter table coders add column salary int default true;
select * from coders;

alter table coders drop column salary;
select * from coders;

alter table coders modify column name varchar(150);

alter table coders modify column email varchar(150) first;
select * from coders;

alter table coders modify column gender enum('Male', 'Female', 'Other') after name;
select * from coders;

alter table coders modify column date_of_birth date after id;
select * from coders;








