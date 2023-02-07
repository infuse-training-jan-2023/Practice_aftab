const { Console } = require("console");
const http = require("http");
var moment = require('moment');
const hostname = "127.0.0.1";
const port = 3000;
const d = new Date(process.env.DATE || "02-07-2022");
console.log(moment(d).format('MM,YYYY'))
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/plain");
  res.end("Hello World\n");
});
server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
