const axios = require('axios');
const apiKey = 'GiVUYsF4A8ssq93FR48H';

module.exports = async (req, res) => {
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
};