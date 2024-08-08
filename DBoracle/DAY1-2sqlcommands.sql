-- insert into tbl_author values(1,"Michale",5,"america",4);
-- insert into tbl_author values(2,"hangook",6,"korea",5);
-- insert into tbl_author values(3,"tagore",6,"india",6);
-- insert into tbl_author values(4,"hangook",6,"korea",5);
-- insert into tbl_author values(5,"michale",3,"america",6);
-- insert into tbl_author values(6,"jim",3,"america",3);
-- select * from tbl_author;
-- select aname,address,likeness from tbl_author;
-- select distinct aname,address,likeness from tbl_author;
-- select  * from tbl_author where address="india";
-- select *  from tbl_author order by aname ;
-- select * from tbl_author where address!="america";

 update tbl_author set likeness=10 where aname="tagore";
-- commit;
-- delete from tbl_author where address="america";
-- SET SQL_SAFE_UPDATES = 0;

select * from tbl_author;
-- sql relational operators                                              
-- in,not in , between and , is null, is not null , like, not like ,     

-- select * from tbl_author where likeness in (1,2,3,4,5,6);
-- select * from tbl_author where likeness not in (1,2,3,4,5,6);
-- select * from tbl_author where likeness between 1 and 6;

