USE SoftUni

SELECT top(50) e.FirstName, e.LastName,t.Name as 'Town',a.AddressText
	FROM Employees as e
	JOIN Addresses A ON A.AddressID = e.AddressID
	JOIN Towns T ON T.TownID = A.TownID
	ORDER BY e.FirstName,e.LastName