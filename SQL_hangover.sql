Create database if not exists house_price_regression;
use house_price_regression;

Create Table if not exists house_price_data
(id int, 
date datetime,
bedrooms int,
bathrooms float,
sqft_living int,
sqft_lot int,
floors float,
waterfront int,
view int,
cond int,
grade int,
sqft_above int,
sqft_basement int,
yr_built int,
yr_renovated int,
zipcode int,
latitud float,
longitud float,
sqft_living15 int,
sqft_lot15 int,
price int);

LOAD DATA INFILE 'c:/tmp/discounts.csv' 
INTO TABLE discounts 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SHOW VARIABLES LIKE 'local_infile'; -- This query would show you the status of the variable ‘local_infile’. If it is off, use the next command, otherwise you should be good to go

SET GLOBAL local_infile = 1;