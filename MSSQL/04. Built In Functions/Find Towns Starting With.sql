USE SoftUni

SELECT TownID,Name
	FROM Towns
	WHERE LEFT(Name, 1) IN ('M', 'K', 'B', 'E')
	ORDER BY Name

SELECT TownID,Name
	FROM Towns
	WHERE LEFT(Name, 1) LIKE '[MKBE]'
	ORDER BY Name