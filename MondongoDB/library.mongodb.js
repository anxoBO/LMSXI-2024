/* global use, db */
// MongoDB Playground
// To disable this template go to Settings | MongoDB | Use Default Template For Playground.
// Make sure you are connected to enable completions and to be able to run a playground.
// Use Ctrl+Space inside a snippet or a string literal to trigger completions.
// The result of the last command run in a playground is shown on the results panel.
// By default the first 20 documents will be returned with a cursor.
// Use 'console.log()' to print to the debug output.
// For more documentation on playgrounds please refer to
// https://www.mongodb.com/docs/mongodb-vscode/playgrounds/

// Select the database to use.
use('anxobo');
/*
// Insert a few documents into the sales collection.
db.getCollection('library').insertMany([
        {
          "title": "TCP/IP Illustrated",
          "author": {
            "surname": "Stevens",
            "name": "W."
          },
          "publisher": "Addison-Wesley",
          "price": 65.95
        },
        {
          "title": "Advan Programming for Unix environment",
          "author": {
            "surname": "Stevens",
            "name": "W."
          },
          "publisher": "Addison-Wesley",
          "price": 65.95
        },
        {
          "title": "Data on the Web",
          "author": [
            {
              "surname": "Abiteboul",
              "name": "Serge"
            },
            {
              "surname": "Buneman",
              "name": "Peter"
            },
            {
              "surname": "Suciu",
              "name": "Dan"
            }
          ],
          "publisher": "Morgan Kaufmann publishers",
          "price": 39.95
        },
        {
          "title": "Economics of Technology for Digital TV",
          "editor": {
            "surname": "Gerbarg",
            "name": "Darcy",
            "membership": "CITI"
          },
          "publisher": "Kluwer Academic publishers",
          "price": 129.95
        }
      ]
);

// Query the library collection to find all books by author "Stevens".
  db.library.find(
    { "author.surname": "Stevens" },
    { "title": 1, _id: 0 }
  )

//Search the books whose price is greater than 20 euros.
  db.library.find(
    { "price": { $gt: 20 } },
    { "title": 1, "price": 1, _id: 0 }
  )

//Search the books whose title contains the word Web.
db.library.find({"title": /Web/})

//Search the books whose title contains the word Web or the word TV.
db.library.find({"title":{$regex: /Web|TV/}})

//Search the books whose title contains the word Web or the word TV (case insensitive)
db.library.find({"title":{$regex: /Web|TV/i}})

//Search the books whose title length is greater than 20 characters
db.library.find({"title":{$regex: /.{20,}/}})
*/
//Search the books whose price is 39.95, 65.95 or 80.95
db.library.find({"price":{$in: [39.95, 65.95, 80.95]}})
