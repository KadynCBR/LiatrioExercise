const express = require('express')
const app = express()
const port = 80

app.get('/', (req, res) => {
  res.send({ message: "My name is Kadyn", timestamp: Date.now(), commitver: process.env.COMMITVERSION })
})

app.listen(port, () => {
  console.log(`Listening on port ${port}`)
})