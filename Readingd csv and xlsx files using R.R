# Creating directory using R command

if(!file.exists("camdata")){
  dir.create("camdata")
}

# Download data online using R
fileurl<-"https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileurl, destfile="./camdata/cameras.csv", method="curl")
list.files(".camdata")

##Accessing local files

#the following code will resulat an error
#CamData=read.table("./data/Baltimore_Fixed_Speed_Cameras.csv")

CamData=read.table("./data/Baltimore_Fixed_Speed_Cameras.csv", sep=",", header=T)
head(CamData)

CAMDATA.read.csv=read.csv("./data/Baltimore_Fixed_Speed_Cameras.csv", sep=",", header=T)

library(xlsx)
camdata.from.excel=read.xlsx("./data/Baltimore_Fixed_Speed_Cameras.xlsx", sheetIndex=1, header=T)
head(camdata.from.excel)

#Reading specific rows and columns
columnIndex=1:4
rowIndex=1:8
camdata.from.excel.subset=read.xlsx("./data/Baltimore_Fixed_Speed_Cameras.xlsx", sheetIndex=1, colIndex=columnIndex, rowIndex=rowIndex)
