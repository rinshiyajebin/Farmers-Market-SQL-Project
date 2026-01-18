# Farmers-Market-SQL-Project
This project uses SQL to analyze a Farmers Market database, covering products, vendors, customers, booth assignments, and purchase behavior using real-world queries and aggregations.
Farmers Market SQL Project
📌 Project Overview

This project contains a collection of SQL queries designed to analyze and extract insights from a Farmers Market database. The queries cover products, vendors, customers, booth assignments, and purchase behavior across different market dates.

The project demonstrates practical use of SQL for data analysis, including filtering, aggregation, joins logic, string functions, date conditions, and case statements.

🗄️ Database Used

Database Name: farmers_market

Key Tables

product – Product details sold in the market

vendor – Vendor information

vendor_booth_assignments – Booth allocation per vendor per market date

customer – Customer details

customer_purchases – Purchase transactions

🔍 Key SQL Analysis Tasks
1. Product & Market Analysis

Retrieve all available products

Extract products by category

Identify products without size information

Filter products using range and conditional logic

2. Vendor & Booth Assignments

List vendor booth assignments with market dates

Find vendor booth history within specific date ranges

Analyze vendor product types (fresh produce vs non-produce)

3. Customer Analysis

Merge customer first and last names (normal & uppercase)

Search customers using partial string matching

Filter customers by specific last names

4. Purchase & Sales Insights

Calculate total amount paid by customers

Generate purchase history reports for a specific customer

Analyze customer purchases by vendor and date

Count distinct products purchased per customer per market date

Calculate total quantity purchased per customer per day

5. Advanced SQL Concepts Used

GROUP BY, ORDER BY

SUM(), COUNT(), COUNT(DISTINCT)

CASE WHEN

LIKE, IN, BETWEEN

CONCAT(), UPPER()

Conditional filtering with AND / OR
