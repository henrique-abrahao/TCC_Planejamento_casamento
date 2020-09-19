import Knex from 'knex';

export async function up(knex: Knex){
  return knex.schema.createTable("photo", table => {
    table.increments("id").primary(),
    table.string('nome_companhia').notNullable(),
    table.string('descricao');
  })
}

export async function down(knex: Knex){
  return knex.schema.dropTable('photo');
}