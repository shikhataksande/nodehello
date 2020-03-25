var express = require('express');
var app = express();
app.get('/', function (req, res) {
  res.send('Hello World!');
  
  process.kill(process.pid, 'SIGTERM')
});
app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});

process.on('SIGTERM', () => {
    server.close(() => {
      console.log('Process terminated')
    })
  })