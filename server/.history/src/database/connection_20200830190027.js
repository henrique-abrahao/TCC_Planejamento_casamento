const path = require('path'); 

var knex = require('knex')( {
  client: 'sqlite3',
  connection:{
    filename: path.resolve(__dirname, 'database.sqlite')
  },
})

module.exports = knex;
