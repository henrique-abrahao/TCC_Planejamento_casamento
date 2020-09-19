const knex = require('../../../knexfile');

exports.up = function(knex) {
  return knex.schema.createTable("cerimonialista", table => {
    table.increments("id").primary(),
    table.string('name').notNullable(),
    table.string('email').notNullable(),
    table.string('password').notNullable(),
    table.string('telefone').notNullable()
  })
}

exports.down = function(kenx) {
  return knex.schema.dropTable('cerimonialista');
}