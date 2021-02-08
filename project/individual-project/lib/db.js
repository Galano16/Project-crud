var mysql2 = require("mysql2");

var connection = mysql2.createConnection({
  host: "localhost",
  user: "root",
  password: "1234",
  database: "individual_project",
});

connection.connect(function (error) {
  if (error) {
    console.log(error);
  } else {
    console.log("Connected!");
  }
});

module.exports = connection;
