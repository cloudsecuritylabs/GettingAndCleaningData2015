# Read this data set into R and report the sum of the numbers in the fourth of the nine columns. 
# 
# https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for 
# 
# Original source of the data: http://www.cpc.ncep.noaa.gov/data/indices/wksst8110.for 
# 
# (Hint this is a fixed width file format)

require(data.table)
require(ff)
d=read.fortran("getdata-wksst8110.for", format="123456") 
library(read.fwf)
head(d)

data <- read.csv("getdata-wksst8110.for", header=T)
data
head(data)
dim(data)
ncol(data)
names(data)

file_name="getdata-wksst8110.for"
df <- read.fwf(file=file_name,widths=c(-1,9,-5,4,4,-5,4,4,-5,4,4,-5,4,4), skip=4)
head(df)
head(df)
sum(df[, 4])
# 32426.7
