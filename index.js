//Создание файла с записью данных в нем

const fs = require('fs');
const data = 'Hello Node.js';
fs.writeFileSync('message.txt', data);
console.log('The file has been saved!');


//Чтение данных из файла

let result = fs.readFileSync('message.txt', 'utf-8');
console.log(result);


//Добавление новой информации в файл с новой строки 

const content = 'Some content!';
fs.appendFileSync('message.txt', '\r\n' + content);
console.log('Ready!');


//Отправить себе на почту письмо с помощью Node.js

const nodemailer = require('nodemailer');
let transporter = nodemailer.createTransport({
  host: 'smtp.gmail.com',
  port: 587,
  secure: false,
    auth: {
      user: 'ksenial1978@gmail.com',
      pass: '**********'
    }

  });
  
  let mailOptions = {
    from: 'ksenial1978@gmail.com',
    to: 'ksenial1978@gmail.com',
    subject: 'Sending Email using Node.js',
    text: 'That was easy!'
  };
  
  transporter.sendMail(mailOptions, function(error, info){
    if (error) {
      console.log(error);
    } else {
      console.log('Email sent: ' + info.response);
    }
  });