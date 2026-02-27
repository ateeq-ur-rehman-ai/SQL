use startsql;
select name , salary from users;

select * from users where gender='Male';

select * from users where date_of_birth between '1995-10-10'and '2001-10-10';

select * from users where salary >'70000' and gender in ('Male','Female');

select * from users where gender='Male' and salary>'50000';

select * from users where gender='Female' and salary>'50000';

select * from users order by date_of_birth asc;

select * from users order by date_of_birth desc;

select * from users order by date_of_birth desc limit 10;
