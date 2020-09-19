const knex = require('knex');

exports.up = function() {
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

exports.down = function() {
  return knex.schema.dropTable('images');
}