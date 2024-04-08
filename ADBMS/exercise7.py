import pymongo
myclient=pymongo.MongoClient("mongodb://localhost:27017/")
db=myclient["college"]
col=db["studlist"]
myquery= {"gender": {"$eq": "female" },"course": { "$eq": "MCA"} }
mydoc=col.find(myquery,{"name":1,"mark":1, "_id":0})
for x in mydoc:
    print(x)