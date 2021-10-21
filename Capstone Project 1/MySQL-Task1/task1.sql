-- Database creation and use
create database capstone_project1;
use capstone_project1;

-- import tables
-- card, account

-- error
--
select * from card;
select * from account;
delete from account;

select * from account;

-- load data local infile 'G:/Data Science/Data Science_TopMentor/LMS/batch 55- 17 oct Capstone Projects/account.csv'
    -- -> into table account
    -- -> fields terminated by ','
    -- -> enclosed by '"'
    -- -> lines terminated by '\n'
    -- -> ignore 1 rows;
-- importing account table    
load data local infile 'G:/Data Science/Data Science_TopMentor/LMS/batch 55- 17 oct Capstone Projects/account.csv'
into table account
fields terminated by ';' enclosed by '"' lines terminated by '\n' ignore 1 rows;
select * from account;
select count(*) from account;

-- How to import csv
-- 1. start the process of import if taking time cancel it.
-- 2. Upon canceling the process, the take will still be created. Then delete the content of table using delete from 'table_name'
-- 3. now add OPT_LOCAL_INFILE=1 in connection advance setting
-- 4. After that write above query load data local infile 'G:/Data Science/Data Science_TopMentor/LMS/batch 55- 17 oct Capstone Projects/account.csv'
   -- into table account
   -- fields terminated by ';' enclosed by '"' lines terminated by '\n' ignore 1 rows;
   
-- client table
delete from client;
select * from client;

load data local infile 'G:/Data Science/Data Science_TopMentor/LMS/batch 55- 17 oct Capstone Projects/client.csv'
into table client
fields terminated by ';' enclosed by '"' lines terminated by '\n' ignore 1 rows;

select * from client;
select count(*) from client;

-- importing disp table
delete from disp;
select * from disp;

load data local infile 'G:/Data Science/Data Science_TopMentor/LMS/batch 55- 17 oct Capstone Projects/disp.csv'
into table disp
fields terminated by ';' optionally enclosed by '"' lines terminated by '\n' ignore 1 rows;

select * from disp;
select count(*) from disp;

-- District

