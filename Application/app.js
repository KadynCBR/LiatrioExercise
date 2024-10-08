const express = require('express')
const app = express()
const port = 80

app.get('/', (req, res) => {
  res.send({ message: "My name is Kadyn", timestamp: Date.now() })
})

app.listen(port, () => {
  console.log(`Listening on port ${port}`)
})