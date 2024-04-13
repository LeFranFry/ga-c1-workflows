var express = require('express');
var pjson = require('./package.json');

var app = express();
var version = pjson.version;
var env = process.env.ENVIRONMENT ? process.env.ENVIRONMENT : 'SANDBOX'

app.get('/', function (req, res) {
    res.send('Simple Web Application is UP with version ' + version + ' in environment ' + env);
});

app.listen(8081, function () {
    console.log('This Simple Web Application ' + env + ' running on port 8081!');
});