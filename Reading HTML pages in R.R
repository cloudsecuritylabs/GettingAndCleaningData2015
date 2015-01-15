# How many characters are in the 10th, 20th, 30th and 100th lines of HTML from this page: 
#   
#   http://biostat.jhsph.edu/~jleek/contact.html 

con=url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode=readLines(con)
class(con)
htmlCode

head(htmlCode)
countchar=lapply(htmlCode, function(x) nchar(x))
countchar[c(10,20,30,100)]
