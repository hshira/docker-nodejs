var express = require('express');
var request = require('request');
var app = express();
var port = 3000

app.get('/hello', function(req, res) {
    console.log("Hello World");
    res.send("Hello World");
});


app.listen(process.env.PORT || port);
console.log("Started the nodejs server ... http://localhost:3000/hello");
