const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const axios = require('axios');

const apiKey = 'GiVUYsF4A8ssq93FR48H';
const port = process.env.port || process.env.PORT || 5000;
const apiRoot = '/api';

const app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors({ origin: /https:\/\/localhost/ }));
app.options('*', cors);

const router = express.Router();

router.get('/formats/gif', async (req, res) => {
    try {
        const response = await axios.get('https://sandbox.zamzar.com/v1/formats/gif', {
            auth: {
                username: apiKey,
                password: ''
            }
        });
        console.log('SUCCESS! Supported Formats:', response.data);
        res.send(response.data);
    } catch (error) {
        console.error('Unable to get formats', error);
        res.status(500).send(error);
    }
});

router.post('/upload', async (req, res) => {
    try {
        const imageUrl = 'http://example.com/path/to/your/image.jpg'; // Replace with the actual URL of the image
        const imageResponse = await axios.get(imageUrl, {
            responseType: 'arraybuffer',
        });
        const formData = new FormData();
        formData.append('source_file', imageResponse.data, {
            filename: 'image.jpg',
        });

        const response = await axios.post('https://sandbox.zamzar.com/v1/jobs', formData, {
            auth: {
                username: apiKey,
                password: ''
            },
            headers: formData.getHeaders()
        });
        console.log('SUCCESS! File uploaded:', response.data);
        res.send(response.data);
    } catch (error) {
        console.error('Unable to upload file', error);
        res.status(500).send(error);
    }
});

app.use(apiRoot, router);

app.listen(port, () => {
    console.log('Application is running on port ' + port);
});
