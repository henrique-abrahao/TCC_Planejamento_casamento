const knex = require('knex');

exports.up = function(knex) {
  return knex.schema.createTable("cliente", table => {
    table.increments("id").primary(),
    table.string('nome_noiva').notNullable(),
    table.string('email_noiva').notNullable(),
    table.string('cpf_noiva').notNullable(),
    table.string('telefone_noiva').notNullable()
    table.string('nome_noivo').notNullable(),
    table.string('email_noivo').notNullable(),
    table.string('cpf_noivo').notNullable(),
    table.string('password').notNullable(),
    table.date('data_casamento').notNullable(),
    table.integer('investimentos'),
    table.integer('number_guest').notNullable(),
    table.integer('cerimonialista_id')
      .notNullable()
      .references('id')
      .inTable('cerimonialista');
  })
}
exports.down = function(knex) {
  return knex.schema.dropTable('cliente');
}