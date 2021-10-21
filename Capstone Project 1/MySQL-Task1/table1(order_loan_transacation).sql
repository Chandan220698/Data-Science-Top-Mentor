-- Joining the tables: 
-- 1. loan, 2. order_table, 3. transaction_table

-- checking join of loan and order_table
select * from loan
inner join order_table
on loan.account_id = order_table.account_id;


select * from loan
inner join order_table
on loan.account_id = order_table.account_id
inner join transaction_data
on loan.account_id = transaction_data.account_id;
-- Upon joining the 3 tables we are getting 3597 rows

-- removing duplicate columns
select td.trans_id, td.date as trans_date, td.type as trans_type, td.operation as trans_operation, td.amount as trans_amount, td.balance as trans_balance, td.k_symbol as trans_k_symbol, td.bank as trans_bank, td.account as trans_account,
	   ot.order_id, ot.bank_to, ot.account_id, ot.amount as order_amount, ot.k_symbol as order_k_symbol,
       lt.loan_id, lt.date as loan_date, lt.amount as loan_amount, lt.duration as loan_duration, lt.payments as loan_payments, lt.status as loan_status 
       from transaction_data as td
       inner join order_table as ot
       on td.account_id = ot.account_id
       inner join loan as lt
       on td.account_id = lt.account_id;

-- Inserting data in new table
create table table1
select td.trans_id, td.date as trans_date, td.type as trans_type, td.operation as trans_operation, td.amount as trans_amount, td.balance as trans_balance, td.k_symbol as trans_k_symbol, td.bank as trans_bank, td.account as trans_account,
	   ot.order_id, ot.bank_to, ot.account_id, ot.amount as order_amount, ot.k_symbol as order_k_symbol,
       lt.loan_id, lt.date as loan_date, lt.amount as loan_amount, lt.duration as loan_duration, lt.payments as loan_payments, lt.status as loan_status 
       from transaction_data as td
       inner join order_table as ot
       on td.account_id = ot.account_id
       inner join loan as lt
       on td.account_id = lt.account_id;
       
select * from table1;
select count(*) from table1;
-- 3597 entires
-- table1: join of loan, order and transcation_data





-- IGNORE BELOW STATEMENTS



-- Now joining client table and district table

select * from client
inner join district
on client.district_id = district.A1;
-- district_id and A1 is same we can remove A1 from the final excel file

-- creating table for client and district 
create table table_client_district
select * from client
inner join district
on client.district_id = district.A1;

drop table table_client_district;
