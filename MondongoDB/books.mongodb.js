// Select the database to use.
use('anxobo');
/*
// Insert a few documents into the sales collection.
db.getCollection('books').insertMany(    [
    {
      "title": "Everyday Italian",
      "author": "Giada De Laurentiis",
      "year": 2005,
      "price": 30
    },
    {
      "title": "Harry Potter",
      "author": "J K. Rowling",
      "year": 2005,
      "price": 29.99
    },
    {
      "title": "XQuery Kick Start",
      "author": [
        "James McGovern",
        "Per Bothner",
        "Kurt Cagle",
        "James Linn",
        "Vaidyanathan Nagarajan"
      ],
      "year": 2003,
      "price": 49.99
    },
    {
      "title": "Learning XML",
      "author": "Erik T. Ray",
      "year": 2003,
      "price": 39.95
    }
  ]
)
db.getCollection('books').find({},{"title":1,"_id":0}).pretty();
db.getCollection('books').find({"price":{"$lt": 30}},{"title":1,"price":1,"_id":0}).pretty();
db.getCollection('books').find({"price":{"$gt":30}},{"title":1,"price":1,"_id":0}).sort({"title":1});*/
db.getCollection('books').find({"year": {"$gt": 2003}},{"year": {"$lt": 2004}},{"title":1, "price":1, "year":1, "_id":0}).pretty();