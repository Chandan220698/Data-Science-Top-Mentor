-- Master Table
-- join of all tables Table1(order, loan, Transcation) and Table2(account, card, disp, client, district)

select * from table1 join table2
on table1.account_id = table2.account_id;

