import Knex from 'knex';

export async function up(knex: Knex){
  return knex.schema.createTable("cliente", table => {
    table.increments("id").primary(),
    table.string('nome_noiva').notNullable(),
    table.string('email_noiva').notNullable(),
    table.string('cpf_noiva').notNullable(),
    table.string('telefone_noiva').notNullable()
    table.string('nome_noivo').notNullable(),
    table.string('email_noivo').notNullable(),
    table.string('cpf_noiva').notNullable(),
    table.string('password').notNullable(),
    table.integer('cerimonialista_id')
      .notNullable()
      .references('id')
      .inTable('cerimonialista');
  })
}

export async function down(knex: Knex){
  knex.schema.dropTable('cliente');
}