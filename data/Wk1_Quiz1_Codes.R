
WK1DT=read.table("getdata-data-ss06hid.csv", sep=",", header=T)
VALVECTOR=WK1DT$VAL
names(VALVECTOR)
head(VALVECTOR)
table(VALVECTOR)




library(xlsx)
DT=read.xlsx("getdata-data-DATA.gov_NGAP.xlsx", sheetIndex=1, header=T)
head(DT)
colIndex=7:15
rowIndex=18:23
dat=read.xlsx("getdata-data-DATA.gov_NGAP.xlsx", sheetIndex=1, colIndex=colIndex, rowIndex=rowIndex)

sum(dat$Zip*dat$Ext,na.rm=T) 



library(XML)
library(RCurl)
file_url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
xData <- getURL(file_url, ssl.verifyPeer=FALSE)
document=xmlTreeParse(xData,useInternal=T)
root_node=xmlRoot(document)

names(root_node)
root_node[[1]]
root_node[[1]][[1]]
V=xpathSApply(root_node, "//zipcode", xmlValue)
head(V)
V2=V[V=="21231"]
str(V2)
summary(V2)

DT=read.table("getdata-data-ss06pid.csv", sep=",", header=T)
mean(DT$pwgtp15,by=DT$SEX)
system.time(mean(DT$pwgtp15,by=DT$SEX))
rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2]
sapply(split(DT$pwgtp15,DT$SEX),mean)
mean(sapply)

