-- Top 10 Revenue Destinations

SELECT *
FROM
(
SELECT
Destination,
SUM(Revenue_USD) Revenue,
RANK() OVER(ORDER BY SUM(Revenue_USD) DESC) Ranking
FROM travel_data
GROUP BY Destination
) x
WHERE Ranking<=10;

------------------------------------------------

-- Bottom Revenue Countries

SELECT
Country,
SUM(Revenue_USD)
FROM travel_data
GROUP BY Country
ORDER BY SUM(Revenue_USD)
LIMIT 10;

------------------------------------------------

-- Best Hotel Category

SELECT
Hotel_Category,
SUM(Revenue_USD) Revenue,
AVG(Hotel_Rating) Rating
FROM travel_data
GROUP BY Hotel_Category
ORDER BY Revenue DESC;