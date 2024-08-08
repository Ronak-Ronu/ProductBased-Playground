SQL> select * from employee;

        ID NAME                        DNO                                      
---------- -------------------- ----------                                      
       101 michale                      10                                      
       102 sam                          10                                      
       103 jim                          10                                      
       104 smith                        10                                      
       105 rahul                        10                                      
       106 tony                         20                                      

6 rows selected.

SQL> select * tbl_department;
select * tbl_department
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 
Help: https://docs.oracle.com/error-help/db/ora-00923/ 


SQL> select * from tbl_department;

       DNO DNAME                                                                
---------- --------------------                                                 
        30 IT                                                                   
        10 CSBS                                                                 
        20 SECURITY                                                             

SQL> create view employeedeptview as (select e.id,e.name,d.dno,d.dname from employee e outer join tbl_department d on e.dno=d.dno);
create view employeedeptview as (select e.id,e.name,d.dno,d.dname from employee e outer join tbl_department d on e.dno=d.dno)
                                                                                        *
ERROR at line 1:
ORA-02000: missing APPLY keyword 
Help: https://docs.oracle.com/error-help/db/ora-02000/ 


SQL> create view employeedeptview as (select e.id,e.name,d.dno,d.dname from employee e join tbl_department d on e.dno=d.dno);

View created.

SQL> select * from employeedeptview;

        ID NAME                        DNO DNAME                                
---------- -------------------- ---------- --------------------                 
       101 michale                      10 CSBS                                 
       102 sam                          10 CSBS                                 
       103 jim                          10 CSBS                                 
       104 smith                        10 CSBS                                 
       105 rahul                        10 CSBS                                 
       106 tony                         20 SECURITY                             

6 rows selected.

SQL> create table tbl_department(dno number primary key ,  dname varchar(20));

Table created.

SQL> insert into tbl_department(dno,dname) values (30,'IT');

1 row created.


SQL> create table employee (
  2  id number primary key,
  3  name varchar(20),
  4  dno number ,foreign key(dno) references tbl_department(dno));

Table created.


SQL> desc tbl_department;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DNO                                       NOT NULL NUMBER
 DNAME                                              VARCHAR2(20)

SQL> insert into tbl_department(dno,dname) values (10,'CSBS'),(20,'SECURITY');

2 rows created.

SQL> desc employee;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER
 NAME                                               VARCHAR2(20)
 DNO                                                NUMBER




SQL> select * from employee;

        ID NAME                        DNO
---------- -------------------- ----------
       101 michale                      10
       102 sam                          10
       103 jim                          10
       104 smith                        10
       105 john                         10
       106 tony                         20

6 rows selected.


SQL> select * from employee e join tbl_department d on e.dno=d.dno;

        ID NAME                        DNO        DNO DNAME
---------- -------------------- ---------- ---------- --------------------
       101 michale                      10         10 CSBS
       102 sam                          10         10 CSBS
       103 jim                          10         10 CSBS
       104 smith                        10         10 CSBS
       105 john                         10         10 CSBS
       106 tony                         20         20 SECURITY

6 rows selected.


SQL> select e.id,e.name,d.dno,d.dname from employee e right join tbl_department d on e.dno=d.dno ;

        ID NAME                        DNO DNAME
---------- -------------------- ---------- --------------------
       101 michale                      10 CSBS
       102 sam                          10 CSBS
       103 jim                          10 CSBS
       104 smith                        10 CSBS
       105 john                         10 CSBS
       106 tony                         20 SECURITY
                                        30 IT

7 rows selected.

SQL> create view empdptview as (select e.id,e.name,d.dno,d.dname from employee e join tbl_department
 d on e.dno=d.dno);

View created.

SQL> desc empdptview;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER
 NAME                                               VARCHAR2(20)
 DNO                                       NOT NULL NUMBER
 DNAME                                              VARCHAR2(20)

SQL> select * from empdptview;

        ID NAME                        DNO DNAME
---------- -------------------- ---------- --------------------
       101 michale                      10 CSBS
       102 sam                          10 CSBS
       103 jim                          10 CSBS
       104 smith                        10 CSBS
       105 john                         10 CSBS
       106 tony                         20 SECURITY

6 rows selected.

SQL> update empdptview set name='rahul' where id=105;

1 row updated.

SQL> select * from empdptview;

        ID NAME                        DNO DNAME
---------- -------------------- ---------- --------------------
       101 michale                      10 CSBS
       102 sam                          10 CSBS
       103 jim                          10 CSBS
       104 smith                        10 CSBS
       105 rahul                        10 CSBS
       106 tony                         20 SECURITY

6 rows selected.

SQL> select * from employee;

        ID NAME                        DNO
---------- -------------------- ----------
       101 michale                      10
       102 sam                          10
       103 jim                          10
       104 smith                        10
       105 rahul                        10
       106 tony                         20

6 rows selected.