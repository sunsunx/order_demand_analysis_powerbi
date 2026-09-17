# Order Demand and Sales Performance Dashboard

## Project Overview

This project analyzes order-level sales data using Power BI.
The dashboard focuses on regional demand, product performance, category contribution, discount impact, and monthly revenue trends. The analysis demonstrates how transactional data can support demand planning, inventory prioritization, and operational decision-making.

## Dashboard Preview

![Dashboard Preview](assets/dashboard_preview.png)

## Data Model
The Power BI model uses a star-schema approach with:
- Date dimension
- Product dimension
- Customer dimension
- Region dimension
- Order-level sales fact table

![Data Model](assets/data_model.png)

## Key Metrics
- Total Revenue: $114.75K
- Total Orders: 120
- Average Order Value: $956.27
- Discount Rate: 5.00%

## Key Insights
Based on this synthetic dataset:
- West generated the highest regional revenue at $34.7K.
- Electronics was the strongest category, generating $88.9K.
- Laptop was the top-performing product, contributing $71.9K.
- Revenue peaked in February at $49.3K.

## SQL Results
The SQL analysis confirmed that:
- The dataset contains 120 rows and 120 unique orders.
- West generated the highest revenue at $34,661.22.
- North ranked second with revenue of $32,400.46.
- Total units sold were 537.
- Total revenue was $114,752.49.

## Business Questions
This dashboard answers the following questions:
- Which region generates the most revenue?
- Which product category performs best?
- Which products contribute the most revenue?
- How does revenue change over time?
- How does discounting vary across categories?
- Which products or regions may require demand planning attention?

## Dataset
The dataset includes the following fields:
- `order_id`
- `order_date`
- `customer_id`
- `region`
- `product`
- `category`
- `quantity`
- `unit_price`
- `discount`
- `revenue`

## Tools
- Power BI
- DAX
- SQLite
- SQL
- CSV
- Data modeling
- Data visualization

## SQL Analysis
SQL was used to validate data quality, calculate business KPIs, and analyse regional, category, product, monthly, and discount performance.

The SQL analysis includes:
- Duplicate order checks
- Missing data validation
- KPI calculation
- Revenue by region and category
- Product performance ranking
- Monthly revenue trends
- Discount analysis

See the complete SQL queries here:
[View SQL analysis queries](sql/analysis_queries.sql)

## Measures
DAX
Total Revenue =
SUM('sales_day1_practice 2'[revenue])

Total Orders =
DISTINCTCOUNT('sales_day1_practice 2'[order_id])

Units Sold =
SUM('sales_day1_practice 2'[quantity])

Average Order Value =
DIVIDE([Total Revenue], [Total Orders])

## Data Disclaimer
This project uses a synthetic practice dataset created for learning and portfolio purposes. It does not represent a real company, customer, or business transaction.

## Scope and Limitations
This project focuses on order demand and sales performance. The dataset does not include inventory levels, supplier records, delivery dates, stockout records, or customer service ticket data.

Therefore, the dashboard should be interpreted as a sales and demand analysis rather than a complete supply chain performance system.

## Skills Demonstrated
- SQL querying and data quality validation
- Data modeling
- DAX measure creation
- KPI development
- Power BI dashboard development
- Business insight generation
- Supply chain-oriented analysis
