Create database if not exists house_price_regression;
use house_price_regression;

Create Table if not exists house_price_data
(id VARCHAR (20), 
date VARCHAR (20),
bedrooms int,
bathrooms int,
sqft_living int,
sqft_lot int,
floors int,
waterfront int,
view int,
cond int,
grade int,
sqft_above int,
sqft_basement int,
yr_built VARCHAR(20),
yr_renovated VARCHAR(20),
zipcode int,
latitud float,
longitud float,
sqft_living15 int,
sqft_lot15 int,
price int);

select * from house_price_data;

# Use the alter table command to drop the column date from the database, as we would not use it in the analysis with SQL. 
# Select all the data from the table to verify if the command worked. Limit your returned results to 10.

alter table house_price_data drop if exists column grade ; 

# Use sql query to find how many rows of data you have.

select count(*) from house_price_data;

# Now we will try to find the unique values in some of the categorical columns:

# What are the unique values in the column bedrooms?

select count(distinct(bedrooms)) from house_price_data ;

# What are the unique values in the column bathrooms?

select count(distinct(bathrooms)) from house_price_data ;

# What are the unique values in the column floors?

select count(distinct(floors)) from house_price_data ;

# What are the unique values in the column condition?

select count(distinct(cond)) from house_price_data ;

# What are the unique values in the column grade?

select count(distinct(grade)) from house_price_data ;




























# SHOW VARIABLES LIKE 'local_infile'; -- This query would show you the status of the variable ‘local_infile’. If it is off, use the next command, otherwise you should be good to go

-- SET GLOBAL local_infile = 1;





