SQL> create table agents(agent_code varchar(10),agent_name varchar(10),working_area varchar(20));

Table created.

SQL> insert into agents(agent_code,agent_name,working_area) values('A101','agent41','chennai'),('A102','agent42','chennai');

2 rows created.

SQL> insert into agents(agent_code,agent_name,working_area) values('A103','agent43','Bangalore'),('A104','agent44','Bangalore');

2 rows created.



SQL> create table customers(customer_code varchar(10),customer_name varchar(20),customer_area varchar(20));

Table created.

SQL> insert into customers(customer_code,customer_name,customer_area) values ('C101','customer1','chennai'),
  2  ('C102','customer2','chennai'),
  3  ('C103','customer3','chennai'),
  4  ('C104','customer4','Bangalore'),
  5  ('C105','customer5','Bangalore'),
  6  ;

5 rows created.

SQL> select * from customers;

CUSTOMER_C CUSTOMER_NAME        CUSTOMER_AREA
---------- -------------------- --------------------
C101       customer1            chennai
C102       customer2            chennai
C103       customer3            chennai
C104       customer4            Bangalore
C105       customer5            Bangalore

SQL> select * from agents;

AGENT_CODE AGENT_NAME WORKING_AREA
---------- ---------- --------------------
A101       agent41    chennai
A102       agent42    chennai
A103       agent43    Bangalore
A104       agent44    Bangalore

SQL> select * from customer
  2  join
  3  agents where customer.customer_area=agents.working_area;
agents where customer.customer_area=agents.working_area
       *
ERROR at line 3:
ORA-02000: missing ON or USING keyword
Help: https://docs.oracle.com/error-help/db/ora-02000/



SQL> desc customers;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CUSTOMER_CODE                                      VARCHAR2(10)
 CUSTOMER_NAME                                      VARCHAR2(20)
 CUSTOMER_AREA                                      VARCHAR2(20)

SQL> desc agents;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 AGENT_CODE                                         VARCHAR2(10)
 AGENT_NAME                                         VARCHAR2(10)
 WORKING_AREA                                       VARCHAR2(20)




SQL> create view customeragentjoin as
  2  select a.agent_name,a.agent_code,c.customer_name,c.customer_code from customers c
  3  join
  4  agents a
  5  on c.customer_area=a.working_area;

View created.


SQL> select * from customeragentjoin;

AGENT_NAME AGENT_CODE CUSTOMER_NAME        CUSTOMER_C
---------- ---------- -------------------- ----------
agent41    A101       customer1            C101
agent42    A102       customer1            C101
agent41    A101       customer2            C102
agent42    A102       customer2            C102
agent41    A101       customer3            C103
agent42    A102       customer3            C103
agent43    A103       customer4            C104
agent44    A104       customer4            C104
agent43    A103       customer5            C105
agent44    A104       customer5            C105

10 rows selected.

SQL> select * from customers;

CUSTOMER_C CUSTOMER_NAME        CUSTOMER_AREA
---------- -------------------- --------------------
C101       customer1            chennai
C102       customer2            chennai
C103       customer3            chennai
C104       customer4            Bangalore
C105       customer5            Bangalore

SQL> select * from agents;

AGENT_CODE AGENT_NAME WORKING_AREA
---------- ---------- --------------------
A101       agent41    chennai
A102       agent42    chennai
A103       agent43    Bangalore
A104       agent44    Bangalore

SQL> commit;

Commit complete.

SQL> select a.agent_name,b.agent_name from agents a,agents b where a.working_area=b.working_area;

AGENT_NAME AGENT_NAME
---------- ----------
agent41    agent41
agent42    agent41
agent41    agent42
agent42    agent42
agent43    agent43
agent44    agent43
agent43    agent44
agent44    agent44
agent25    agent25

9 rows selected.

SQL> select a.agent_code,b.agent_code,a.agent_name,b.agent_name from agents a,agent
s b where a.working_area=b.working_area;

AGENT_CODE AGENT_CODE AGENT_NAME AGENT_NAME
---------- ---------- ---------- ----------
A101       A101       agent41    agent41
A102       A101       agent42    agent41
A101       A102       agent41    agent42
A102       A102       agent42    agent42
A103       A103       agent43    agent43
A104       A103       agent44    agent43
A103       A104       agent43    agent44
A104       A104       agent44    agent44
A105       A105       agent25    agent25

9 rows selected.

SQL> select a.agent_code,b.agent_code,a.agent_name,b.agent_name from agents a,agents b where a.working_area=b.working_area order by a.agent_code;

AGENT_CODE AGENT_CODE AGENT_NAME AGENT_NAME
---------- ---------- ---------- ----------
A101       A101       agent41    agent41
A101       A102       agent41    agent42
A102       A101       agent42    agent41
A102       A102       agent42    agent42
A103       A103       agent43    agent43
A103       A104       agent43    agent44
A104       A104       agent44    agent44
A104       A103       agent44    agent43
A105       A105       agent25    agent25

9 rows selected.

SQL> create view crossjointable as
  2  select a.agent_code,c.customer_code,a.agent_name,c.customer_name from customers c
  3  cross join agents a;

View created.

SQL> select * from crossjointable;

AGENT_CODE CUSTOMER_C AGENT_NAME CUSTOMER_NAME
---------- ---------- ---------- --------------------
A101       C101       agent41    customer1
A101       C102       agent41    customer2
A101       C103       agent41    customer3
A101       C104       agent41    customer4
A101       C105       agent41    customer5
A101       C106       agent41    customer6
A102       C101       agent42    customer1
A102       C102       agent42    customer2
A102       C103       agent42    customer3
A102       C104       agent42    customer4
A102       C105       agent42    customer5

AGENT_CODE CUSTOMER_C AGENT_NAME CUSTOMER_NAME
---------- ---------- ---------- --------------------
A102       C106       agent42    customer6
A103       C101       agent43    customer1
A103       C102       agent43    customer2
A103       C103       agent43    customer3
A103       C104       agent43    customer4
A103       C105       agent43    customer5
A103       C106       agent43    customer6
A104       C101       agent44    customer1
A104       C102       agent44    customer2
A104       C103       agent44    customer3
A104       C104       agent44    customer4

AGENT_CODE CUSTOMER_C AGENT_NAME CUSTOMER_NAME
---------- ---------- ---------- --------------------
A104       C105       agent44    customer5
A104       C106       agent44    customer6
A105       C101       agent25    customer1
A105       C102       agent25    customer2
A105       C103       agent25    customer3
A105       C104       agent25    customer4
A105       C105       agent25    customer5
A105       C106       agent25    customer6

30 rows selected.

SQL> select * from agents;

AGENT_CODE AGENT_NAME WORKING_AREA
---------- ---------- --------------------
A101       agent41    chennai
A102       agent42    chennai
A103       agent43    Bangalore
A104       agent44    Bangalore
A105       agent25    New York

SQL> select * from customers;

CUSTOMER_C CUSTOMER_NAME        CUSTOMER_AREA
---------- -------------------- --------------------
C101       customer1            chennai
C102       customer2            chennai
C103       customer3            chennai
C104       customer4            Bangalore
C105       customer5            Bangalore
C106       customer6            Delhi

6 rows selected.

SQL> select * from naturaljointable as
  2  select a.agent_code,c.customer_code,a.agent_name,c.customer_name from customers c
  3  natural join
  4  agents a;
select * from naturaljointable as
                               *
ERROR at line 1:
ORA-03048: SQL reserved word 'AS' is not syntactically valid following '...*
from naturaljointable '
Help: https://docs.oracle.com/error-help/db/ora-03048/


SQL> create view naturaljointable as
  2  select a.agent_code,c.customer_code,a.agent_name,c.customer_name from customers c
  3  natural join
  4  agents a;

View created.

SQL> select * from naturaljointable;

AGENT_CODE CUSTOMER_C AGENT_NAME CUSTOMER_NAME
---------- ---------- ---------- --------------------
A101       C101       agent41    customer1
A101       C102       agent41    customer2
A101       C103       agent41    customer3
.
.
.



SQL> select * from customers where customer_area=(select working_area from agents where agent_code='A101');

CUSTOMER_C CUSTOMER_NAME        CUSTOMER_AREA
---------- -------------------- --------------------
C101       customer1            chennai
C102       customer2            chennai
C103       customer3            chennai




SQL> select * from customers where customer_area IN (select working_area from agents where agent_code
='A101' or agent_code='A104');

CUSTOMER_C CUSTOMER_NAME        CUSTOMER_AREA
---------- -------------------- --------------------
C101       customer1            chennai
C102       customer2            chennai
C103       customer3            chennai
C104       customer4            Bangalore
C105       customer5            Bangalore
