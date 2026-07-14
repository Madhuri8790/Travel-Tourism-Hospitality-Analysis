SELECT
Country,
SUM(Eco_Tourism_Revenue) Revenue
FROM travel_data
GROUP BY Country
ORDER BY Revenue DESC;

SELECT
YEAR(Visit_Date),
SUM(Eco_Tourism_Revenue)
FROM travel_data
GROUP BY YEAR(Visit_Date)
ORDER BY YEAR(Visit_Date);

SELECT
Destination,
SUM(Eco_Tourism_Revenue) Revenue,
AVG(Satisfaction_Score) Satisfaction
FROM travel_data
GROUP BY Destination
ORDER BY Revenue;