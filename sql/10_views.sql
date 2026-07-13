CREATE VIEW Revenue_By_Country AS
SELECT
Country,
SUM(Revenue_USD) Revenue
FROM travel_data
GROUP BY Country;

---------------------------------------------------

CREATE VIEW Hotel_Performance AS
SELECT
Hotel_Name,
AVG(Hotel_Rating) Rating,
AVG(Hotel_Occupancy) Occupancy
FROM travel_data
GROUP BY Hotel_Name;

---------------------------------------------------

CREATE VIEW Monthly_Tourists AS
SELECT
MONTHNAME(Visit_Date) Month,
COUNT(*) Tourists
FROM travel_data
GROUP BY Month;