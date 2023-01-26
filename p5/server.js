const express = require('express')

const app = express()

const port = process.env.PORT
console.log(port)
const host = '0.0.0.0'


app.get('/',(req,res)=>{
    res.send("hello world")

})

app.listen(port, host, () => {
    console.log(`Server running at http://${host}:${port}/`);
  });
  