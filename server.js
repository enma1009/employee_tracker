const mysql = require("mysql");
const inquirer = require('inquirer');
const control = require("./controllers/controller.js");

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
  console.log("************************");
  console.log("*** EMPLOYEE TRACKER ***");
  console.log("************************");
  inquirer.prompt([
    {
        type: "list",
        message: "Please select one of the following:",
        name: "choice",
        choices: [
            "View Departments",
            "View Roles",
            "View Employees"
        ]
    }]).then(function(response) {
        if(response.choice == 'View Employees') {control.viewTables(connection, "EMPLOYEE");}
        if(response.choice == 'View Departments') {control.viewTables(connection, "DEPARTMENT");}
        if(response.choice == 'View Roles') {control.viewTables(connection, "EMPLOYEE_ROLE");}
    });
});






