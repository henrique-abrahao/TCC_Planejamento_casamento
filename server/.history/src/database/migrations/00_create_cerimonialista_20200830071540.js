const knex = require('knex');

exports.up = function(knex, Promise) {
  return knex.schema.createTable("cerimonialista", table => {
    table.increments("id").primary(),
    table.string('name').notNullable(),
    table.string('email').notNullable(),
    table.string('password').notNullable(),
    table.string('telefone').notNullable()
  })
}

export function down(){
  return knex.schema.dropTable('cerimonialista');
}