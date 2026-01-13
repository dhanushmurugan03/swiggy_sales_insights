use swiggy_db;
select * from swiggy_data limit 10;

-- 1.Find the total number of restaurants available in each city.

SELECT city, COUNT(DISTINCT Restaurant) AS total_restaurants
FROM swiggy_data
GROUP BY city
order by city;

-- update the table ;

UPDATE swiggy_data
SET city = 'Hyderabad'
WHERE REPLACE(city, ' ', '') = 'Hyderabad';

-- 2.Identify the top 5 cities with the highest number of restaurants;

SELECT city, COUNT(DISTINCT Restaurant) AS total_restaurants
FROM swiggy_data
GROUP BY city
order by total_restaurants desc
limit 5;

-- same query with but add the limit funtion to find the top five cities;

-- 3.Calculate the total estimated sales (Price × Total_ratings) for each city.

SELECT city,SUM(price * `Total ratings`) AS total_estimated_sales
FROM swiggy_data
GROUP BY city
ORDER BY total_estimated_sales DESC;

-- 4.Find the top 10 restaurants by estimated sales.;

SELECT restaurant,city,(price * `Total ratings`) AS estimated_sales
FROM swiggy_data
ORDER BY estimated_sales DESC
LIMIT 10;

-- 5.Determine the average delivery time for each city.;

SELECT city,AVG(`Delivery time`) AS avg_delivery_time
FROM swiggy_data
GROUP BY city
ORDER BY avg_delivery_time DESC;

-- 6. List cities where the average delivery time exceeds 45 minutes;

SELECT city,AVG(`Delivery time`) AS avg_delivery_time
FROM swiggy_data
GROUP BY city
HAVING AVG(`Delivery time`) > 45
ORDER BY avg_delivery_time DESC;

-- 7.Identify the most popular food type based on total ratings.;

SELECT `Food type`,SUM(`Total ratings`) AS total_ratings
FROM swiggy_data
GROUP BY `Food type`
ORDER BY total_ratings DESC
LIMIT 1;

-- 8.Find the average price of food in each city.;

SELECT city,AVG(price) AS avg_price
FROM swiggy_data
GROUP BY city
ORDER BY avg_price DESC;

-- 9.Identify restaurants with average rating above 4.5.;

SELECT restaurant,city,AVG(`Avg ratings`) AS avg_rating
FROM swiggy_data
GROUP BY restaurant, city
HAVING AVG(`Avg ratings`) > 4.5
ORDER BY avg_rating DESC;

-- 10.Find restaurants that have high ratings (>4.5) but low total ratings (<100).;

SELECT restaurant,city,AVG(`Avg ratings`) AS avg_rating,SUM(`Total ratings`) AS total_ratings
FROM swiggy_data
GROUP BY restaurant, city
HAVING AVG(`Avg ratings`) > 4.5
AND SUM(`Total ratings`) < 100
ORDER BY avg_rating DESC;

-- 11. Calculate the percentage of high-rated restaurants (rating ≥ 4.0) in each city.

SELECT city,COUNT(DISTINCT 
CASE 
WHEN `Avg ratings` >= 4.0 THEN restaurant END) * 100.0 / COUNT(DISTINCT restaurant) AS high_rated_percentage
FROM swiggy_data
GROUP BY city
ORDER BY high_rated_percentage DESC;

-- 12. Identify areas with the highest restaurant density.;

SELECT Area,COUNT(DISTINCT Restaurant) AS total_restaurants
FROM swiggy_data
GROUP BY Area
ORDER BY total_restaurants DESC;

-- 13. Find the top 5 food types by estimated sales.;

SELECT `Food type`,SUM(price * `Total ratings`) AS estimated_sales
FROM swiggy_data
GROUP BY `Food type`
ORDER BY estimated_sales DESC
LIMIT 5;

-- 14. Determine restaurants with delivery time greater than 60 minutes.;

SELECT restaurant,city,`Delivery time`
FROM swiggy_data
WHERE `Delivery time` > 60
ORDER BY `Delivery time` DESC;

-- 15 Find the top restaurant in each city based on estimated sales.

SELECT
    city,
    restaurant,
    estimated_sales
FROM (
    SELECT
        city,
        restaurant,
        SUM(price * `Total ratings`) AS estimated_sales,
        RANK() OVER (
            PARTITION BY city
            ORDER BY SUM(price * `Total ratings`) DESC
        ) AS rnk
    FROM swiggy_data
    GROUP BY city, restaurant
) t
WHERE rnk = 1
ORDER BY estimated_sales DESC;





