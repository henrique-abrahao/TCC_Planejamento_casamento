
const express = require('express');
const app = express();

import routes from './routes';
import cors from 'cors';


app.use(cors())
app.use(json());
app.use(routes);
app.listen(3333);