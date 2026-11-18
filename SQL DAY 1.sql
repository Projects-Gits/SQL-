--The Case of ITC--
---Create the datatable for disributors to supply products across differen cities and regions
CREATE TABLE distributors (
distributor_id Integer PRIMARY key,
name      Text not NULL,
city      Text,
region    Text,
Phone     Text);

Drop table distributors;
--Question- create a able name products with column,product_id integer unique,product_name text not null unique,brand text not null,category text not null,price real value >0,stock whole number,if missing then 0
Create table product (
product_id  integer PRIMARY key, 
product_name text not null UNIQUE,
brand text,
category text not NULL,
price real CHECK (price > 0),
stock Integer DEFAULT 0)
--Question 2-- create a table name sales containing sales_id unique,product_id integer,distributor_id,sale date,quantity integer>0,amount real
Create table sales (
sale_id integer PRIMARY KEY,
product_id integer,
distributor_id integer,
sale_date Text,
quantity integer CHECK (quantity > 0),
amount real,
FOREIGN key (product_id) REFERENCES products(product_id),
FOREIGN KEY (distributor_id) REFERENCES distributors(distributor_id)
);
-- checking the columns of all the 3 tables --
PRAGMA table_info (distributors);
PRAGMA table_info (products);
PRAGMA table_info (sales);

--interting the data according to variables--
insert into products values (1,'Aashirvaad Atta 5kg', 'Aashirvaad', 'staples',265,12);
insert into products values (1,'Aashirvaad salt', 'Aashirvaad', 'staples',28,300);
insert into products values (1,'Sunfeast dark fantasy', 'Sunfeast', 'Biscuits',40,500);
insert into products values (1,'Sunfeast Marie Light', 'Sunfeast', 'Biscuits',30,450);

