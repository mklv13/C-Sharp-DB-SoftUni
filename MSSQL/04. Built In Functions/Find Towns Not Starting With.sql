USE SoftUni

SELECT TownID,Name
	FROM Towns
	WHERE LEFT(Name, 1) NOT in ('R', 'B', 'D')
	ORDER BY Name