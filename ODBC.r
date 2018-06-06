
install.packages("RODBC")
library("RODBC")


myconn <-odbcConnect("mydatabase")

#crimedat <- sqlFetch(myconn, "product")

pundat <- sqlQuery(myconn, "select * from product where pid =10")

pundat$pid

close(myconn)



###############################
install.packages("odbc")
library("odbc")

con <- dbConnect(odbc::odbc(), "mydatabase" )

dbListTables(con, schema = "dbo")


pundat <- sqlQuery(con, "select * from product")





