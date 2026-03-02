use startsql;
select * from users;

update users set salary = '55000' where id = 4;
select * from users;

update users set email = 'karan@kn.com' where id = 14;
select * from users;

update users set name ='Raaj' , email = 'raaj@raaj.com' , salary='90000', date_of_birth='1990-08-24' where id = 1;
select * from users;

update users set salary=salary+ 50000 where salary<50000;
select * from users;
