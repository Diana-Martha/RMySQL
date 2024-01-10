#load necessary files
library(DBI)
library(RMySQL)

#define id,password,host and database name created during database installation in MySQL
USER<-'root'
PASSWORD<-'....'
HOST<-'localhost'
DBNAME<-'world'


db<-dbConnect(MySQL(),user=USER,password=PASSWORD,host=HOST,dbname=DBNAME,port=3306)
result<-dbGetQuery(db,statement="select * from world.telco_customers")
dbDisconnect(db)
head(result)
