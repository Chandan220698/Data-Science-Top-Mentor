-- Joining disp table with
--                   1. card table,	2. client table

select * from disp
inner join client
on disp.client_id = client.client_id
inner join card
on disp.disp_id = card.disp_id;
-- 892 entires

-- removing duplicate rows
select disp.disp_id, disp.client_id, disp.account_id, disp.type,
	   client.birth_number as client_birth_number, client.district_id,
       card.card_id, card.type as card_type, card.issued as card_issued
	   from disp
       inner join client
on disp.client_id = client.client_id
inner join card
on disp.disp_id = card.disp_id;

-- creating table_card_client_disp
create table table_card_client_disp
select disp.disp_id, disp.client_id, disp.account_id, disp.type,
	   client.birth_number as client_birth_number, client.district_id,
       card.card_id, card.type as card_type, card.issued as card_issued
	   from disp
       inner join client
on disp.client_id = client.client_id
inner join card
on disp.disp_id = card.disp_id;

select * from table_card_client_disp;

-- joining table_card_client_disp with account_table and district table via account id and district_id;

select * from account 
inner join table_card_client_disp
on account.account_id = table_card_client_disp.account_id
inner join district
on account.district_id = district.A1 and table_card_client_disp.district_id = district.A1;

-- lets make table2 (join of account, card, disp, district and client)

select acc.account_id, acc.district_id, acc.frequency, acc.date as acc_date,
	   tccd.disp_id, tccd.client_id, tccd.type, tccd.client_birth_number, tccd.card_id, tccd.card_type, tccd.card_issued,
       A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16
       from account as acc
       inner join table_card_client_disp as tccd
	   on acc.account_id = tccd.account_id
	   inner join district
	   on acc.district_id = district.A1 and tccd.district_id = district.A1;
       
create table table2
select acc.account_id, acc.district_id, acc.frequency, acc.date as acc_date,
	   tccd.disp_id, tccd.client_id, tccd.type, tccd.client_birth_number, tccd.card_id, tccd.card_type, tccd.card_issued,
       A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16
       from account as acc
       inner join table_card_client_disp as tccd
	   on acc.account_id = tccd.account_id
	   inner join district
	   on acc.district_id = district.A1 and tccd.district_id = district.A1;
       
select * from table2;
select count(*) from table2;