const mysql = require('mysql');
const express =require('express');
const http =require('http');
const fs = require('fs');
const app = express();

server.listen(80, '127.0.0.1', ()=>{
  console.log("Listening on port 80");
});

var con = mysql.createConnection({
    host: "127.0.0.1",
    user: "root",
    password: "",
    database: "flights"
  });
  
  con.connect(function(err) {
    if (err) throw err;
    
      console.log("Connected");
    });
    con.query("SELECT * FROM create_table", function (err, res) {
          if (err) throw err;
            console.log(res);
        });
    