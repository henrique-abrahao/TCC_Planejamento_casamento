const knex = require('knex');

export async function up(){
  return knex.schema.createTable("cerimonialista", table => {
    table.increments("id").primary(),
    table.string('name').notNullable(),
    table.string('email').notNullable(),
    table.string('password').notNullable(),
    table.string('telefone').notNullable()
  })
}

export async function down(){
  return knex.schema.dropTable('cerimonialista');
}