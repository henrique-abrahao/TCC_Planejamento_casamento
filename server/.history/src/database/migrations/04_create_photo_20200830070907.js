const knex = require('knex');

export async function up(){
  return knex.schema.createTable("photo", table => {
    table.increments("id").primary(),
    table.string('nome_companhia').notNullable(),
    table.string('descricao');
  })
}

export async function down(){
  return knex.schema.dropTable('photo');
}