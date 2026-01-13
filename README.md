# swiggy_sales_insights
SQL QUESTIONS TO FIND KEY INSIGHTS:
Swiggy Restaurant Sales Analysis
Project Overview
This project focuses on exploratory data analysis (EDA) and business-oriented insights derived from a Swiggy restaurant dataset. The objective is to analyze restaurant distribution, customer preferences, pricing strategies, delivery efficiency, and estimated sales performance across multiple cities and areas.
•	Business decision-making
•	City-wise market expansion analysis
•	Restaurant performance benchmarking
•	Dashboard creation using Power BI / Tableau
This document elaborates each analytical question in detail and serves as the README file for GitHub upload.
________________________________________
Dataset Description
The dataset contains 8,680 restaurant records with the following key attributes:
Column Name	Description
ID	Unique restaurant identifier
Area	Local area where the restaurant operates
City	City name
Restaurant	Restaurant name
Price	Average price for two people
Avg ratings	Average customer rating
Total ratings	Total number of customer ratings
Food type	Cuisine or food category
Address	Physical address
Delivery time	Average delivery time in minutes
________________________________________
Key Business Metrics
Before deep analysis, we derive the following core KPIs:
•	Total number of restaurants
•	Average restaurant rating
•	Average delivery time
•	Estimated sales (Price × Total ratings)
These KPIs provide a high-level snapshot of platform performance.
________________________________________
1.Total Number of Restaurants in Each City
Objective
To understand the city-wise distribution of restaurants and identify major food hubs.
Analysis Explanation
This analysis groups the dataset by city and counts the number of restaurants operating in each city. It highlights cities with dense restaurant presence and competitive markets.
Business Insight
•	Cities with more restaurants indicate higher customer demand.
•	Helps Swiggy identify saturated vs emerging markets.
________________________________________
2 Top 5 Cities with the Highest Number of Restaurants
Objective
To identify the top-performing cities in terms of restaurant availability.
Analysis Explanation
After counting restaurants per city, the cities are sorted in descending order, and the top five are selected.
Business Insight
•	These cities contribute significantly to platform revenue.
•	High competition among restaurants.
•	Ideal cities for premium subscription and marketing campaigns.
________________________________________
3 Total Estimated Sales for Each City
Objective
To estimate revenue potential across cities.
Calculation Logic
Estimated Sales = Price × Total Ratings
This proxy metric represents revenue potential based on pricing and customer engagement.
Business Insight
•	Cities with fewer restaurants can still generate higher revenue.
•	Useful for investment prioritization and city expansion strategy.
________________________________________
4 Top 10 Restaurants by Estimated Sales
Objective
To identify top revenue-generating restaurants on the platform.
Analysis Explanation
Estimated sales are calculated for each restaurant, sorted in descending order, and the top 10 are selected.
Business Insight
•	Helps Swiggy form exclusive partnerships.
•	Identifies benchmark restaurants for performance comparison.
________________________________________
5 Average Delivery Time for Each City
Objective
To analyze delivery efficiency city-wise.
Analysis Explanation
The delivery time is averaged for each city to assess operational performance.
Business Insight
•	Lower delivery times improve customer satisfaction.
•	High delivery time cities may require logistics optimization.
________________________________________
6 Cities with Average Delivery Time Exceeding 45 Minutes
Objective
To identify logistics bottlenecks.
Analysis Explanation
Cities with an average delivery time greater than 45 minutes are filtered.
Business Insight
•	Indicates infrastructure or traffic challenges.
•	Priority cities for delivery partner expansion.
________________________________________
7 Most Popular Food Type Based on Total Ratings
Objective
To understand customer food preferences.
Analysis Explanation
Food types are grouped and ranked based on total customer ratings.
Business Insight
•	Helps in promoting trending cuisines.
•	Useful for onboarding new restaurants strategically.
________________________________________
8 Average Price of Food in Each City
Objective
To analyze pricing patterns across cities.
Analysis Explanation
Average price is calculated city-wise to understand affordability levels.
Business Insight
•	Identifies premium vs budget cities.
•	Helps in targeted discount strategies.
________________________________________

9 Restaurants with Average Rating Above 4.5
Objective
To identify top-quality restaurants.
Analysis Explanation
Restaurants with ratings greater than 4.5 are filtered.
Business Insight
•	High trust restaurants.
•	Candidates for platform promotions and featured listings.
________________________________________
10 High-Rated but Low-Popularity Restaurants
Objective
To find hidden gems.
Filtering Criteria
•	Avg Rating > 4.5
•	Total Ratings < 100
Business Insight
•	New or less-discovered restaurants.
•	High potential for growth with marketing support.
________________________________________
11 Percentage of High-Rated Restaurants (≥ 4.0) in Each City
Objective
To measure quality concentration city-wise.
Analysis Explanation
Percentage is calculated as:
(High-rated restaurants / Total restaurants) × 100
Business Insight
•	Indicates overall food quality perception.
•	Useful for city reputation analysis.
________________________________________
12 Areas with the Highest Restaurant Density
Objective
To identify hotspot localities.
Analysis Explanation
Restaurants are counted area-wise to identify dense clusters.
Business Insight
•	Helps in hyperlocal marketing.
•	Ideal regions for cloud kitchens.
________________________________________
13 Top 5 Food Types by Estimated Sales
Objective
To analyze revenue contribution by cuisine.
Analysis Explanation
Estimated sales are aggregated by food type and ranked.
Business Insight
•	Helps focus on high-performing cuisines.
•	Guides menu expansion strategies.
________________________________________
14 Restaurants with Delivery Time Greater Than 60 Minutes
Objective
To identify service risk restaurants.
Analysis Explanation
Restaurants with delivery time exceeding 60 minutes are filtered.
Business Insight
•	Potential customer dissatisfaction risk.
•	Requires delivery or operational improvement.
________________________________________


15 Top Restaurant in Each City by Estimated Sales
Objective
To identify city-level champions.
Analysis Explanation
Restaurants are ranked within each city based on estimated sales, and the top one is selected.
Business Insight
•	Useful for city-specific partnerships.
•	Acts as a performance benchmark.
________________________________________
Conclusion
This analysis provides a comprehensive business view of Swiggy’s restaurant ecosystem. By combining pricing, ratings, delivery efficiency, and customer engagement, the project delivers actionable insights suitable for:
•	Business intelligence dashboards
•	Portfolio projects for Data Analyst roles
•	Real-world decision-making simulations
________________________________________
Tools & Skills Demonstrated
•	Python (Pandas, NumPy)
•	SQL (Aggregations, Joins, Window Functions)
•	Power BI / Data Visualization
•	Exploratory Data Analysis (EDA)
•	Business Insight Generation
________________________________________
This README is designed for GitHub presentation and academic/project submissions.
