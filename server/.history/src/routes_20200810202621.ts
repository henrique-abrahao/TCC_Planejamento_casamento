import express, { Router } from 'express';
import knex from './database/connection';

const routes = express.Router();

routes.get('/admin', (req, res) => {
  const admin = knex('cerimonialista').select('*').whereIn(['email'], [req.body]);
  
  return res.send(admin)
});
export default routes;