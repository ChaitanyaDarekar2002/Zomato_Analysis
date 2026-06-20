select top 10 * from Zomato_Dataset

-- Which are the top 10 highest-rated restaurants?
select TOP 10 RestaurantName,City,Max(Rating) as MAX_Rating from Zomato_Dataset
group by RestaurantName,City

-- Which restaurants provide online delivery?
select RestaurantName,Has_Online_delivery from Zomato_Dataset 
where Has_Online_delivery='yes'
-- Which restaurants offer table booking services?
select RestaurantName,Has_Table_booking from Zomato_Dataset 
where Has_Table_booking='1'
-- Which restaurants are affordable for customers?
select RestaurantName,Average_Cost_for_two from Zomato_Dataset
where Average_Cost_for_two < 500
-- Which restaurants are the most expensive?
select RestaurantName,Average_Cost_for_two from Zomato_Dataset 
where Average_Cost_for_two >1000
-- Which restaurants have the highest number of customer votes?
select top 10 RestaurantName,Votes from Zomato_Dataset 
order by Votes desc 
-- Which cuisines are most popular among customers?
select top 10 Cuisines,count(*) as total_cutomer from Zomato_Dataset 
group by Cuisines order by total_cutomer desc
-- Which city has the highest number of restaurants?
select top 10  City,count(*) as total_restaurant  from Zomato_Dataset
group by City order by total_restaurant desc
-- Which city has the highest average restaurant rating?
select top 10 city,avg(Rating) as restaurant_rating from Zomato_Dataset 
group by City order by restaurant_rating
-- Which restaurants have both online delivery and table booking?
select RestaurantName,Has_Online_delivery,Has_Table_booking from Zomato_Dataset
where Has_Online_delivery='yes'and Has_Table_booking='1'
-- Which restaurants have ratings above 4.5?
select RestaurantName,Rating from Zomato_Dataset
where Rating > 4.5
-- Which restaurants fit within a customer budget of 1000 for two people?
select RestaurantName,Average_Cost_for_two from Zomato_Dataset 
where Average_Cost_for_two <= 1000
-- Does online delivery affect restaurant ratings?
select Has_Online_delivery,AVG(Rating) as Avg_rating from Zomato_Dataset
group by Has_Online_delivery
-- Does table booking affect customer ratings?
select Has_Table_booking,AVG(Rating) as Avg_rating from Zomato_Dataset
group by Has_Table_booking
-- Which cuisine has the highest average rating?
select top 10 Cuisines,AVG(Rating) as Avg_rating from Zomato_Dataset
group by Cuisines
order by Avg_rating desc
-- Which price range has the most restaurants?
SELECT  Price_range,COUNT(*) AS Total FROM Zomato_Dataset
GROUP BY Price_range
ORDER BY Total DESC;
-- Which restaurants have high ratings but low cost?
select RestaurantName,Rating,Average_Cost_for_two  from Zomato_Dataset
where Rating>=4 and Average_Cost_for_two <= 500  
-- Which restaurants have low ratings despite high cost?
select RestaurantName,Rating,Average_Cost_for_two  from Zomato_Dataset
where Rating<=2 and Average_Cost_for_two >= 1000  
-- Which restaurants are most popular based on votes?
select top 5 RestaurantName,Votes from Zomato_Dataset order by Votes desc
-- Which restaurants provide the best value for money?
SELECT RestaurantName,rating,Average_Cost_for_two FROM Zomato_Dataset
WHERE rating>=4 AND Average_Cost_for_two<=1000
ORDER BY rating DESC