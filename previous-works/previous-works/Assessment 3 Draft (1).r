
# using Australian Grocery Product Data set, sourced from,
'https://www.kaggle.com/datasets/thedevastator/grocery-product-prices-for-australian-states?select=Australia_Grocery_2022Sep.csv'

# The data set provides information relating to 2022 grocery products, with the data extracted from Coles, 
# data sourced from kaggle collaborator 'The Devastator', with the original data set created by,
 'https://data.world/xfu022 Dataset originally created by: Jeff.'
 
 # make credit to Jeff 'https://data.world/xfu022'
 
----------------------------------------------------------
# load initial packages for initial data investigation  


pacman::p_load(tidyverse, stringr)
setwd('C:/Users/danie/OneDrive/Documents/09. UoA/DATA_7301_Applications of Data Science/R.Scripts and Data')
 
data <- read.csv('Australia_Grocery_2022Sep.csv')
data <- as_tibble(data)
head(data)
glimpse(data)

colnames(data)

typeof(data$unit_price)

-----------------------------------------------------------------------------
# What is wanting to be answered - how much do product prices vary based off location 
# To build a explanatory or predictive model 
# Is the response variable continuous or discrete
  
colSums(is.na(data))
head(data$Retail_price)

data$unit_price

# Using Price_per_unit as the response, to understand if there any price variablities between states

# classification method -  discrete variable being Price per unit, and Package  price 

# new data frame created 

df <- select(data, state,Product_Group ,Package_price,unit_price)
glimpse(df)

colSums(is.na(df))
        
df$Package_price[is.na(df$Package_price)] <- 0
df$unit_price[is.na(df$unit_price)] <- 0



library(Hmisc)

rcorr(as.matrix(dfx))

# imputing missing values 

df$unit_price[is.na(df$unit_price)] <- 0
df$Package_price[is.na(df$Package_price)] <- 0

str(df)
head(df)

df$unit_price <- as.factor(df$unit_price)
df$Package_price <- as.factor(df$Package_price)
-------------------------------------------
# Do not use 
  
df1 <- scale(df$Package_price)
df2 <- scale(df$unit_price)

df3 <- cbind(df1,df2)
head(df3)
# Do not use 
------------------------------------------------


# Continue from here, understand the error 
df_kmeans <- kmeans(complete_df[,1:2],5,nstart=20) 
colnames(df_kmeans)

xxx <- cbind(df,df_kmeans$cluster)
colnames(xxx) = c('state','Product Group','Unit Price')



complete_df <- df[complete.cases(df),]
sum(sapply(complete_df, is.infinite))




