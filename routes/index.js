const config = require('../config.json');
const jwt = require('jsonwebtoken');
const connection = require('../db.config');
const routes = require('express').Router();

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

routes.get('/user', (req, res) => {
  connection.query('SELECT * FROM users', (error, results, fields) => {
    if (error) throw error;
    res.end(JSON.stringify(results));
  });
});

routes.post('/createUser', (req, res) => {
  let postData = req.body;
  connection.query('INSERT INTO users SET ?', postData, (error, results, fields) => {
    if (error) throw error;
    res.end(JSON.stringify(results));
  });
});

routes.delete('/deleteUser/:id', (req, res) => {
  let id = req.params.id;
  connection.query(`DELETE FROM users WHERE id=${id}`, (error, results, fields) => {
    if (error) throw error;
    res.end(JSON.stringify(results));
  });
});

routes.get('/user/:id', (req, res) => {
  let id = req.params.id;
  connection.query(`SELECT * FROM users where id=${id}`, (error, results, fields) => {
    if (error) throw error;
    res.end(JSON.stringify(results));
  });
});

routes.put('/updateUser', (req, res) => {
  let userData = req.body;
  connection.query(
    `UPDATE users SET firstname='${userData.firstname}', lastname='${userData.lastname}', email='${userData.email}', country='${userData.country}', address='${userData.address}' WHERE id=${userData.id}`,
    (error, results, fields) => {
      if (error) throw error;
      res.end(JSON.stringify(results));
    }
  );
});

module.exports = routes;
