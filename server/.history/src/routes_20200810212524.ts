import express, { Router } from 'express';
import knex from './database/connection';

const routes = express.Router();

routes.get('/admin', async (req, res) => {
  const admin = await knex('cerimonialista').select('id').where('email', req.body.email);

  return res.json(admin)
});

routes.get('/client', async(req, res) => {
  const client = await knex('cliente').select('*');

  return res.json(client);
});

routes.post('/client', async(req, res) => {
  const client = await knex('cliente').insert([{
    nome_noiva: 'noiva 1',
    email_noiva: 'noiva@noiva.com',
    cpf_noiva: '999999999',
    telefone_noiva: '999999999',
    nome_noivo: 'noivo 1',
    email_noivo: 'noivo@noivo.com',
    cpf_noivo: '999999999',
    telefone_noivo: '999999999',
    password: 'teste',
    cerimonialista_id: 1
  }]);
  return res.send('foi');
});

export default routes;