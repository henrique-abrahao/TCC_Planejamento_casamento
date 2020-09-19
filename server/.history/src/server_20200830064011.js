const express = require('express');
const app = express();

const routes = require('./routes')
import cors from 'cors';


app.use(cors())
app.use(json());
app.use(routes);
app.listen(3333);