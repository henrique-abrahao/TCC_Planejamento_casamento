import Knex from 'knex';

export async function up(knex: Knex) {
  return knex.schema.createTable("images", table => {
    table.increments("id").primary(),
      table.string('name_image'),
      table.float('size'),
      table.string('key'),
      table.string('url'),
      table.integer('local_id')
        .references('id')
        .inTable('localidade'),
      table.integer('photo_id')
        .references('id')
        .inTable('photo');
  })
}

export async function down(knex: Knex) {
  return knex.schema.dropTable('images');
}