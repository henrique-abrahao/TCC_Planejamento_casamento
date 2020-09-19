const knex = require('knex');

exports.up = function() {
  return knex.schema.createTable("photo", table => {
    table.increments("id").primary(),
    table.string('nome_companhia').notNullable(),
    table.string('descricao');
  })
}

exports.down = function() {
  return knex.schema.dropTable('photo');
}