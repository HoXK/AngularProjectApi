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

module.export = connection;
