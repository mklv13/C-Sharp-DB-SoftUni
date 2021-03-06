USE Geography

SELECT TOP (5) c.CountryName, r.RiverName
	FROM Countries AS c
         LEFT JOIN CountriesRivers CR ON c.CountryCode = CR.CountryCode
         LEFT JOIN Rivers r ON cr.RiverId = r.Id
         JOIN Continents C2 ON C2.ContinentCode = c.ContinentCode
	WHERE c2.ContinentName LIKE 'Africa'
	ORDER BY c.CountryName