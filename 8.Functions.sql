-- Aggregate Function: 

use startsql;
select * from users;

select count(*) from users;

select count(*) from users where gender = 'Male';

select count(*) from users where gender = 'Female';

select min(salary) as minimum_salary , max(salary) as maximum_salary from users;

select sum(salary) as total_payment from users;

select avg(salary) as average_salary from users;

select avg(salary) as average_salary from users group by gender;

select gender , min(salary) as minimum_salary from users group by gender;

-- String Functions:

select id , lower(name) as Lower_names from users;

select id , upper(name) as upper_names from users;

select id , lower(name) as Lower_names , concat(name,".ai") as project_id from users;			

select id , gender , lower(name) as lower_names , concat(name,".ai") as project_id , year(date_of_birth) as year_of_birth , length(name) as length_of_names from users;

-- Date Functions:

select  name, year(date_of_birth) as birth_year from users; 

select name, datediff(curdate(), date_of_birth) as days_lived from users;

select name, timestampdiff(year, date_of_birth, curdate()) as age from users;

