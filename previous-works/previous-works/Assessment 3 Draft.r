# Draft plots for assessment 3, with all data sets and new data frames created 

# Final data loaded 

library(tidyverse)
library(ggplot2)

# Global Energy Data sets 

read.csv(choose.files())
# continent consumption 
con_consump_TWH <- read.csv(choose.files())
#renewable consumption 
renew_top20 <- read.csv(choose.files())
# Country consumption 
country_consump <- read.csv(choose.files())
# renewable power total 
renew_power_Total <- read.csv(choose.files())
# Non-renewable total 
non_renew_Total <- read.csv(choose.files())

# Australian energy data sets 

library(readxl)

# Energy consumption by industry 


Aus_Indust_con <- read_xlsx(file.choose(),2)
head(Aus_Indust_con)
colnames(Aus_Indust_con)

----------------------------------------------------------------------------------

#rename - Need to add Year, electricty generation and commercial services to code

Aus_Indust_con <- rename(Aus_Indust_con, "Electricty_Generation" = "Electricity generation",
                         "Water_Waste" = `Water and waste b`,
                         "Commercial" = `Commercial and services c`,
                         "Year" = "...1"    ) 


Aus_Indust_con <- (select(Aus_Indust_con,-Total, -`Other d` )) 

# New data frame created 

Aus_Indust_con <- as.data.frame(Aus_Indust_con)

Aus_Indust_con %>%  
select(Aus_Indust_con,Year,Manufacturing,Transport,Residential,Agriculture,
       Electricty_Generation, Mining,Construction,Commerical_Service)

head(Aus_Indust_con)
na.omit(Aus_Indust_con)

typeof(Aus_Indust_con)
sum(is.na(Aus_Indust_con))
str(Aus_Indust_con)
colnames(Aus_Indust_con)

Aus_Indust_con$Mining <- as.integer(Aus_Indust_con$Mining)
Aus_Indust_con$Agriculture <- as.integer(Aus_Indust_con$Agriculture)
Aus_Indust_con$Manufacturing <- as.integer(Aus_Indust_con$Manufacturing)
Aus_Indust_con$Electricty_Generation <- as.integer(Aus_Indust_con$Electricty_Generation)
Aus_Indust_con$Construction <- as.integer(Aus_Indust_con$Construction)
Aus_Indust_con$Transport <- as.integer(Aus_Indust_con$Transport)
Aus_Indust_con$Commercial <- as.integer(Aus_Indust_con$Commercial)
Aus_Indust_con$Residential <- as.integer(Aus_Indust_con$Residential)
Aus_Indust_con$Year <- as.integer(Aus_Indust_con$Year)


Aus_Indust_con %>%  mutate_if(is.numeric, round(. , 2))
Aus_Indust_con$`Water and waste b`


head(Aus_Indust_con)
tibble(Aus_Indust_con)


ggplot(Aus_Indust_con, aes(x = group, y = value)) +
  geom_bar()

Aus_Indust_con$Mining[1:49]
Aus_Indust_con$Agriculture[1:49]
Aus_Indust_con$Manufacturing[1:49]

length(Aus_Indust_con$Mining)
length(Aus_Indust_con$Agriculture)
length(Aus_Indust_con$Manufacturing)

# new data frame - 10years 


"Agriculture","Mining","Manufacturing",



# Energy by fuel type 

Aus_fuel_types <- read_xlsx(file.choose(),2)
head(Aus_fuel_types)
colnames(Aus_fuel_types)


