USE EMPLOYEE_TRACKER;

INSERT INTO DEPARTMENT(DEPARTMENT_NAME) VALUES('Sales');
INSERT INTO DEPARTMENT(DEPARTMENT_NAME) VALUES('Accounting');
INSERT INTO DEPARTMENT(DEPARTMENT_NAME) VALUES('Quality Assurance');
INSERT INTO DEPARTMENT(DEPARTMENT_NAME) VALUES('Warehouse');
INSERT INTO DEPARTMENT(DEPARTMENT_NAME) VALUES('Supplier Relations');
INSERT INTO DEPARTMENT(DEPARTMENT_NAME) VALUES('Customer Service');
INSERT INTO DEPARTMENT(DEPARTMENT_NAME) VALUES('Human Resources');
INSERT INTO DEPARTMENT(DEPARTMENT_NAME) VALUES('Administration');

INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('Sales Representative',50000,1);
INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('Accountant',65000,2);
INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('Senior Accountant',75000,2);
INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('QA Representative',45000,3);
INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('Warehouse Manager',45000,4);
INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('Forklift Operator',30000,4);
INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('Shipping Coordinator',30000,4);
INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('Logistics Coordinator',45000,5);
INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('Buyer',45000,5);
INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('CS Representative',35000,6);
INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('HR Coordinator',35000,7);
INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('Receptionist',35000,8);
INSERT INTO EMPLOYEE_ROLE(TITLE,SALARY,DEPARTMENT_ID) VALUES('Regional Manager',140000,8);

INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Michael','Scott',13,null);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Pam','Beesly',12,13);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Toby','Flenderson',11,null);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Kelly','Kapoor',10,13);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Ryan','Howard',10,13);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Phyllis','Vance',9,13);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Meredith','Palmer',8,13);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Roy','Anderson',7,5);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Hidetoshi','Hasagawa',6,5);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Darryl','Philbin',5,13);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Creed','Bratton',4,13);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Angela','Martin',3,13);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Oscar','Martinez',2,13);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Kevin','Malone',2,13);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Jim','Halpert',1,13);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Dwight','Schrute',1,13);
INSERT INTO EMPLOYEE(FIRST_NAME,LAST_NAME,ROLE_ID,MANAGER_ID) VALUES('Andy','Bernard',1,13);