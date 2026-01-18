use farmers_market;
#1. Get all the products available in the market
select *from product;

# 2. List down 10 rows of vendor booth assignments, displaying the market date,vendor ID, and booth number from the vendor_booth_assignments table.
select*from vendor_booth_assignments;
select market_date,vendor_id,booth_number from vendor_booth_assignments limit 10;

#3. In the customer purchases, we have quantity and cost per qty separate, query the total amount that the customer has paid along with date, customer id, vendor_id, qty, cost per qty and the total amt.? 
SELECT customer_id,SUM(quantity * customer_id) AS total_amount_paid FROM customer_purchases GROUP BY customer_id;

#4. Merge each customer’s name into a single column that contains the first name, then a space, and then the last name. 
SELECT customer_id,CONCAT(customer_first_name, ' ', customer_last_name) AS customer_name FROM customer;

#5. Extract all the product names that are part of product category 1.
select product_name from product where product_category_id=1;

#6. How many products where for sale on each market date 
#select market_date,count (product_id)from product group by market_date order by market_date;

# 7. Print a report of everything customer_id 4 has ever purchased at the farmer’s market, sorted by market date, vendor ID, and product ID.
select market_date,vendor_id,product_id from customer_purchases where customer_id=4;

#8. Get all the product info for products with id between 3 and 8 (not inclusive)or product with id 10.
SELECT *FROM product WHERE (product_id > 3 AND product_id < 8)OR product_id = 10;

#9. Details of all the purchases made by customer_id 4 at vendor_id 7, along with the total_amt. 
select customer_id,vendor_id ,SUM(quantity * cost_to_customer_per_qty)from customer_purchases where customer_id=4 and vendor_id=7;

# 10. Find the customer detail with the first name of “carlos” or the last name of “diaz”
select *from customer where customer_first_name="carlos" and customer_last_name="diaz";

# 11. Find the booth assignments for vendor 7 for any market date that occurred  between april 3, 2019, and may 16, 2019 
select vendor_id,booth_number,market_date from vendor_booth_assignments where vendor_id= 7 AND market_date BETWEEN '2019-04-03' AND '2019-05-16';

# 12 Return a list of customers with selected last names - [diaz, edwards and wilson].
select *from customer where customer_last_name in ("diaz","edwards","wilson");

# 13. Analyze purchases made at the farmer’s market on days when it rained.

#14. Return all products without sizes.
--select * from product where product_size is null;
select*from product;

#15. You want to get data about a customer you knew as “jerry,” but you aren’t sure if he was listed in the database as “jerry” or “jeremy” or “jeremiah.”  How would you get the data from this partial string?
SELECT *FROM customer WHERE customer_first_name LIKE 'jer%';

#16. We want to merge each customer’s name into a single column that contains the first name, then a space, and then the last name in upper case. 
SELECT customer_id,UPPER(CONCAT(customer_first_name, ' ', customer_last_name)) AS customer_name FROM customer;

#17. Find out what booths vendor 2 was assigned to on or before April 20, 2019
#SELECT vendor_id,booth_number,market_date FROM vendor_booth_assignments WHERE vendor_id = 2 AND market_date <= '2019-04-20';

#18. Find out which vendors primarily sell fresh produce and which don’t
#SELECT vendor_id,vendor_name,CASE WHEN product_qty_type = 'Fresh Produce' THEN 'Sells Fresh Produce'ELSE 'Does Not Sell Fresh Produce'
END AS produce_status FROM vendor;

#19. Calculate the total quantity purchased by each customer per market_date
SELECT customer_id,market_date,SUM(quantity) AS total_quantity FROM customer_purchases
GROUP BY customer_id, market_date ORDER BY customer_id, market_date;

#20. How many different kinds of products were purchased by customer 10 on each market_date
SELECT customer_id,market_date,COUNT(DISTINCT product_id) AS different_products_purchased FROM customer_purchases WHERE 
customer_id = 10 GROUP BY customer_id, market_date ORDER BY market_date;
