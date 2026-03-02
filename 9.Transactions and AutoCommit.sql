use startsql;
set autocommit=0;
select * from users;
-- rollback;
delete from users where id=7;
 

select * from users;
