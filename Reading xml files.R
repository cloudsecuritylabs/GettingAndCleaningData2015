library(XML)
file_url="http://www.w3schools.com/xml/simple.xml"
document=xmlTreeParse(file_url,useInternal=T)
root_node=xmlRoot(document)
xmlName(root_node)
names(root_node)
root_node[[1]]
root_node[[1]][[1]]

Extract=xmlSApply(root_node, xmlValue)
Extract



xpathSApply(root_node, "//name", xmlValue)
xpathSApply(root_node, "//price", xmlValue)


################   More Examples   ##############################

file_url="http://www.w3schools.com/xml/simple.xml"
document=htmlTreeParse(file_url, useInternal=T)
name=xpathSApply(document, "//name", xmlValue)
name
