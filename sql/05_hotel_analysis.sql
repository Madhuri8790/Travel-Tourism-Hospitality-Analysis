SELECT
Hotel_Name,
AVG(Hotel_Rating) Rating,
AVG(Hotel_Occupancy) Occupancy
FROM travel_data
GROUP BY Hotel_Name
HAVING Rating > 4
AND Occupancy < 60;

SELECT
Hotel_Category,
AVG(Room_Price) Avg_Price,
AVG(Hotel_Occupancy) Avg_Occupancy
FROM travel_data
GROUP BY Hotel_Category;

SELECT
Hotel_Category,
SUM(Revenue_USD) Revenue
FROM travel_data
GROUP BY Hotel_Category
ORDER BY Revenue DESC;