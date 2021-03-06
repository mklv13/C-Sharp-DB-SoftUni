USE Geography

SELECT c.CountryCode,
       COUNT(m.MountainRange) AS MountainRanges
	FROM Countries AS c
         LEFT OUTER JOIN MountainsCountries mc ON c.CountryCode = mc.CountryCode
         JOIN Mountains M ON mc.MountainId = M.Id
	WHERE c.CountryCode IN ('BG', 'RU', 'US')
	GROUP BY c.CountryCode