-- create table CLIENT_MASTER(
-- 	Client_No varchar(20),
--     Name varchar(50),
--     City varchar(50),
--     Pincode integer,
--     Bal_due integer
-- );

--  desc CLIENT_MASTER;

insert into CLIENT_MASTER values ("C00001", "SMITHA JAIN","Mumbai",400054 ,15000);
insert into CLIENT_MASTER values ("C00002", "VANDANA  RAO", "Chennai", 780001 ,0);
insert into CLIENT_MASTER values ("C00003","PREM PUJARI", "Mumbai", 400057 ,5000);
insert into CLIENT_MASTER values ("C00004" ,"BASU NATH", "Mumbai" ,400056 ,0);
insert into CLIENT_MASTER values ("C00005","RAVI SHANKAR", "Delhi", 100001 ,2000);
insert into CLIENT_MASTER values ("C00006 ","ROOPA","Mumbai", 400050 ,0);
SELECT * FROM CLIENT_MASTER;


-- CREATE TABLE SALE_ORDER(
-- 	Order_No varchar(20),
--     Order_Date date,
--     Client_No varchar(20),
--     Salesman_No varchar(20),
--     Dely_Date date,
--     Order_Status varchar(30)
-- );
-- desc SALE_ORDER;

insert into SALE_ORDER values (
	"O19008",
    str_to_date('24-May-13','%d-%b-%y'),
    "C00005",
    "S00004",
    str_to_date('26-May-13','%d-%b-%y'),
    "In process"
);
                    
select * from SALE_ORDER;

select * from CLIENT_MASTER where Bal_due=0;
     select * from CLIENT_MASTER;
     
     SET SQL_SAFE_UPDATES = 0;
update CLIENT_MASTER set City="jaipur" where Client_No="C00004";

select * from CLIENT_MASTER where City="Mumbai";

SELECT  distinct Name,City from CLIENT_MASTER  join SALE_ORDER where Order_No in ("O19003","O19002");

select distinct Name,City,Pincode from CLIENT_MASTER JOIN SALE_ORDER where Order_status="In process";