#reading from JSON data in R
library(jsonlite)
#JSON to my user account 
json_data=fromJSON("https://api.github.com/users/hydrogeologist/repos")
names(json_data)
names(json_data$owner)
json_data$owner$login


#Writing data frames into JSON
My_JSON=toJSON(iris, pretty=T)
cat(My_JSON)


iris2=fromJSON(My_JSON)
head(iris2)
