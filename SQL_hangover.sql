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

select count(distinct(bedrooms)) as Number_bedrooms from house_price_data ;

# What are the unique values in the column bathrooms?

select count(distinct(bathrooms)) as Number_bathrooms from house_price_data ;

# What are the unique values in the column floors?

select count(distinct(floors)) as Number_floors from house_price_data ;

# What are the unique values in the column condition?

select count(distinct(cond)) as Number_conditions from house_price_data ;

# What are the unique values in the column grade?

select count(distinct(grade)) as Number_grades from house_price_data ;

# Arrange the data in a decreasing order by the price of the house. 
# Return only the IDs of the top 10 most expensive houses in your data.

select id from house_price_data order by price desc limit 10;

# What is the average price of all the properties in your data?

select avg(price) from house_price_data;

# In this exercise we will use simple group by to check the properties of some of the categorical variables in our data:
	# What is the average price of the houses grouped by bedrooms? The returned result should have only two columns, 
	# bedrooms and Average of the prices. Use an alias to change the name of the second column.

select bedrooms, avg(price) as avg_group_price_bed from house_price_data group by bedrooms;

	# What is the average sqft_living of the houses grouped by bedrooms? The returned result should have only two columns, 
    # bedrooms and Average of the sqft_living. Use an alias to change the name of the second column.

select bedrooms, avg(sqft_living) as avg_group_sqft_living from house_price_data group by bedrooms;

	# What is the average price of the houses with a waterfront and without a waterfront? The returned result should have only 
	# two columns, waterfront and Average of the prices. Use an alias to change the name of the second column.

select waterfront, avg(price) as avg_group_price_wf from house_price_data group by waterfront;

	# Is there any correlation between the columns condition and grade? You can analyse this by grouping the data by one of the 
    # variables and then aggregating the results of the other column. Visually check if there is a positive correlation or 
    # negative correlation or no correlation between the variables.
    
select cond, grade from house_price_data group by cond order by grade, cond; 
select cond, grade from house_price_data group by grade order by cond, grade;

# One of the customers is only interested in the following houses:
	-- 	Number of bedrooms either 3 or 4
    

    
	-- 	Bathrooms more than 3
    
    
    
	-- 	One Floor
    
    
    
	-- 	No waterfront
    
    
    
	-- 	Condition should be 3 at least
    
    
    
	-- 	Grade should be 5 at least
    
    
    
	-- 	Price less than 300000
    
    
    




















# SHOW VARIABLES LIKE 'local_infile'; -- This query would show you the status of the variable ‘local_infile’. If it is off, use the next command, otherwise you should be good to go

-- SET GLOBAL local_infile = 1;





