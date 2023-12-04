# Pizza Shop Analytics Project

## Project Summary

This project aimed to analyze the sales data of a pizza shop company to derive meaningful insights and support data-driven decision-making. The analysis was conducted using SQL for data extraction and transformation, and Power BI for visualization and reporting.

## Business Problem & Key Questions

The pizza shop company sought to understand and optimize its sales performance. Key questions included:

- What is the total revenue generated?
- How many orders were placed in a given period?
- What is the average order value?
- How many pizzas were sold on average per order?
- What are the top and bottom-selling pizza categories and sizes?
- What is the daily and monthly sales trend?
- Are there any notable patterns or trends in sales data?

## Approach

The project followed a systematic approach to address the business problem:

1. **Data Import and SQL Queries:**
   - Raw data was imported into SQL Server Management Studio.
   - SQL queries were written to extract key performance indicators (KPIs) such as total revenue, total orders, average order value, average pizzas per order, and total pizzas sold.

2. **Trend Analysis:**
   - Additional SQL queries were developed to analyze daily and monthly sales trends.
   - Sales data was examined for each weekday and month to identify patterns and variations.

3. **Category and Size Analysis:**
   - SQL queries were implemented to calculate the percentage of sales by pizza category and size.
   - Top and bottom 5 best sellers were determined based on revenue, total quantity, and total orders.

4. **Data Cleaning and Power BI Integration:**
   - SQL data was connected to Power BI.
   - Data cleaning and transformation were performed in Power Query, including column formatting, duplicate removal, and data type adjustments.

5. **Key Performance Indicators (KPIs) in Power BI:**
   - Measures were created in Power Query to calculate KPIs like total revenues, total orders, average order value, and average pizzas sold.

6. **Visualization and Reporting:**
   - Various Power BI visualizations, including bar charts, area charts, donut charts, and funnel charts, were employed to represent the data effectively.
   - Two dashboards were created, and hyperlinks were used for easy navigation.

## Data Cleaning

In the data cleaning phase, several steps were taken to ensure data accuracy and consistency:
- Abbreviated values in columns, such as pizza size, were converted to descriptive text.
- New columns for weekday and month extraction from the order date were added.
- Duplicate values were identified and removed.
- Data types for fields like Total Price and Unit Price were adjusted for better representation.

## Results and Key Takeaways

1. **Peak Order Times:**
   - Orders were found to be highest on weekends, particularly on Friday and Saturday evenings.

2. **Seasonal Variations:**
   - Maximum orders were observed in July and January, indicating potential seasonal trends.

3. **Category and Size Contributions:**
   - The "Classic" pizza category significantly contributed to both sales and total orders.
   - Large-sized pizzas were found to generate the highest sales.

4. **Visualization Highlights:**
   - Daily trend bar charts and monthly trend area charts provided a clear representation of sales patterns.
   - Donut charts effectively communicated the percentage of sales by category and size.
   - Funnel charts identified the top and bottom 5 sellers based on revenue and total orders.

## Key Insights

In conclusion, this project uncovered actionable insights for the pizza shop company, empowering them to make informed decisions. Understanding peak order times, seasonal variations, and the impact of pizza category and size on sales provides a foundation for targeted marketing and operational improvements.
