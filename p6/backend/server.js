const express = require('express')
const cors = require('cors')

const app = express()

const port = 8080
const host = '0.0.0.0'
app.use(cors({
    origin: '*'
}));

app.get('/',(req,res)=>{
    res.send({message:"hello world"})

})

app.listen(port, host, () => {
    console.log(`Server running at http://${host}:${port}/`);
  });
