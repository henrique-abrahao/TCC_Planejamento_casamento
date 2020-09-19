const knex = require('knex');

exports.up = function() {
  return knex.schema.createTable("lista", table => {
    table.increments("id").primary(),
      table.string('name').notNullable(),
      table.integer('numero_convidados').notNullable(),
      table.string('type'),
      table.integer('noivos_id').notNullable().references('id').inTable('cliente')
  }
  )
}

exports.down = function() {
  return knex.schema.dropTable('lista');
}