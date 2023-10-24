const axios = require('axios');
const apiKey = 'GiVUYsF4A8ssq93FR48H';

module.exports = async (req, res) => {
    try {
        const blobToImage = (blob) => {
            return new Promise(resolve => {
              const url = URL.createObjectURL(blob)
              let img = new Image()
              img.onload = () => {
                URL.revokeObjectURL(url)
                resolve(img)
              }
              img.src = url
            })
          }
        const imageUrl = blobToImage('http://localhost:63367/7fcab002-9cfd-46b1-9247-f49335af61a7'); // Replace with the actual URL of the image
        const imageResponse = await axios.get(imageUrl, {
            responseType: 'arraybuffer',
        });
        const formData = new FormData();
        formData.append('source_file', imageResponse.data, {
            filename: 'card.jpg',
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
        console.log('Unable to upload file', error);
        res.status(500).send(error);
    }
};