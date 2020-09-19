const knex = require('knex');

exports.seed = function(knex, Promise) {
  await knex('cerimonialista').insert([
    {name: 'admin', email: 'admin@admin.com', password: 'admin', telefone: '1699999-9999' }
  ])
}
