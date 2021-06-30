const config = require('../config.json');
const jwt = require('jsonwebtoken');
const routes = require('express').Router();
const mysql = require('mysql');

const connection = mysql.createConnection({
  host: 'eyw6324oty5fsovx.cbetxkdyhwsb.us-east-1.rds.amazonaws.com',
  user: 'gm1vm9miljet6rmv',
  password: 'kvg660giecd1gmvq',
  database: 'a7s7bdoaogdxt7kp',
});

connection.connect((error) => {
  if (error) throw error;
});

routes.post('/authenticate', (req, res) => {
  let users = req.body;
  const token = jwt.sign({ sub: users.username }, config.secret, {
    expiresIn: '7d',
  });

  res.end(
    JSON.stringify({
      ...users,
      token: token,
    })
  );
});

routes.get('/get', (req, res) => {
  connection.query('SELECT * FROM angularconcepts', (error, results, fields) => {
    if (error) throw error;
    res.end(JSON.stringify(results));
  });
});

module.exports = routes;
