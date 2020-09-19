import Knex from 'knex';

export async function seed(knex: Knex){
  await knex('cerimonialista').insert([
    {name: 'admin', email: 'admin@admin.com', password: 'admin', telefone: '1699999-9999' }
  ])
}
