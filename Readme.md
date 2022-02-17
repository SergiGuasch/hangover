# Case Study: Regression/ Predicting the price of houses

## 1 Importing and understanding the data
## 2. Data Cleaning & Standarization
### 2.1. Checking Null values
Our first step was to try to find the null values. The dataset doesn't have any null values so we don't have to deal with them. However, it is important to think about the reason why these nulls do not exist, since this can introduce some kind of bias in the data. We have to observe if data may have been duplicated to avoid nulls, if random values have been incorporated...

### 2.1. Checking for duplicated Values
Our approach to finding null values was first of all checking the reason why a same id was repeated. Due to the fact that we only had data from 2014 and 2015, probably the only reason why a house may be repeated it's because it was sold two times in this period and, therefore, two different prices (but the independent variables remained the same.) That's why we decided to only keep the last date transaction info since it's the one that recaps better the actual price of that home.

## 3  Pre-processing 
### 3.1  Checking data types
We first thought of flooring the bathrooms to an integer but since it can also take decimals values we decided to leave it as a float. However, we did convert floors into an integer.

### 3.2  Checking data shapes
We first plot all the graphs to try to detect clear outliers. At first sight, most of the numerical columns( sqft_living, sqft_living15, sqft_lot, sqft_lot15, sqft_above, sqft_basement) seem to have some outliers but we'll get deeper into it by plotting also the scatterplot. For the categorical variables such as bedrooms, we'll deal with non-sense outliers such as 33 and 11 bedrooms(not consistent with the rest of the attributes of the house). For the 33 bedrooms house, we'll treat it as a typo and interpret it as 3.

### 3.3  Check useless columns

For checking which columns should we add to our model, we run both the correlation matrix and the scatter_matrix so that we could check for multicollinearity, which were the variables more related to the price... After observing the scatter_matrix, and observing that the sqft_living behaved as a kind of normal distribution we decided to deal with it's outliers by droping the values away from it's mean and 3 std. deviations. For the numeric variables, we introduce to the model sqft_living and sqft_basement. The reason for the first (sqft_living) is that is the variable more correlated with the target and it's very correlated with another numeric variable (sqft_above) that we drop to avoid multicollinearity. Regarding sqft_basement, is not as correlated to sqft_living so we'll live it in the model.

### 3.4 Dealing with the categorical variables

As we commented before, we added a categorical variable(Decade build) that shows wither the date it was build or the date it was renovated. We afterwards group them by decades. We afterwards dummified all our categorical variables. This was one of the main limitations of this model since when dummifying the zipcode we creat a lot of little subsamples, some of them with not many observations which can drive us to error. This problem gets bigger when we drop some outliers that may reduce even more the size of our subsamples.

## 4  Testing the model

### 4.1  Train test split
Once all the engineering and the pre-processing is finished, we, as usual run and test our model

#### 4.2  Linear regression model


