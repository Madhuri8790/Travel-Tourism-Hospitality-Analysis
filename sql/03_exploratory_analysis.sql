-- Total Revenue

SELECT
SUM(Revenue_USD)
FROM travel_data;

-- Total Tourists

SELECT
COUNT(DISTINCT Tourist_ID)
FROM travel_data;

-- Number of Countries

SELECT
COUNT(DISTINCT Country)
FROM travel_data;

-- Number of Destinations

SELECT
COUNT(DISTINCT Destination)
FROM travel_data;

-- Average Hotel Rating

SELECT
AVG(Hotel_Rating)
FROM travel_data;