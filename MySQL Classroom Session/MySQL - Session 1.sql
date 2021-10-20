-- Step 1: DataBase Creation - Create a Database
create database session1;

-- Step 2: Connection with Database
use session1;

-- Step 3: Table Creation - Creating the table to store data in MySQL
create table customer_table(
	customer_id int not null, 
	customer_name char(50),
    age int
);

-- Step 4: DQL - Data Query Language
select * from customer_table;

-- Step 5: Insert Value into table
insert into customer_table values(
	1, "Monkeee", 23
);
select * from customer_table;

insert into customer_table values(
	2, "MK", 21
);
select age from customer_table;

insert into customer_table values( 3, 'std3', 22);
insert into customer_table values( 4, 'std4', 21);
insert into customer_table values( 5, 'std5', 20);
insert into customer_table values( 6, 'std6', 24);

select * from customer_table;


-- Exercise 1: Create movie table

create table movie_table(
	id int not null primary key auto_increment,
    title text,
    director text,
    year int,
    length_minutes int
);

select * from movie_table;

insert into movie_table values(1, "Toy Story", "John Lasster", 1995, 81);
insert into movie_table values(2, "A Bug's Life", "John Lasster", 1998, 95);
insert into movie_table values(3, "Toy Story 2", "John Lasster", 1999, 93);
insert into movie_table values(4, "Monster, Inc", "Pete Docter", 2001, 92);
insert into movie_table values(5, "Finding Nemo", "Andrew Stanton", 2003, 107);
insert into movie_table values(6, "The Incredibles", "Brad Bird", 2004, 116);
insert into movie_table values(7, "Cars", "John Lasster", 2006, 117);

select * from movie_table;

-- Q1: Find the title of each film
select title from movie_table;

-- Q2: Find the director of each film
select director from movie_table;

--  Q3: Find the title and director of each film
select title, director from movie_table;

--  Q4: Find the title and year of each film
select title, year from movie_table;

--  Q5: Find the all info of each film
select * from movie_table;


-- Exercise 2: 

-- Q1: Find movie with row id 6
select title from movie_table where id = 6;

-- Q2: Find movies released between 2000 and 2010
select title, year from movie_table where year between 2000 and 2010;

-- Q3: Find movies not released between 2000 and 2010
select title, year from movie_table where year not between 2000 and 2010;

-- Q4: Find the first 5 pixar movies and their release year
select id, title, year from movie_table limit 5;


-- Exercise 3: 

-- Q1: Find all the toy story movies
select title from movie_table where title like "%Toy%";

-- Q2: FInd all movies of John Lasster
select title, director from movie_table where director = "John Lasster";

-- Q3: FInd all movies not of John Lasster
select title, director from movie_table where director != "John Lasster";

-- Q4: Find all Monster* movies
select title from movie_table where title like "Monster%"; 
