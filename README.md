# Pizza-Sales-Insight-Operational-Analysis-SQL-Power-BI
A comprehensive SQL and Power BI project analyzing pizza outlet sales, featuring trend analysis, KPI tracking, and menu performance (Top/Bottom sellers).

Pizza Sales Performance Analysis (SQL & Power BI)
📋 Project Overview
The goal of this project is to uncover valuable insights from pizza sales data to help the pizza outlet make important data-driven decisions to increase overall sales. This project combines SQL for data analysis and Power BI for interactive visualization.

📊 Client Requirements & Key Metrics
The analysis focuses on several critical business metrics as requested:

1. Key Performance Indicators (KPIs)

Total Revenue: Calculation of the overall financial gain.


Total Orders: Total number of orders placed.


Total Pizzas Sold: Total quantity of pizzas sold.


Average Order Value: The average amount spent per order.


Average Pizzas Per Order: Insight into customer purchasing behavior.

2. Trend Analysis

Daily Trends for Total Orders: Identifying the busiest days of the week.


Hourly Trends for Total Orders: Pinpointing peak hours for order volume.

3. Sales Breakdown

Percentage of Sales by Pizza Category: Sales distribution across different pizza types.


Percentage of Sales by Pizza Size: Analysis of sales by size (L, M, S, etc.).


Total Pizzas Sold by Category: Volume distribution per category.

4. Product Performance

Top 5 Best Sellers: Identification of the most popular pizzas by total quantity sold.


Top 5 Worst Sellers: Identification of the least performing pizzas to help optimize the menu.

🛠️ Technical Implementation
SQL Analysis
Used SQL Server to query and extract key metrics. Highlights from the PIZZA's Sales.sql include:

Joining tables (pizzas, order_details, pizza_types) to calculate revenue and sales volume.

Using DATEPART and FORMAT functions to extract daily and hourly trends.

Applying TOP(5) and ORDER BY to identify best and worst sellers.

Power BI Dashboards
Created a 3-page interactive report (as shown in the screenshots):

Home Dashboard: High-level KPIs and category/size distributions.

Order's Dashboard: Detailed breakdowns by week, day, and month.

Revenue Dashboard: In-depth financial analysis by pizza name and month.

📂 Project Structure
PIZZA's Sales.sql: Contains all SQL queries for KPI calculations and trend analysis.
Screenshots/: Visual previews of the finalized dashboards.
