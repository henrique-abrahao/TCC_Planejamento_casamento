const knex = require('knex');

exports.up = function(knex) {
  return knex.schema.createTable("photo", table => {
    table.increments("id").primary(),
    table.string('nome_companha').notNullable(),
    table.string('telefone').notNullable(),
    table.string('descricao');
  })
}

exports.down = function(knex) {
  return knex.schema.dropTable('photo');
}