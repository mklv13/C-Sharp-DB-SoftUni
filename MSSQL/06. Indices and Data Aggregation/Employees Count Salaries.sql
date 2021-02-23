USE SoftUni

SELECT count(Salary) as Count
FROM Employees
WHERE ManagerID is NULL