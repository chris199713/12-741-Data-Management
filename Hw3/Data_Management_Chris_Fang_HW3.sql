Drop DATABASE hw;
CREATE DATABASE hw;
USE hw;
CREATE TABLE Department(department_id INT primary key,
department_name varchar(20),
number_of_employees int,
number_of_Licensed_Engineer int);

INSERT INTO Department VALUES(1,'Structural',30,25);
INSERT INTO Department VALUES(2,'Environmental',50,35);
INSERT INTO Department VALUES(3,'Land',10,8);

CREATE TABLE Project(project_name varchar(20) primary key,
start_date date,
end_date date,
contract_price int,
department_id INT);

INSERT INTO Project VALUES('Building','2010-11-11','2015-11-11',250000,1);
INSERT INTO Project VALUES('Bridge','2015-11-11','2025-11-11',550000,2);
INSERT INTO Project VALUES('House','2020-11-11','2027-11-11',850000,3);

CREATE TABLE Employee(employee_id INT primary key,
department_id int,
project_name varchar(20));

INSERT INTO Employee VALUES(001,1,'Building');
INSERT INTO Employee VALUES(002,2,'Building');
INSERT INTO Employee VALUES(003,1,'Bridge');

CREATE TABLE Engineer(employee_id INT primary key,
Licensed varchar(20),
name varchar(20),
project_name varchar(20));

INSERT INTO Engineer VALUES(051,'yes','Chris','Building');
INSERT INTO Engineer VALUES(062,'no','Tim','House');
INSERT INTO Engineer VALUES(083,'yes','Jeffrey','Bridge');

CREATE TABLE Designer(employee_id INT primary key,
name varchar(20),
project_name varchar(20));

INSERT INTO Designer VALUES(151,'Michale','Building');
INSERT INTO Designer VALUES(162,'Jim','House');
INSERT INTO Designer VALUES(183,'Dwight','Bridge');

CREATE TABLE Manager(employee_id INT primary key,
name varchar(20),
project_name varchar(20));

INSERT INTO Manager VALUES(251,'Stanley','Building');
INSERT INTO Manager VALUES(262,'Toby','House');
INSERT INTO Manager VALUES(283,'Pam','Bridge');

CREATE TABLE Design_Item(item_name VARCHAR(20) primary key,
design_fee int);

INSERT INTO Design_Item VALUES('item 1',20000);
INSERT INTO Design_Item VALUES('item 2',120000);
INSERT INTO Design_Item VALUES('item 3','50000');

CREATE TABLE Project_Doc(Doc_id int primary key,
employee_id int,
Doc_type varchar(20));

INSERT INTO Project_Doc VALUES(001,151,'drawings');
INSERT INTO Project_Doc VALUES(002,162,'drawings');
INSERT INTO Project_Doc VALUES(003,083,'report');

CREATE TABLE train(Program_id int primary key,
trainer_employee_id int,
trainee_eomployee_id int);

INSERT INTO train VALUES(0111,151,062);
INSERT INTO train VALUES(0222,151,083);
INSERT INTO train VALUES(0333,083,162);

CREATE TABLE Dependent(Dependent_name varchar(20) primary key,
depended_employee_id int,
age int);

INSERT INTO Dependent VALUES('Sheldon',151,40);
INSERT INTO Dependent VALUES('Leonard',262,36);
INSERT INTO Dependent VALUES('Penny',051,55);

/*2.2.1
SELECT name, Licensed 
FROM(
SELECT Engineer.name, Engineer.Licensed, Project.Project_name, Project.start_date
FROM Engineer
JOIN Project
ON Engineer.project_name = Project.project_name) as new_table
WHERE  `start_date` > '2012-01-01';

2.2.2
SELECT Project_name
FROM
(SELECT Project_name, count(employee_id) as number_of_employees
FROM Employee
GROUP BY  Project_name) as t
WHERE number_of_employees>10;*/