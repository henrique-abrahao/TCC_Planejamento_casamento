import express, { Router } from 'express';
import knex from './database/connection';

const routes = express.Router();

routes.get('/admin', async (req, res) => {
  const admin = await knex('cerimonialista').select('*');
  console.log(admin)

  return res.json(admin)
});
export default routes;