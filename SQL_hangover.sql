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

select* from house_price_data;

-- UPDATE house_price_data SET date = STR_TO_DATE(date, '%d-%m-%Y')

# SHOW VARIABLES LIKE 'local_infile'; -- This query would show you the status of the variable ‘local_infile’. If it is off, use the next command, otherwise you should be good to go

-- SET GLOBAL local_infile = 1;

#LOAD DATA LOCAL INFILE "C:/Users/Sergi/OneDrive/Documents/GitHub/hangover/regression_data.csv" INTO TABLE house_price_data;

-- LOAD DATA INFILE 'C:\Users\Sergi\OneDrive\Documents\GitHub\hangover\regression_data.csv' 
-- INTO TABLE house_price_data 
-- FIELDS TERMINATED BY ',' 
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- SHOW VARIABLES LIKE "secure_file_priv";



