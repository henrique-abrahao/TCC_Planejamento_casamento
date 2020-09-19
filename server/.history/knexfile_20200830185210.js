const path = require('path');


const knex = require('knex')( {
  client: 'sqlite3',
    connection: {
    filename: path.resolve(__dirname, 'src', 'database', 'database.sqlite')
  },
  migrations: {
    directory: path.resolve(__dirname, 'src', 'database', 'migrations')
  },
  seeds: {
    directory: path.resolve(__dirname, 'src', 'database', 'seeds')
  },
  useNullAsDefault: true
});

const db = knex(config[`${process.env.NODE_ENV}`]);
module.exports = knex(config[`${process.env.NODE_ENV}`]);


module.exports = db;