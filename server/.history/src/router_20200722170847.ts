import express, { Router } from 'express';

const routes = express.Router();

routes.get('/', (req, res) => {
  return res.send('HEllo world')
});
export default routes;