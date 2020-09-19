const knex = require('knex');

exports.up = function() {
  return knex.schema.createTable("localidade", table => {
    table.increments("id").primary(),
      table.string('name').notNullable(),
      table.string('cep').notNullable(),
      table.string('street').notNullable(),
      table.string('number').notNullable(),
      table.string('bairro').notNullable(),
      table.string('complemento'),
      table.string('telefone').notNullable(),
      table.decimal('price', 2).notNullable(),
      table.string('type').notNullable()
  }
  )
}
exports.down = function() {
  return knex.schema.dropTable('localidade');
}