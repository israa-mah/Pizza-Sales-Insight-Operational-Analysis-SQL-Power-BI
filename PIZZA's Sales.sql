--===============================Pizza Sales Analysis======================================
select * from order_details
select * from orders
select * from pizza_types
select * from pizzas 

--============================= KPI's ================================================================
--===========================Total Orders=============================================================
select count(order_id) 
AS Total_Orders 
from orders
--===OR=====
select count(distinct(order_id)) AS Total_Orders 
from order_details

--===========================Total Pizza Sold==========================================================

select SUM(quantity) AS Total_PizzaSold from order_details

--===========================Total Reveneue============================================================

select SUM(quantity*price) AS Total_Revenue 
from order_details 
join pizzas 
on order_details.pizza_id = pizzas.pizza_id

--============================Average Order Value======================================================

select SUM(quantity*price)/count(distinct(order_id)) AS Average_Order_Value
from order_details 
join pizzas 
on order_details.pizza_id = pizzas.pizza_id

--============================Average Pizzas Per Order=================================================

select sum(quantity)/count(distinct(order_id)) AS Average_Pizzas_Per_Order from order_details

--============================Daily Trends For Total Orders============================================

select format(date,'dddd') AS Days,count(order_id) AS daily_Trend 
from orders
group by format(date,'dddd') 
order by daily_Trend DESC

--============================Hourly Trends For Total Orders============================================

select DATEPART( HOUR,time) AS Hours,count(order_id) AS Orders
from orders
group by DATEPART( HOUR,time)
order by Orders DESC

--=============================Total Pizzas Sold by Pizza Category=======================================

select category ,count(quantity) AS Total_Pizza_Sold 
from pizza_types 
join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details on order_details.pizza_id = pizzas.pizza_id 
group by category
order by Total_Pizza_Sold DESC

--==============================Top 5 Best Sellers by Total Pizzas Sold=================================
select TOP(5) name ,count(quantity) AS Total_Pizza_Sold 
from pizza_types 
join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details on order_details.pizza_id = pizzas.pizza_id 
group by NAME
order by Total_Pizza_Sold DESC

--===============================Top5 Worst Sellers by Total Pizzas Sold=================================
select TOP(5) name ,count(quantity) AS Total_Pizza_Sold 
from pizza_types 
join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details on order_details.pizza_id = pizzas.pizza_id 
group by NAME
ORDER BY Total_Pizza_Sold ASC