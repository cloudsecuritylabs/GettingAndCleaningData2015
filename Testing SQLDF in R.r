# The sqldf package allows for execution of SQL commands on R data frames. We will use the sqldf package to practice the queries we might send with the dbSendQuery command in RMySQL. Download the American Community Survey data and load it into an R object called
# acs
# 
# 
# https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv 
#Which of the following commands will select only the data for the probability weights pwgtp1 with ages less than 50?

url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv "
library(data.table)
acs=fread("getdata-data-ss06pid.csv")

require(sqldf)
head(acs)
test=(acs[acs$AGEP<50])
str(test)
head(acs$pwgtp1)

u=unique(acs$AGEP)
u

test2=sqldf("select pwgtp1 from acs where AGEP < 50")
str(test2)

u2=sqldf("select distinct AGEP from acs")
u2
