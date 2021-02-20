USE SoftUni

SELECT e.EmployeeID,e.FirstName,e.ManagerID,m.FirstName as ManagerName
	FROM Employees as e
		JOIN Employees as m on e.ManagerID=m.EmployeeID
	WHERE e.ManagerID in (3,7)
	ORDER BY e.EmployeeID