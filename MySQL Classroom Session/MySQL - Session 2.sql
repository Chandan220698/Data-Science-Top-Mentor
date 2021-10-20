use session1;

select * from movie_table;

-- Exercise 4: 

-- Q1: distinct director in asc order
select distinct director from movie_table order by director asc;

-- Q2: List last 4 pixar release order from recent to least
select title, year from movie_table order by year desc limit 4;

-- Q3: list first 3 pixar movies sorted alphabetically
select title from movie_table order by title asc limit 3;

-- Q4: list next 3 pixar movies sorted alphabetically
select title from movie_table order by title asc limit 3 offset 3;


-- Exercise 6: Inner Join
select * from movie_sales;
select * from movie_table;

-- Q1: Find Domestic and Internation sales for each movie
select title, Domestic_sales, International_sales
from movie_table inner join movie_sales
on movie_table.id = movie_sales.Movie_id;

-- Q2: Show sales numbers for each movie that did better internationally than domestic
select title, Domestic_sales, International_sales
from movie_table inner join movie_sales
on movie_table.id = movie_sales.Movie_id where International_sales > Domestic_sales;

-- Q3: List all the movies by their ratings in descending order
select title, Domestic_sales, International_sales
from movie_table inner join movie_sales
on movie_table.id = movie_sales.Movie_id order by Rating desc;


-- Exercise 7:
select * from employee;
select distinct building from employee;

-- Q2:
select * from building_capacity; 

-- Q3
select distinct Building_name, role from building_capacity left join employee on Building_name = building;


-- Exercise 8 

-- Q1: employee not assigned to building
select name, role from employee where Building is null;

-- Q2: name of building that hold no employee
select distinct Building_name from building_capacity left join employee on Building_name = Building where role is null;


-- Exercise 9: Queries with expression

-- Q1: List all movies and their combined sales in millions of dollars

select title, (Domestic_sales+International_sales)/1000000 as Gross_sale from movie_table join movie_sales
on movie_table.Id = movie_sales.Movie_id;

create table Gross_sale_table
select title, (Domestic_sales+International_sales)/1000000 as Gross_sale from movie_table join movie_sales
on movie_table.Id = movie_sales.Movie_id;

select * from gross_sale_table;


-- Exercise 10: Grouped aggregate functions

-- Q1: Find the longest time an employee has been at the studio
select name, max(Years_employed) as max_year_employed from employee;
-- above statement giving wrong name
select name, max(Years_employed) as max_year_employed from employee group by name order by max_year_employed desc limit 1;


-- Q2: For each role, find the avg number of years
select role, avg(years_employed) as avg_employment from employee group by role;


-- Exercise 11

-- Q1; Number of artist

select role, count(*) as artist_count from employee where role = "Artist";
select * from employee;

-- Q2: number of emp in each role
select role, count(*) from employee group by role;

-- Q3: Total no. of years employed by all engineers
select role, sum(years_employed) as total_years from employee group by role having role = "Engineer";

-- Exercise 14

-- Q1: change director name of movie  A bug's life to "John Cole"
select * from movie_table;
update movie_table set director = "John Cole" where id = 2;
select * from movie_table;

-- Q2
update movie_table set year = 2001 where title = "Toy Story 2";
select * from movie_table;
-- reconnect to server to make the safe update mode off

