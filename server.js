const mysql = require("mysql");
const inquirer = require('inquirer');

const connection = mysql.createConnection({
  host: "localhost",
  port: 8889,
  user: "root",
  password: "root",
  database: "EMPLOYEE_TRACKER"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  employeeTracker();
});

function employeeTracker() {
  connection.query("SELECT * FROM EMPLOYEE", function(err, res) {
    if (err) throw err;
    console.log(res);
    connection.end();
  });
}
