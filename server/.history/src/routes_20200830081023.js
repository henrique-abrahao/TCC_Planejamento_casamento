const express = require('express');
const multer = require('multer');

const multerConfig = require('./config/multer')
const routes = express.Router();
const knex = require('../knexfile');

routes.get('/admin', async (req, res) => {
  const admin = await knex('cerimonialista').select('id').where('email', req.body.email);

  return res.json(admin)
});

routes.get('/client', async (req, res) => {
  const client = await knex('cliente').select('*');

  return res.json(client);
});

routes.get('/imagesPhoto', async(req, res) => {
  const images = await knex('images').select('*').whereNotNull('photo_id')

  return res.json(images)
})

routes.get('/imagesLocal', async(req, res) => {
  const images = await knex('images').select('*').whereNotNull('local_id')

  return res.json(images)
})

routes.post('/client', async (req, res) => {
  try {
    await knex('cliente').insert([{
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
    return res.json({ 'message': 'Cadastro concluido' });
  } catch (e) {
    return res.status(400).json({ 'message': 'Deu Ruim' });
  }
},
);

routes.post("/photo", multer(multerConfig).single('file'), async (req, res) => {
  const { originalname: name_image, size, key, location: url = ''} = req.file;
  console.log(req.file)

  const image = await knex('images').insert([{
    name_image,
    size,
    key,
    url,
    local_photo: '1',
  }
  ])

  return res.json(image)
})


module.exports = routes;