USE SoftUni

SELECT TOP (5) e.EmployeeID, e.FirstName, p.Name AS ProjectName
	FROM Employees AS e
         JOIN EmployeesProjects EP ON e.EmployeeID = EP.EmployeeID
         JOIN Projects p ON EP.ProjectID = p.ProjectID
	WHERE p.StartDate > '2002-08-13'
		AND p.EndDate IS NULL
	ORDER BY e.EmployeeID