const mysql = require("mysql");
const inquirer = require('inquirer');
const cTable = require('console.table');

const connection = mysql.createConnection({
  host: "localhost",
  port: 8889,
  user: "root",
  password: "root",
  database: "EMPLOYEE_TRACKER"
});

connection.connect(function(err) {
  if (err) throw err;
  startApp();
});

function startApp() { 
    //console.log("connected as id " + connection.threadId + "\n");
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
              "View Employees",
              "Add New Department",
              "Add New Role",
              "Add New Employee"
          ]
      }]).then(function(response) {
          if(response.choice == 'View Employees') {viewTables("EMPLOYEE");}
          if(response.choice == 'View Departments') {viewTables("DEPARTMENT");}
          if(response.choice == 'View Roles') {viewTables("EMPLOYEE_ROLE");}
          if(response.choice == 'Add New Department') {addDepartment();}
          if(response.choice == 'Add New Role') {addRole();}
      });
};

function endOrContinue() {
  inquirer.prompt([
    {
        type: 'confirm',
        name: 'continue',
        message: 'Go back to main menu?',
    },
    ]).then(answer => {
        if (answer.continue) {
          startApp();
        } else {
          connection.end();
        }
    });
}

function viewTables(tableName) {
  let queryString = "SELECT * FROM ";
  queryString += tableName;
  connection.query(queryString, function(err, res) {
  if (err) throw err;
  console.table(res);
  console.log("-- End of data --");
  endOrContinue();
  });
}

function addDepartment() {
  inquirer.prompt([
    {
      type: "input",
      name: 'newDeptName',
      message: 'Please enter the name of the new Department:',
    },
  ])
  .then(answer => {
    let queryString = `INSERT INTO DEPARTMENT(DEPARTMENT_NAME) VALUES ('${answer.newDeptName}')`;
    connection.query(queryString, function(err, res) {
        if (err) throw err;
        //console.table(res);
        console.log("-- Data added --");
        viewTables("DEPARTMENT");
    });
  });  
}

function addRole() {

  let queryString = "SELECT * FROM DEPARTMENT";
  connection.query(queryString, function(err, res) {
  if (err) throw err;
  let deptChoices = [];
  res.forEach( function(item, index) {
    deptChoices.push(`${item.ID} - ${item.DEPARTMENT_NAME}`);
  });
  //console.log(deptChoices);
  inquirer.prompt([
    {
      type: "input",
      name: 'newRoleTitle',
      message: 'Please enter the title of the new Role:',
    },
    {
      type: "input",
      name: 'newRoleSalary',
      message: 'Please enter the salary of the new Role:',
    },
    {
      type: "list",
      name: 'departmentList',
      message: 'Please select a Department for the new Role:',
      choices: deptChoices
    }
    ])
    .then(answer => {
      const deptId = parseInt(answer.departmentList);
      let queryString = `INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES ('${answer.newRoleTitle}','${answer.newRoleSalary}','${deptId}')`;
      connection.query(queryString, function(err, res) { 
          if (err) throw err;
          //console.table(res);
          console.log("-- Data added --");
          viewTables("EMPLOYEE_ROLE");
      });
    });  
  });
}






