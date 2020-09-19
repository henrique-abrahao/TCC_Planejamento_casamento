import Knex from 'knex';

export async function up(knex: Knex) {
  knex.schema.createTable("localidade", table => {
    table.increments("id").primary(),
      table.string('name').notNullable(),
      table.string('cep').notNullable(),
      table.string('street').notNullable(),
      table.string('number').notNullable(),
      table.string('bairro').notNullable(),
      table.string('telefone').notNullable(),
      table.decimal('price', 2).notNullable()
  }
  )
}

export async function down(knex: Knex) {

}