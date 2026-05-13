create schema assignmentt;
set search_path to assignemtt;
-- CREATE Customers table in the assignment schema
CREATE TABLE assignmentt.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignmentt.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignmentt.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignmentt.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignmentt.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignmentt.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignmentt.products(product_id)
);
-- Inserting data into assignment.Customers table
INSERT INTO assignmentt.Customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignmentt.customers;

-- Inserting data into assignment.Products table
INSERT INTO assignmentt.Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);
select * from assignmentt.products;

-- Inserting data into assignment.Sales table
INSERT INTO assignmentt.Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO assignmentt.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);


SELECT * FROM assignmentt.Customers;

SELECT * FROM assignmentt.Products;

SELECT * FROM assignmentt.Sales;

SELECT * FROM assignmentt.Inventory;

-- 1. Write a query to select all data from the `Customers` table.
select * from assignmentt.customers;
-- 2. Write a query to select the total number of products from the `Products` table.
select count(*) from assignmentt.products;

--3.Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
select product_name,price
 from assignmentt.products
 group by product_name,price 
 having price > 500;

--4.Write a query to find the average price of all products from the `Products` table.
select product_name,AVG(price) as avg_price
from assignmentt.products
group by product_name;

--5.Write a query to find the total sales amount across all records from the `Sales` table.
select SUM(total_amount) as totals
from assignmentt.sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
select distinct(membership_status)
from assignmentt.customers;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select concat(first_name,'  ',last_name) as full_name
from assignmentt.customers;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select product_name
from assignmentt.products
where category = 'Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
select MAX(price) as highest_price
from assignmentt.products;

--10. Write a query to count the number of sales for each product from the `Sales` table.
select count(*) 
from assignmentt.sales;

--11. Write a query to find the total quantity sold for each product from the `Sales` table.
select product_id,SUM(quantity_sold) as total_quality
from assignmentt.sales
group by product_id;

-- 12. Write a query to find the lowest price of products in the `Products` table.
select MIN(price)
from assignmentt.products;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
select product_id
from assignmentt.products
where price > 1000;

--14.Write a query to join the `Sales` and `Products` tables on product_id, and Show product name and total sales amount per product
select c.customer_id,c.first_name,c.last_name
from assignmentt.customers as c
join assignmentt.sales as s
on c.customer_id = s.customer_id
join assignmentt.products p ON s.product_id = p.product_id
where p.price > 1000;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
select c.customer_id,c.first_name,c.last_name,SUM(total_amount) AS total_spent
from assignmentt.customers as c
join assignmentt.sales as s 
ON c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
select c.first_name, c.last_name, p.product_name, s.quantity_sold
from assignmentt.customers as c
join assignmentt.sales as s 
ON c.customer_id = s.customer_id
join assignmentt.products as p 
ON s.product_id = p.product_id;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
select a.customer_id as customer1_id, a.first_name AS customer1_name,
       b.customer_id AS customer2_id, b.first_name AS customer2_name,
       a.membership_status
from assignmentt.customers as a
join assignmentt.customers as b
  on a.membership_status = b.membership_status
 and a.customer_id < b.customer_id;

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
select p.product_name,COUNT(sale_id) AS sales_count
from assignmentt.sales as s
join assignmentt.products as p 
ON s.product_id = p.product_id
group by p.product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
select product_name,stock_quantity
from assignmentt.products
group by product_name,stock_quantity
having stock_quantity<10;

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with total sales quantity greater than 5.
select * from assignmentt.products,assignmentt.sales;
select p.product_name, SUM(s.quantity_sold) AS total_qty_sold
from assignmentt.sales as s
join assignmentt.products as p
ON s.product_id = p.product_id
group by p.product_name
having SUM(s.quantity_sold) > 5;

--21.Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
select c.customer_id,c.first_name
from assignmentt.customers as c
join assignmentt.sales as s
on c.customer_id=s.customer_id
join assignmentt.products as p
on p.product_id=s.product_id
where p.category in('Electronics','Appliances');
-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
select SUM(price),product_name
from assignmentt.products
group by product_name;
-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
select distinct c.customer_id, c.first_name, c.last_name
from assignmentt.customers as c
join assignmentt.sales as s
ON c.customer_id = s.customer_id
where EXTRACT(YEAR from s.sale_date) = 2023;

-- 24. Write a query to find the customers with the highest total sales in 2023.
select c.customer_id,c.first_name,c.last_name,SUM(total_amount) AS total_sales
FROM assignmentt.customers as c
JOIN assignmentt.sales as s 
ON c.customer_id = s.customer_id
where EXTRACT(YEAR FROM s.sale_date) = 2023
group by c.customer_id, c.first_name, c.last_name
order by total_sales desc
LIMIT 1;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
SELECT p.product_name, p.price
FROM assignmentt.products as p
JOIN assignmentt.sales as s 
ON p.product_id = s.product_id
order by p.price desc
LIMIT 1;

-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
select COUNT(DISTINCT s.customer_id) AS customer_count
from assignmentt.sales as s
join assignmentt.products as p
ON s.product_id = p.product_id
where p.price > 500;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
select COUNT(s.sale_id) AS total_sales
from assignmentt.sales as s
join assignmentt.customers as c
ON s.customer_id = c.customer_id
where c.membership_status = 'Gold';

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
select p.product_name,i.stock_quantity
from assignmentt.products as p
join assignmentt.inventory as i
ON p.product_id = i.product_id
where i.stock_quantity < 10;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
select c.customer_id,c.first_name,c.last_name,SUM(s.quantity_sold) AS total_qty
from assignmentt.customers as c
join assignmentt.sales as s
ON c.customer_id = s.customer_id
group by c.customer_id,c.first_name,c.last_name
having SUM(quantity_sold) > 5;
 

-- 30. Write a query to find the average quantity sold per product.
select product_id,AVG(quantity_sold) AS avg_qty_sold
from assignmentt.sales
group by product_id;

-- 31. Write a query to find the number of sales made in the month of December 2023.
select COUNT(*) AS sales_in_dec_2023
from assignmentt.sales
where extract(YEAR FROM sale_date) = 2023
  and extract(MONTH FROM sale_date) = 12;

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
select c.customer_id,c.first_name,c.last_name,SUM(total_amount) AS total_spent
from assignmentt.customers as c
join assignmentt.sales as s 
on c.customer_id = s.customer_id
where extract(YEAR from s.sale_date) = 2023
group by c.customer_id, c.first_name, c.last_name
order by total_spent desc;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
select p.product_name,i.stock_quantity
from assignmentt.products as p
join assignmentt.sales as s 
on p.product_id = s.product_id
join assignmentt.inventory as i 
on p.product_id = i.product_id
where i.stock_quantity < 5;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
select p.product_name,SUM(total_amount) AS total_sales
from assignmentt.sales as s
join assignmentt.products as p
on s.product_id = p.product_id
group by p.product_name
order by total_sales desc;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
select distinct c.customer_id,c.first_name,c.last_name
FROM assignmentt.customers as c
JOIN assignmentt.sales as s
on c.customer_id = s.customer_id
where s.sale_date between c.registration_date and c.registration_date + INTERVAL '7 days';

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
select s.sale_id,p.product_name,p.price,s.quantity_sold,s.total_amount
from assignmentt.sales as s
join assignmentt.products as p 
on s.product_id = p.product_id
where p.price between 100 and 500;

-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
select c.customer_id,c.first_name,c.last_name,COUNT(sale_id) AS purchase_count
from assignmentt.customers as c
join assignmentt.sales as s
on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name
order by purchase_count desc
limit 1;

-- 38. Write a query to find the total quantity of products sold per customer.
select c.customer_id,c.first_name,c.last_name,SUM(quantity_sold) AS total_qty_sold
from assignmentt.customers as c
join assignmentt.sales as s 
on c.customer_id = s.customer_id
group by c.customer_id,c.first_name,c.last_name;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
select product_name,stock_quantity,'Highest Stock' as stock_label
from assignmentt.products
where stock_quantity = (select MAX(stock_quantity)
from assignmentt.products)
UNION ALL
select product_name, stock_quantity, 'Lowest Stock' as stock_label
from assignmentt.products
where stock_quantity = (select MIN(stock_quantity) from assignmentt.products);

-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
select p.product_name,SUM(s.total_amount) as total_sales
from assignmentt.products as p
join assignmentt.sales as s 
on p.product_id = s.product_id
where p.product_name LIKE '%Phone%'
group by p.product_name;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
select c.first_name,c.last_name,p.product_name,SUM(total_amount) as total_sales_amount
from assignmentt.customers as c
inner join assignmentt.sales as s 
on c.customer_id = s.customer_id
inner join assignmentt.products p on s.product_id = p.product_id
where c.membership_status = 'Gold'
group by c.first_name,c.last_name,p.product_name;

-- 42. Write a query to find the total sales of products by category.
select p.category,SUM(total_amount) as total_sales
from assignmentt.products as p
join assignmentt.sales as s
on p.product_id = s.product_id
group by p.category;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
select p.product_name,
       EXTRACT(YEAR from s.sale_date) as sale_year,
       EXTRACT(MONTH from s.sale_date) as sale_month,
       SUM(total_amount) as total_sales
from assignmentt.sales as s
join assignmentt.products as p 
on s.product_id = p.product_id
group by p.product_name, sale_year, sale_month
order by sale_year, sale_month;

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
select p.product_name, i.stock_quantity
from assignmentt.sales as s
join assignmentt.products as p
on s.product_id = p.product_id
join assignmentt.inventory i on p.product_id = i.product_id
where i.stock_quantity > 0;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
select c.customer_id,c.first_name,c.last_name,SUM(total_amount) AS total_purchases
from assignmentt.customers as c
join assignmentt.sales as s on
c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name
order by total_purchases desc 
limit  5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.
select COUNT(product_id) as unique_products_sold
from assignmentt.sales as s
where EXTRACT(YEAR from sale_date) = 2023;

-- 47. Write a query to find the products that have not been sold in the last 6 months.
select p.product_name
from assignmentt.products as p
where p.product_id not in (
    select product_id
    from assignmentt.sales
    where sale_date >= current_date - INTERVAL '6 months');

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
select p.product_name,p.price,SUM(quantity_sold) AS total_qty_sold
from assignmentt.products as p
join assignmentt.sales as s
on p.product_id = s.product_id
where p.price between 200 and 800
group by p.product_name, p.price;

-- 49. Write a query to find the customers who spent the most money in the year 2023.
select c.customer_id,c.first_name,c.last_name,SUM(total_amount) AS total_spent
from assignmentt.customers as c
join assignmentt.sales as s 
on c.customer_id = s.customer_id
where extract(year from s.sale_date) = 2023
group by c.customer_id,c.first_name,c.last_name
order by total_spent desc;

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
select p.product_name,p.price,SUM(quantity_sold) as total_sold
from assignmentt.products as p
join assignmentt.sales as s 
on p.product_id = s.product_id
where p.price > 200
group by p.product_name, p.price
having SUM(quantity_sold) > 100;

---subqueries
-- 51. Which customers have spent more than the average spending of all customers?
select c.customer_id,c.first_name,c.last_name,SUM(total_amount) as total_spent
from assignmentt.customers as c
join assignmentt.sales as s 
on c.customer_id = s.customer_id
group by c.customer_id,c.first_name,c.last_name
having SUM(total_amount) > (
    select AVG(total_per_customer)
    from (select SUM(total_amount) as total_per_customer 
    from assignmentt.sales group by customer_id) subquery);

-- 52. Which products are priced higher than the average price of all products?
select product_name,price
from assignmentt.products
where price > (select AVG(price)from assignmentt.products);

-- 53. Which customers have never made a purchase?
select * 
from assignmentt.customers
where customer_id not in(select customer_id from assignmentt.sales);

-- 54. Which products have never been sold?
select * 
from assignmentt.products
where product_id not in(select product_id from assignmentt.sales);

-- 55. Which customer made the single most expensive purchase (total amount)?
select c.customer_id,c.first_name,c.last_name,s.total_amount
from assignmentt.customers as c
join assignmentt.sales as s 
on c.customer_id = s.customer_id
where s.total_amount = (select MAX(total_amount)
from assignmentt.sales);

-- 56. Which products have total sales greater than the average total sales across all products?
select p.product_name,SUM(total_amount) as total_sales
from assignmentt.products as p
join assignmentt.sales as s
on p.product_id = s.product_id
group by p.product_name
having SUM(total_amount)>(select AVG(product_total)
    from (select SUM(total_amount) as product_total
    from assignmentt.sales group by product_id) sub);

-- 57. Which customers registered earlier than the average registration date?
-- Average of a date column can be calculated using; SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE FROM assignment.customers
select * from assignmentt.customers
where registration_date < (
    select TO_TIMESTAMP(AVG(extract(EPOCH from registration_date)))::DATE
    from assignmentt.customers);
 
-- 58. Which products have a price higher than the average price within their own category?
select product_name,category,price
from assignmentt.products as p
where price > (
    select AVG(price)from assignmentt.products
    where category = p.category);
 
-- 59. Which customers have spent more than the customer with ID = 10?
select c.customer_id,c.first_name,c.last_name,SUM(total_amount) as total_spent
from assignmentt.customers as c
join assignmentt.sales as s
on c.customer_id = s.customer_id
group by c.customer_id,c.first_name,c.last_name
having SUM(total_amount) > (
    select SUM(total_amount) from assignmentt.sales where customer_id = 10);

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
select p.product_name,SUM(quantity_sold) as total_quantity
from assignmentt.products as p
join assignmentt.sales as s
on p.product_id = s.product_id
group by p.product_name
having SUM(s.quantity_sold) > (
    select AVG(quantity_per_product)
   from (select SUM(quantity_sold) as quantity_per_product
  from assignmentt.sales group by product_id) sub);

-- COMMON TABLE EXPRESSIONS (CTEs)

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
with customer_spending as (
    select customer_id,SUM(total_amount) as total_spent
    from assignmentt.sales
    group by  customer_id)
select c.customer_id,c.first_name,c.last_name,cs.total_spent
from customer_spending as cs
join assignmentt.customers as c
on cs.customer_id = c.customer_id
order by cs.total_spent desc
limit 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
with product_quantity as (
   select product_id,SUM(quantity_sold) AS total_quantity
    from assignmentt.sales
    group by product_id)
select p.product_name,pq.total_quantity
from product_quantity as pq
join assignmentt.products as p
on pq.product_id = p.product_id
order by pq.total_quantity desc
limit 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
with category_revenue as (
    select p.category,SUM(total_amount) as total_revenue
    from assignmentt.sales as s
    join assignmentt.products as p
    on s.product_id = p.product_id
    group by p.category)
select category,total_revenue
from category_revenue
order by total_revenue desc
limit 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
with purchase_counts as (
    select customer_id,COUNT(*) as purchase_count
    from assignmentt.sales
    group by customer_id)
select c.customer_id,c.first_name,c.last_name,pc.purchase_count
from purchase_counts as pc
join assignmentt.customers as c 
on pc.customer_id = c.customer_id
where pc.purchase_count > 2;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
with product_quantity as (
    select product_id,SUM(quantity_sold) AS total_quantity
    from assignmentt.sales
    group by product_id)
select p.product_name,pq.total_quantity
from product_quantity as pq
join assignmentt.products as p
on pq.product_id = p.product_id
where pq.total_quantity > (select AVG(total_quantity) from product_quantity);

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
with customer_spending as (
    select customer_id,SUM(total_amount) as total_spent
    from assignmentt.sales
    group by customer_id)
select c.customer_id,c.first_name,c.last_name,cs.total_spent
from customer_spending as cs
join assignmentt.customers as c 
on cs.customer_id = c.customer_id
where cs.total_spent > (select AVG(total_spent) from customer_spending);

-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
with product_revenue as (
    select product_id,SUM(total_amount) as total_revenue
    from assignmentt.sales
    group by product_id)
select p.product_name,pr.total_revenue
from product_revenue pr
join assignmentt.products as p 
on pr.product_id = p.product_id
order by pr.total_revenue desc;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
with monthly_sales as(
    select extract(year from sale_date) as sale_year,
           extract(month from sale_date) as sale_month,
           SUM(total_amount) as total_revenue
    from assignmentt.sales
    group by sale_year,sale_month)
select sale_year,sale_month,total_revenue
from monthly_sales
order by total_revenue desc
limit 1;

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
with sales_per_product as (
    select product_id,COUNT(customer_id) as unique_customers
  from assignmentt.sales
    group by product_id)
select p.product_name,spp.unique_customers
from sales_per_product as spp
join  assignmentt.products as p 
on spp.product_id = p.product_id
where spp.unique_customers > 3;

-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
with product_qty as (
    select product_id,SUM(quantity_sold) as total_qty
  from assignmentt.sales
    group by product_id)
select p.product_name,pq.total_qty
from product_qty as pq
join assignmentt.products as p
on pq.product_id = p.product_id
where  pq.total_qty < (select AVG(total_qty) from product_qty);

-- WINDOW FUNCTION QUESTIONS

-- 71. Rank customers based on the total amount they have spent.
select c.customer_id,c.first_name,c.last_name,
       SUM(total_amount) AS total_spent,
       RANK()OVER(ORDER BY SUM(total_amount) DESC) AS spending_rank
from assignmentt.customers as c
join assignmentt.sales as s 
on c.customer_id = s.customer_id
group by c.customer_id,c.first_name,c.last_name;
 

-- 72. Rank products based on total quantity sold.
select p.product_name,
       SUM(quantity_sold) AS total_quantity_sold,
       RANK()OVER(order by SUM(quantity_sold)desc) as quantity_rank
from assignmentt.products as p
join assignmentt.sales as s 
on p.product_id = s.product_id
group by p.product_name;

-- 73. Identify the 3rd highest spending customer.
select customer_id,first_name,last_name,total_spent
from( select c.customer_id, c.first_name, c.last_name,
           SUM(s.total_amount) as total_spent,
           DENSE_RANK() OVER (order by SUM(total_amount)desc) AS rank
    from assignmentt.customers as c
    join assignmentt.sales as s
    on c.customer_id = s.customer_id
    group by c.customer_id,c.first_name,c.last_name)ranked
where rank = 3;

-- 74. Identify the 2nd most expensive product.
select product_name,price
from(select product_name, price,
           DENSE_RANK() OVER (order by price desc) as rank
    from assignmentt.products) ranked
where rank = 2;

-- 75. Show the ranking of products within each category based on price.
select product_name,category,price,
       RANK() OVER (partition by category order by price desc) as price_rank
from assignmentt.products;
 
-- 76. Show the ranking of customers based on the number of purchases they made.
SELECT c.customer_id,c.first_name, 
       COUNT(s.sale_id) as purchase_count,
       RANK() OVER (order by COUNT(sale_id) desc) as purchase_rank
       from assignmentt.customers as c
join assignmentt.sales as s
on c.customer_id = s.customer_id
group by c.customer_id,c.first_name,c.last_name;

-- 77. Show the running total of sales amounts ordered by sale_date.
select sale_id,sale_date,total_amount,
       SUM(total_amount) OVER (order by sale_date) as running_total
from assignmentt.sales;

-- 78. Show the previous sale amount for each sale ordered by sale_date.
select sale_id,sale_date,total_amount,
       LAG(total_amount) OVER (order by sale_date) as prev_sale_amount
from assignmentt.sales;

-- 79. Show the next sale amount for each sale ordered by sale_date.
select sale_id,sale_date,total_amount,
       LEAD(total_amount) OVER (order by sale_date) as next_sale_amount
from assignmentt.sales;

-- 80. Divide customers into 4 groups based on total spending.
select c.customer_id,c.first_name,c.last_name,
       SUM(s.total_amount) as total_spent,
       NTILE(4) OVER (order by SUM(s.total_amount)desc) as spending_group
from assignmentt.customers as c
join assignmentt.sales as s 
on c.customer_id = s.customer_id
group by c.customer_id,c.first_name,c.last_name;
 
-- =====================================================

-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
select c.customer_id,c.first_name,c.last_name,
       COUNT(DISTINCT p.category) as categories_bought
from assignmentt.customers as c
join assignmentt.sales as s
on c.customer_id = s.customer_id
join assignmentt.products as p 
on s.product_id = p.product_id
group by c.customer_id,c.first_name,c.last_name
having COUNT(p.category) > 1;

-- 82. Which customers purchased products within 7 days of registering?
select distinct c.customer_id,c.first_name,c.last_name
from assignmentt.customers as c
join assignmentt.sales as s 
on c.customer_id = s.customer_id
where s.sale_date <= c.registration_date + INTERVAL '7 days';
 

-- 83. Which products have lower stock remaining than the average stock quantity?
select product_name,stock_quantity
from assignmentt.products
where stock_quantity < (select AVG(stock_quantity) from assignmentt.products);
 
-- 84. Which customers purchased the same product more than once?
select c.customer_id,c.first_name,c.last_name,s.product_id,COUNT(*) as times_purchased
from assignmentt.customers c
join assignmentt.sales s 
on c.customer_id = s.customer_id
group by c.customer_id, c.first_name, c.last_name, s.product_id
having COUNT(*) > 1;

-- 85. Which product categories generated the highest total revenue?
select p.category,SUM(total_amount) as total_revenue
from assignmentt.products as p
join assignmentt.sales s 
on p.product_id = s.product_id
group by p.category
order by total_revenue desc;

-- 86. Which products are among the top 3 most sold products?
select p.product_name,SUM(quantity_sold) as total_sold
from assignmentt.products as p
join assignmentt.sales as s 
on p.product_id = s.product_id
group by p.product_name
order by total_sold desc
limit 3;

-- 87. Which customers purchased the most expensive product?
select distinct c.customer_id,c.first_name,c.last_name
from assignmentt.customers as c
join assignmentt.sales as s
on c.customer_id = s.customer_id
join assignmentt.products as p
on s.product_id = p.product_id
where p.price = (select MAX(price) 
from assignmentt.products);

-- 88. Which products were purchased by the highest number of unique customers?
select p.product_name,COUNT(customer_id) as unique_customers
from assignmentt.products as p
join  assignmentt.sales as s 
on p.product_id = s.product_id
group by p.product_name
order by unique_customers desc;

-- 89. Which customers made purchases above the average sale amount?
select distinct c.customer_id,c.first_name,c.last_name
from assignmentt.customers as c
join assignmentt.sales as s
on c.customer_id = s.customer_id
where s.total_amount > (select AVG(total_amount) from assignmentt.sales);
 

-- 90. Which customers purchased more products than the average quantity purchased per customer?
select c.customer_id,c.first_name,c.last_name,SUM(quantity_sold) as total_qty
from assignmentt.customers as c
join assignmentt.sales as s
on c.customer_id = s.customer_id
group by c.customer_id,c.first_name,c.last_name
having SUM(quantity_sold) > (select AVG(total_quantity)
    from (select SUM(quantity_sold) as total_quantity
    from assignmentt.sales group by customer_id) sub);

-- ADVANCED WINDOW + ANALYTICAL PROBLEMS

-- 91. Which customers rank in the top 10% of spending?

-- 92. Which products contribute to the top 50% of total revenue?

-- 93. Which customers made purchases in consecutive months?

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?

-- 95. Which customers have spending above the average spending of their membership tier?

-- 96. Which products have higher sales than the average sales within their category?

-- 97. Which customer made the largest single purchase relative to their total spending?

-- 98. Which products rank among the top 3 most sold products within each category?

-- 99. Which customers are tied for the highest total spending?

-- 100. Which products generated sales every year present in the dataset?

-- 101. Update the products table to assign a price_category as Expensive (price > 1000), Moderate (price between 500 and 1000), or Affordable (price < 500) using CASE WHEN

-- 102. Update the customers table to assign a customer_level based on total spending as VIP (>20000), Regular (10000–20000), or New (<10000) using CASE WHEN

-- 103. Update the products table to assign a stock_status as Low Stock or Sufficient Stock based on stock_quantity using CASE WHEN

-- 104. Display each customer’s registration year from the registration_date

-- 105. Count how many customers registered in each year

-- 106. Find the total sales amount for each month

-- 107. Show all sales made in the year 2023

-- 108. Find the total sales amount for each year

-- 109. Calculate the number of days each customer has been registered (from registration_date to current date)

-- 110. Display each sale and extract the year and month from the sale date

-- 111. Display each customer’s email and replace null values with 'No Email Provided' using COALESCE

-- 112. Find customers who do not have an email address

-- 113. Find products that have never been sold using a subquery

-- 114. Find customers who have not made any purchases using a subquery

-- 115. Update the products table to assign a price_category (Premium, Standard, Budget) based on price using CASE WHEN

-- 116. Create a PostgreSQL function/procedure that takes a minimum revenue as input and returns all products whose total sales exceed that value

-- 117. Create a PostgreSQL function/procedure that takes a customer_id as input and returns the total amount spent by that customer

-- 118. Create a PostgreSQL function/procedure that takes a start_date and end_date as input and returns the number of orders made within that date range

-- 119. Create a PostgreSQL stored procedure that inserts a new record into the sales table 

-- 120. Create an index on the product_id column in the sales table to improve join performance

-- 121. Create an index on the registration_date column in the customers table to improve filtering by date

-- 122. Write a transaction that inserts a new sale using sale_id, customer_id, product_id, quantity_sold, sale_date, and total_amount, then updates the corresponding product stock_quantity, ensuring both operations succeed or fail together

-- 123. Write a transaction that updates a customer’s email and rolls back the change if the email is invalid

-- 124. Create a view that shows total revenue per product

-- 125. Create a view that shows each customer and their total spending

-- 126. Use UNION to combine a list of all customer first names and product names into a single column

-- 127. Use INTERSECT to find values that appear in both a list of customer IDs and a list of customer IDs who made purchases

-- 128. Perform an anti-join to find products that have never been sold using LEFT JOIN

-- 129. Use NOT EXISTS to find customers who have not made any purchases

-- 130. Cast the price column to an integer and display it alongside the original price

-- 131. Convert registration_date to text format and display it in 'YYYY-MM' format

-- 132. The following query returns an error due to improper GROUP BY usage. Identify and fix the issue
-- SELECT product_id, product_name, SUM(total_amount) FROM sales GROUP BY product_id;

-- 133. The following query incorrectly filters aggregated results using WHERE. Identify and correct it
-- SELECT product_id, SUM(total_amount) FROM sales WHERE SUM(total_amount) > 1000 GROUP BY product_id;

-- 134. The following query returns incorrect results because it uses the wrong join condition. Identify and fix it
-- SELECT *
-- FROM assignment.sales s
-- JOIN assignment.products p
--   ON s.customer_id = p.product_id;

-- 135. Replace NULL email values with 'No Email Provided' using COALESCE if any

-- 136. Trim any leading or trailing spaces from customer first names if any

-- 137. Convert all customer emails to lowercase if any

-- 138. Replace empty strings in phone numbers with NULL if any

-- 139. Extract the year from registration_date and handle any NULL dates gracefully if any




 


