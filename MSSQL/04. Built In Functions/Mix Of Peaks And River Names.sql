USE Geography

SELECT PeakName,
       RiverName,
       LOWER(
       CONCAT(P.PeakName,
       SUBSTRING(R.RiverName, 2,
       LEN(R.RiverName) - 1)))
           AS Mix
	FROM Peaks AS P,
    Rivers AS R
	WHERE RIGHT(PeakName, 1) = LEFT(RiverName, 1)
	ORDER BY Mix


SELECT p.PeakName,
       r.RiverName,
       LOWER(CONCAT(p.PeakName,
       SUBSTRING(r.RiverName, 2, LEN(r.RiverName) - 1))) AS Mix
	FROM Peaks AS p
    JOIN Rivers AS r ON RIGHT(p.PeakName, 1) = LEFT(r.RiverName, 1)