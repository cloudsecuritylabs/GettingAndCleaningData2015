# Register an application with the Github API here 
# https://github.com/settings/applications. 
# Access the API to get information on your instructors repositories 
# (hint: this is the url you want "https://api.github.com/users/jtleek/repos"). 
# Use this data to find the time that the datasharing repo was created.
# What time was it created? 
# This tutorial may be useful 
# (https://github.com/hadley/httr/blob/master/demo/oauth2-github.r). 
# You may also need to run the code in the base R package and not R studio.


myapp <- oauth_app("github","5df5136f2b3492674363", "d1bd821b1a2f1f0e3462e91df2c9235442d76a74")
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
gtoken <- config(token = github_token)


homeTL=GET("https://api.github.com/users/jtleek/repos", gtoken)

json1=content(homeTL)
require(rjson)
json2=jsonlite::fromJSON(toJSON(json1))
head(json2)

str(json2)
names(json2)
json2$created_at
json2$name

get=json2[json2$name=="datasharing",]
get[,45] # get the answer!!!

