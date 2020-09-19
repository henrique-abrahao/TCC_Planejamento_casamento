import Knex from 'knex';

export async function up(knex: Knex) {
  knex.schema.createTable("localidade", table => {
    table.increments("id").primary(),
      table.string('name').notNullable(),
      table.integer('numero_convidados').notNullable(),
      table.string('type'),
      table.integer('noivos_id').notNullable().references('id').inTable('cliente')
  }
  )
}

export async function down(knex: Knex) {
  knex.schema.dropTable('localidade');
}