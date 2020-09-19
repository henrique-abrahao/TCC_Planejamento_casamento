import express, { Router } from 'express';
import knex from './database/connection';

const routes = express.Router();

routes.get('/admin', (req, res) => {
  const admin = knex('cerimonialista').select('*');
  
  return res.send('admin')
});
export default routes;