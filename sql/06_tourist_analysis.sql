SELECT
Purpose_of_Visit,
AVG(Revenue_USD) Avg_Spending
FROM travel_data
GROUP BY Purpose_of_Visit
ORDER BY Avg_Spending DESC;

SELECT
MONTHNAME(Visit_Date) Month,
COUNT(*) Tourists
FROM travel_data
GROUP BY Month
ORDER BY Tourists DESC;

SELECT
Destination,
AVG(Length_of_Stay) Avg_Days
FROM travel_data
GROUP BY Destination
ORDER BY Avg_Days DESC;