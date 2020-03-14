###R access###
#library for mapping R to mongodb
library(mongolite)

#access to its own database
srv  = "mongo.stu.tm.uicds.xyz"
port = 27017
username="nicolas"
password="UICdsnicolas"
authentification_source= "nicolas"

URI = sprintf("mongodb://%s:%s@%s:%s/%s", username, password, srv, port, authentification_source)
mongoaccess <- mongo(url= URI )


#access to another database and collection (you have to know both information)
srv  = "mongo.stu.tm.uicds.xyz"
port = 27017
username="platform"
password="platform"
authentification_source= "admin"  #default database

URI = sprintf("mongodb://%s:%s@%s:%s/%s", username, password, srv, port, authentification_source)
mongoaccess <- mongo(db="group17", collection="taoism", url= URI )
mongoaccess$count()
