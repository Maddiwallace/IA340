--Q4.1
/* no, because we still have VA records in other tables*/

--Q4.2
/* no, because no state has fips of 80*/

--Q4.3
/* yes, it works but can be improved*/

--Q4.5
/* yes, great job*/

--Q4.6
SELECT n.name, i.income, i.year
FROM income i
JOIN name n ON i.fips = n.fips
WHERE i.year = (SELECT MAX(year) FROM income)
ORDER BY i.income DESC
LIMIT 1;

/* yes, it works*/

--Q4.7
/* it doesn't work*/

--Q4.8
/*no, not always*/
