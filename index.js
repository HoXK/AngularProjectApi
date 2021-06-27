const express = require("express");
const app = express();
const mysql = require("mysql");
const bodyParser = require("body-parser");
const cors = require("cors");
const config = require("./config.json");
const jwt = require("jsonwebtoken");
const jwtHelper = require("./helper/jwt");
const allowedOrigins = ["http://localhost:4200"];
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "1234",
  database: "achieversit",
});

var server = app.listen(4100, function () {
  //   var host = server.address().address;
  var port = server.address().port;

  console.log("Example app listening at http://localhost:%s", port);
});

connection.connect((error) => {
  if (error) throw error;
});

app.use(bodyParser.json());
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);
app.use(
  cors(
    (cors.CorsOptions = {
      origin: allowedOrigins,
    })
  )
);
app.use(jwtHelper());

app.post("/authenticate", (req, res) => {
  let users = req.body;

  const token = jwt.sign({ sub: users.username }, config.secret, {
    expiresIn: "7d",
  });

  res.end(
    JSON.stringify({
      ...users,
      token: token,
    })
  );
});

app.get("/user", (req, res) => {
  connection.query("SELECT * FROM users", (error, results, fields) => {
    if (error) throw error;
    res.end(JSON.stringify(results));
  });
});

app.post("/createUser", (req, res) => {
  let postData = req.body;
  connection.query(
    "INSERT INTO users SET ?",
    postData,
    (error, results, fields) => {
      if (error) throw error;
      res.end(JSON.stringify(results));
    }
  );
});

app.delete("/deleteUser/:id", (req, res) => {
  let id = req.params.id;
  connection.query(
    `DELETE FROM users WHERE id=${id}`,
    (error, results, fields) => {
      if (error) throw error;
      res.end(JSON.stringify(results));
    }
  );
});

app.get("/user/:id", (req, res) => {
  let id = req.params.id;
  connection.query(
    `SELECT * FROM users where id=${id}`,
    (error, results, fields) => {
      if (error) throw error;
      res.end(JSON.stringify(results));
    }
  );
});

app.put("/updateUser", (req, res) => {
  let userData = req.body;
  connection.query(
    `UPDATE users SET firstname='${userData.firstname}', lastname='${userData.lastname}', email='${userData.email}', country='${userData.country}', address='${userData.address}' WHERE id=${userData.id}`,
    (error, results, fields) => {
      if (error) throw error;
      res.end(JSON.stringify(results));
    }
  );
});
