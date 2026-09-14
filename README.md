# Order Demand and Sales Performance Dashboard

## Project Overview

This project analyzes order-level sales data using Power BI.

The dashboard focuses on regional demand, product performance, category contribution, discount impact, and monthly revenue trends. The analysis demonstrates how transactional data can support demand planning, inventory prioritization, and operational decision-making.

## Dashboard Preview

![Dashboard Preview](dashboard-preview.png)

## Data Model

The Power BI model uses a star-schema approach with:

- Date dimension
- Product dimension
- Customer dimension
- Region dimension
- Order-level sales fact table

![Data Model](data-model.png)

## Key Metrics

- Total Revenue: $114.75K
- Total Orders: 120
- Average Order Value: $956.27
- Units Sold: 537

## Key Insights

Based on this synthetic dataset:

- West generated the highest regional revenue at $34.7K.
- Electronics was the strongest category, generating $88.9K.
- Laptop was the top-performing product, contributing $71.9K.
- Revenue peaked in February at $49.3K.

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
- CSV
- Data modeling
- Data visualization

## Measures

```DAX
Total Revenue =
SUM('sales_day1_practice 2'[revenue])

Total Orders =
DISTINCTCOUNT('sales_day1_practice 2'[order_id])

Units Sold =
SUM('sales_day1_practice 2'[quantity])

Average Order Value =
DIVIDE([Total Revenue], [Total Orders])
