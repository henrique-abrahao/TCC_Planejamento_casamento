import Knex from 'knex';

export async function up(knex: Knex){
  return knex.schema.createTable("cerimonialista", table => {
    table.increments("id").primary(),
    table.string('name').notNullable(),
    table.string('email').notNullable(),
    table.string('password').notNullable(),
    table.string('telefone').notNullable()
  })
}

export async function down(knex: Knex){
  return knex.schema.dropTable('cerimonialista');
}