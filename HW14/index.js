const http = require("http");
const port = 3000;
const fs = require("fs");
let link = fs.readFileSync("index.html", "utf-8");

http
  .createServer(function (req, res) {
    if (req.url === "/") {
      res.write("Hello World");
      res.end();
    } else if (req.url === "/about") {
      res.writeHead(200, { "Content-Type": "text/html" });
      res.write(req.url);
      res.end();
    } else if (req.url === "/contact") {
      res.write(link);
      res.end();
    } else {
      res.write("page not found");
      res.end();
    }
  })
  .listen(port, function () {
    console.log("Server at http://localhost:3000");
  });
