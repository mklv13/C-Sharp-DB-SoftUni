USE SoftUni

SELECT DepartmentID,
       AVG(IIF(DepartmentID = 1, Salary + 5000, Salary)) AS AverageSalary
FROM (
         SELECT *
         FROM Employees
         WHERE Salary > 30000
           AND ManagerID != 42
     ) AS FilteredQuery
GROUP BY DepartmentID