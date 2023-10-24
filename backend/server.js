const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');

const getHealth = require('./src/routes/getHealth');
const uploadDetail = require('./src/routes/uploadDetail');

const port = process.env.port || process.env.PORT || 12345;
const apiRoot = '/api';

const app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors({ origin: /https:\/\/localhost/ }));
app.options('*', cors);

const router = express.Router();

router.get('/health', getHealth);

router.post('/upload', uploadDetail);

app.use(apiRoot, router);

app.listen(port, () => {
    console.log('Application is running on port ' + port);
});
