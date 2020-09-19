import express, { Router } from 'express';
import knex from './database/connection';

const routes = express.Router();

routes.get('/admin', async (req, res) => {
  const admin = await knex('cerimonialista').select('id').where('email', req.body.email);

  return res.json(admin)
});

routes.get('/client', async (req, res) => {
  const client = await knex('cliente').select('*');

  return res.json(client);
});

routes.post('/client', async (req, res) => {
  try {
    const client = await knex('cliente').insert([{
      nome_noiva: req.body.nome_noiva,
      email_noiva: req.body.email_noiva,
      cpf_noiva: req.body.cpf_noiva,
      telefone_noiva: req.body.telefone_noiva,
      nome_noivo: req.body.nome_noivo,
      email_noivo: req.body.email_noivo,
      cpf_noivo: req.body.cpf_noivo,
      password: req.body.password,
      data_casamento: req.body.data_casamento,
      cerimonialista_id: req.body.cerimonialista_id
    }]);
    return res.status(200).send({ 'messange': 'deu ruim' });
  } catch (e) {
    return res.send({ 'error': 'deu ruim' })
  }
}
);

export default routes;