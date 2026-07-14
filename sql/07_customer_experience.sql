SELECT
ROUND(Satisfaction_Score),
AVG(Online_Reviews)
FROM travel_data
GROUP BY ROUND(Satisfaction_Score)
ORDER BY ROUND(Satisfaction_Score);

SELECT
Country,
AVG(Satisfaction_Score) Avg_Score
FROM travel_data
GROUP BY Country
ORDER BY Avg_Score;

SELECT
Hotel_Rating,
AVG(Satisfaction_Score)
FROM travel_data
GROUP BY Hotel_Rating;