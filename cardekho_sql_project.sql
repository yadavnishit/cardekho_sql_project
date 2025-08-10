-- create a database
create database cardekho;
use cardekho;

-- print the all data 
select * from car;

-- count the total number of car in the file
select count(*) from car;

-- count the total number of car by each brand
select brand , count(*) from car
group by brand;

-- count the total number of car by fuel type
select fuel_type , count(*) from car
group by fuel_type;

-- count the total number of car each transmission type
select transmission_type , count(*) from car
group by transmission_type;

-- count the total number of car of each seller 
select seller_type , count(*) from car
group by seller_type;

-- calculate the avg selling price of each seller  type
select seller_type , avg(selling_price) from car
group by seller_type;

-- calculate the avg selling price of each transmission type
select transmission_type , avg(selling_price) from car
group by transmission_type;

-- calculate the avg selling price of each brand
select brand , avg(selling_price) from car
group by brand;

-- how many car that have age is more than 10 years
select count(*) from car
where vehicle_age > 10;

-- how many car that have age is less than 10 years
select count(*) from car
where vehicle_age <= 10;

-- top 5 most expensive cars
select * from car
order by selling_price desc
limit 5;

-- Compare the average price of manual vs automatic transmission cars.
select transmission_type , avg(selling_price) from car
group by transmission_type;

-- How many cars are listed by each seller type
select seller_type , count(*) from car
group by seller_type;

-- calculate the max mileage of the car
select max(mileage) from car;

-- print the top 5 highest mileage car details
select * from car
order by mileage desc
limit 5;

-- count the total number of car that have fuel type is petrol and selling price range between 5 to 8 lakhs
select count(*) from car
where fuel_type = 'petrol' and  selling_price between 500000 and 800000;

-- calculate the mileage based of transmission type
select transmission_type , max(mileage) , min(mileage), avg(mileage) from car
group by transmission_type;

-- count the total number of car their mileage is more than avg mileage of the car
select transmission_type ,count(*) as total_count from car
where mileage > (select avg(mileage) from car)
group by transmission_type;


-- count the total number of car where the selling price is less than 10 lakhs
select count(*) from car
where selling_price < 1000000;

-- what is the maximum and minimum selling price for each fuel type
 select fuel_type,  max(selling_price), min(selling_price) from car
 group by fuel_type;
 
 
 -- count the most number of car grouped by model
 select model , count(*) from car
 group by model;


-- Find the average price of cars grouped by mileage ranges
 SELECT 
	CASE 
		WHEN mileage BETWEEN 10 AND 15 THEN '10-15 kmpl'
		WHEN mileage BETWEEN 15 AND 20 THEN '15-20 kmpl'
		WHEN mileage BETWEEN 20 AND 25 THEN '20-25 kmpl'
		WHEN mileage > 25 THEN '25+ kmpl'
		ELSE 'Below 10 kmpl'
   END AS mileage_range,
AVG(selling_price) AS avg_selling_price
FROM Car
GROUP BY mileage_range
ORDER BY avg_selling_price DESC;

-- count the avg mileage of every fuel_type
select fuel_type , avg(mileage) from car
group by fuel_type;

-- count to total car where mileage is more than 20 and selling_price is less than 3 lakhs
select count(*) from car
where mileage >20 and selling_price <300000;