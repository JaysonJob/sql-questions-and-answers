# SQL Assignment – Store Database

This is a SQL practice assignment I worked on to get more comfortable writing 
queries — everything from basic SELECTs all the way to window functions and CTEs.

---

## What's in here?

The database simulates a small retail store with four tables:

- Customers – 50 customers with names, emails, phone numbers, registration dates, 
  and membership tiers (Bronze, Silver, Gold)
- Products – 15 products across Electronics, Appliances, and Accessories
- Sales – purchase records linking customers to products
- Inventory – stock levels for each product

Everything lives inside a schema called assignmentt.

---

## What the queries cover

I worked through 90 questions total, broken into sections:

Basic queries (1–20)
Simple stuff — selecting data, filtering, counting, aggregating, and joining tables.

Intermediate queries (21–50)
More joins across multiple tables, grouping, date filtering, pattern matching 
with LIKE, and ordering results.

Subqueries (51–60)
Finding things like "customers who spent more than average" or "products never 
sold" using nested SELECT statements.

CTEs (61–70)
Same logic as subqueries but written as WITH blocks, which makes them a lot 
easier to read.

Window Functions (71–80)
RANK, DENSE_RANK, NTILE, LAG, LEAD, and running totals — all useful for 
ranking and comparing rows without collapsing them.

Advanced analytical questions (81–90)
Combinations of everything above — multi-category purchases, stock comparisons, 
top customers, and more.

---

## How to run it

You'll need PostgreSQL. Just run the script from top to bottom — it creates 
the schema, builds the tables, inserts all the data, and runs through every question.

No external dependencies, no setup beyond a basic Postgres instance.

---

## Tools used

- PostgreSQL
