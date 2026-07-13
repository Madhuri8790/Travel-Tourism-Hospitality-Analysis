-- Total Records

SELECT COUNT(*)
FROM travel_data;

-- Check Null Values

SELECT *
FROM travel_data
WHERE Destination IS NULL
OR Country IS NULL
OR Revenue_USD IS NULL;

-- Remove Duplicate Records

SELECT *,
ROW_NUMBER() OVER(
PARTITION BY Tourist_ID, Destination, Visit_Date
) AS rn
FROM travel_data;

-- Standardize Country Names

UPDATE travel_data
SET Country = TRIM(Country);

-- Convert Visit Date

ALTER TABLE travel_data
MODIFY Visit_Date DATE;