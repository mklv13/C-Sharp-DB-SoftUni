Problem 19

SELECT * FROM Towns

SELECT * FROM Departments

SELECT * FROM Employees

Problem 20

SELECT * FROM Towns
ORDER BY [Name] ASC

SELECT * FROM Departments
ORDER BY [Name] ASC

SELECT * FROM Employees
ORDER BY Salary DESC

Problem 21

SELECT [Name] FROM Towns
ORDER BY [Name] ASC

SELECT [Name] FROM Departments
ORDER BY [Name] ASC

SELECT FirstName,LastName, JobTitle, Salary FROM Employees
ORDER BY Salary DESC

Problem 22

UPDATE Employees
SET Salary +=Salary*0.1

SELECT Salary FROM Employees

Problem 23

USE Hotel

UPDATE Payments
SET TaxRate-=TaxRate*0.03

SELECT TaxRate FROM Payments

Problem 24

USE Hotel

TRUNCATE TABLE Occupancies

