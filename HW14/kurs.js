const https = require("https");
const url = "https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=3";

https.get(url, res => {
  res.setEncoding("utf8");
  let body = "";
  res.on("data", data => {
    body += data;
  });
  res.on("end", () => {
    json = JSON.parse(body);
    console.log(json);
  });
});

