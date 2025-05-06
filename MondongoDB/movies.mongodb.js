
use('anxobo');

/*
db.movies.insertMany([
    {
      title: "Pride and Prejudice",
      writer: "Jane Austen",
      year: 2005,
      actors: ["Keira Knightley", "Matthew Macfadyen"]
    },
    {
      title: "To Kill a Mockingbird",
      writer: "Harper Lee",
      year: 1962,
      actors: ["Gregory Peck", "Mary Badham"]
    },
    {
      title: "The Great Gatsby",
      writer: "F. Scott Fitzgerald",
      year: 2013,
      actors: ["Leonardo DiCaprio", "Carey Mulligan", "Tobey Maguire"]
    },
    {
      title: "The Fellowship of the Ring",
      writer: "J.R.R. Tolkien",
      year: 2001,
      franchise: "The Lord of the Rings"
    },
    {
      title: "The Two Towers",
      writer: "J.R.R. Tolkien",
      year: 2002,
      franchise: "The Lord of the Rings"
    },
    {
      title: "The Return of the King",
      writer: "J.R.R. Tolkien",
      year: 2003,
      franchise: "The Lord of the Rings",
      synopsis: "The final battle for Middle-earth begins as Frodo and Sam approach Mount Doom to destroy the One Ring."
    },
    {
      title: "Inception"
    },
    {
      title: "Interstellar"
    }
  ]);

//Get all documents
db.getCollection('movies').find()
 
//Get all documents with writer set to "J.R.R. Tolkien"
db.movies.find({writer: "J.R.R. Tolkien"})

//Get all documents where actors include "Brad Pitt"
db.movies.find({actors: "Brad Pitt"})

//Get all documents with franchise set to "The Lord of the Rings"
db.movies.find({franchise: "The Lord of the Rings"})

//Get all movies released in the 90s
db.movies.find({year:{$gt:1990, $lt:2000}})

//Get all movies released before the year 2000 or after 2010
db.movies.find({
    $or: [
      { year: { $lt: 1990 } },
      { year: { $gt: 2010 } }
    ]
  })
*/