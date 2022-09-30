const http = require("http");
const PORT = 8081;

http
  .createServer(function (request, response) {
    response.end("<br>Welcome to Nodejs Application</br>");
  })
  .listen(PORT);

console.log("Server running at http://127.0.0.1:" + PORT + "/");
