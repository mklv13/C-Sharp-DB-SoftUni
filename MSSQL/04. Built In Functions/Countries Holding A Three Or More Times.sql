USE Geography

SELECT CountryName,IsoCode
	FROM Countries
	WHERE  CountryName like ('%A%A%A%')
	ORDER BY IsoCode