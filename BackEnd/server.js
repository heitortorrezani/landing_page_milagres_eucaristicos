import express from 'express';

const app = express();

app.get(
    "/email",
    (req, res) =>
    {
        res.send('ok')
    }
)

app.listen(3000, console.log('http://localhost/3000'))