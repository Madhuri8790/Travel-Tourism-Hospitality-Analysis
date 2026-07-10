SELECT
Destination,
SUM(Revenue_USD)/COUNT(DISTINCT Tourist_ID) AS Revenue_Per_Tourist
FROM travel_data
GROUP BY Destination
ORDER BY Revenue_Per_Tourist DESC;

SELECT
Country,
COUNT(DISTINCT Tourist_ID) AS Tourists,
SUM(Revenue_USD) AS Revenue
FROM travel_data
GROUP BY Country
ORDER BY Tourists DESC, Revenue ASC;

SELECT
Destination,
COUNT(DISTINCT Tourist_ID) AS Tourists,
AVG(Satisfaction_Score) AS Satisfaction,
SUM(Revenue_USD) AS Revenue
FROM travel_data
GROUP BY Destination
HAVING Revenue <
(
SELECT AVG(Revenue)
FROM
(
SELECT SUM(Revenue_USD) Revenue
FROM travel_data
GROUP BY Destination
) x
);