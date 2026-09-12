create database Practice1;
use practice1;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    age INT
);

INSERT INTO customers VALUES
(1, 'Aarav', 'Mumbai', 24),
(2, 'Priya', 'Pune', 29),
(3, 'Rahul', 'Nagpur', 26),
(4, 'Sneha', 'Delhi', 32),
(5, 'Karan', 'Mumbai', 27),
(6, 'Neha', 'Pune', 23),
(7, 'Rohan', 'Nagpur', 31),
(8, 'Ananya', 'Delhi', 25),
(9, 'Vikram', 'Mumbai', 35),
(10, 'Isha', 'Pune', 28);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Mobile Phone', 'Electronics', 30000),
(103, 'Headphones', 'Electronics', 2500),
(104, 'Office Chair', 'Furniture', 8000),
(105, 'Desk', 'Furniture', 12000),
(106, 'Keyboard', 'Electronics', 3500),
(107, 'Running Shoes', 'Footwear', 4500),
(108, 'Backpack', 'Accessories', 2200),
(109, 'Smart Watch', 'Electronics', 7000),
(110, 'Sunglasses', 'Accessories', 1800);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(1001, 1, '2026-01-05', 'Delivered'),
(1002, 2, '2026-01-08', 'Delivered'),
(1003, 3, '2026-01-10', 'Cancelled'),
(1004, 1, '2026-01-15', 'Delivered'),
(1005, 4, '2026-01-18', 'Delivered'),
(1006, 5, '2026-01-20', 'Pending'),
(1007, 6, '2026-01-22', 'Delivered'),
(1008, 7, '2026-01-25', 'Delivered'),
(1009, 8, '2026-02-01', 'Cancelled'),
(1010, 9, '2026-02-03', 'Delivered'),
(1011, 10, '2026-02-05', 'Delivered'),
(1012, 2, '2026-02-08', 'Delivered'),
(1013, 3, '2026-02-10', 'Delivered'),
(1014, 5, '2026-02-12', 'Delivered'),
(1015, 1, '2026-02-15', 'Delivered');
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1001, 103, 2),
(3, 1002, 102, 1),
(4, 1002, 106, 1),
(5, 1003, 107, 1),
(6, 1004, 104, 1),
(7, 1004, 108, 2),
(8, 1005, 105, 1),
(9, 1005, 103, 1),
(10, 1006, 109, 1),
(11, 1007, 107, 2),
(12, 1008, 101, 1),
(13, 1008, 106, 2),
(14, 1009, 110, 2),
(15, 1010, 102, 1),
(16, 1010, 109, 1),
(17, 1011, 108, 1),
(18, 1012, 101, 1),
(19, 1012, 103, 1),
(20, 1013, 104, 2),
(21, 1014, 105, 1),
(22, 1014, 108, 1),
(23, 1015, 102, 2),
(24, 1015, 106, 1);
CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    rating INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO reviews VALUES
(1, 1, 101, 5),
(2, 1, 103, 4),
(3, 2, 102, 5),
(4, 2, 106, 4),
(5, 3, 104, 3),
(6, 4, 105, 5),
(7, 5, 109, 4),
(8, 6, 107, 5),
(9, 7, 101, 4),
(10, 8, 110, 3),
(11, 9, 102, 5),
(12, 10, 108, 4);
-- limit
## Q1. Find the 5 most expensive products.
select * from products order by price desc limit 5;

## Q2. Find the 3 youngest customers.
select * from customers order by age asc limit 3;

## Q3. Find the 2 most recent orders.
select * from orders order by order_date desc limit 2;

## Q4. Find the 3 cheapest products.
select * from products order by price limit 3;

-- joins
## Q5. Display the customer name and order date for every order.
select c.customer_name,o.order_date from customers as c join orders as o on
c.customer_id = o.customer_id;

## Q6. Display the customer name and product name for every product they purchased.
select c.customer_name,p.product_name from customers as c join orders as o on c.customer_id = o.customer_id
join order_items as oi on oi.order_id=o.order_id join products as p on p.product_id= oi.product_id;

-- having
## Q7. Find customers who have placed more than 1 order.
select c.customer_name,count(o.order_id)Order_count from customers as c join orders as o on
c.customer_id = o.customer_id group by 1 having order_count>1;

## Q8. Find cities having more than 2 customers
select city,count(*)Customer_count from customers group by 1 having customer_count>2;

## Q9. Find customers whose total number of ordered items is greater than 2.
select c.customer_name,count(oi.order_item_id)item_count from customers as c join orders as o on
c.customer_id = o.customer_id join order_items as oi on oi.order_id=o.order_id
group by 1 having item_count>2;

## Q10. Find product categories having an average product price greater than ₹10,000.
select category,avg(price)Avg_price from products group by 1 having avg(price)>10000; 

-- subqueries
## Q11. Find products whose price is greater than the average product price.
select * from products where price > (select avg(price) from products);

## Q12. Find customers whose age is greater than the average customer age.
select * from customers where age> (select avg(age) from customers);

## Q13. Find the product with the highest price using a subquery.
select * from products where price =(select max(price) from products);

## Q14. Find customers who have placed at least one order. ----------------imp
select * from customers where customer_id in (select customer_id from orders);
-- OR
select c.customer_name,count(o.order_id)Order_count from customers as c join orders as o on
c.customer_id = o.customer_id group by 1 having order_count>=1;

## Q15. Find products that have never been ordered.  ------------------imp
select * from products where product_id not in (select product_id from order_items);

## Q16. Find the customer(s) who placed the most recent order.
Select * from orders where order_date=(select max(order_date) from orders);
-- OR
select c.customer_id,c.customer_name,max(o.order_date)recentorder from customers as c join orders as o on
c.customer_id = o.customer_id group by 1,2 having max(o.order_date) order by o.order_date desc limit 1; 

-- CTE
## Q17. Using a CTE, find products whose price is greater than the average product price.
with product_price as (
select product_name,price , (select avg(price) from products)Avg_price from products) 
select * from product_price having price > avg(price);

## Q18. Using a CTE, find customers who have placed more than 1 order.
with customer_orders as (
select customer_id,count(order_id)cust_order from orders group by 1)
select c.customer_id,c.customer_name,co.cust_order from customers as c join customer_orders as co on
c.customer_id = co.customer_id where cust_order>1;----- after cte we cam use where for aggregates

## Q19. Using a CTE,calc the total quantity ordered for each product,then display products where total quantity> 2.
with pro_quan as (
select product_id,sum(quantity)Quan from order_items group by 1)
select p.product_id,p.product_name,pq.quan from products as p join pro_quan as pq on pq.product_id=p.product_id
where quan>2;

## Q20. Using a CTE,find the avg price of each product category & display categories whose avg price is above ₹5,000.
with cat_price as (
select product_name,category,price,(select avg(price) from products)Avg_ from products )
select * from cat_price where avg_ >5000;

## Q21. Find total amount spent by each customer
WITH customer_spending AS (
SELECT o.customer_id,SUM(oi.quantity * p.price)total_spent FROM orders AS o JOIN order_items AS oi
ON o.order_id = oi.order_id JOIN products AS p ON oi.product_id = p.product_id GROUP BY 1)
SELECT c.customer_name,cs.total_spent FROM customers AS c JOIN customer_spending AS cs 
ON c.customer_id = cs.customer_id;
    
## Q22. Find no of products in each category and display only category having more than 2 products
with pro_cat as (
select count(product_id)Pro_count,category from products group by 2)
select * from pro_cat where pro_count>2;

-- windows function
## Q23. Row no to every products based on price high to low
select Sr,product_name,price,category from (
select *,row_number() over(order by price desc)Sr from products)anyame;
----- subquery if i want sr in 1st column

## Q24. Rank products based on price from high to low
select Sr,product_name,price,category from (
select *,rank() over(order by price desc)Sr from products)anyame;

## Q25. Rank all products on price using dense rank with most exp product receivig rank 1
select *, dense_rank() over(order by price desc)Rnk from products ;

## Q26. Rank products within eacg category based on price from high to low
select *, dense_rank() over(partition by category order by price desc)Rnk from products;

## Q27. Display every customer along with total number of orders placed by that customer, w/o collapsing the rows.
select c.customer_name,count(o.order_id) over(partition by c.customer_id)totalorders 
from customers as c join orders as o on c.customer_id = o.customer_id group by 1;
## For every order item, calculate the running total quantity ordered, ordered by order_id.
select order_id,sum(quantity) over(order by order_id)total_quan from order_items group by 1;

## Q28. For each customer, display their current order date and their previous order date.
select customer_id,order_date,lag(order_date) over(partition by customer_id order by order_date)previous_orderdate 
from orders;

## Q29. For each customer, display their current order date and their next order date.
select customer_id,order_date,lead(order_date) over(partition by customer_id order by order_date)previous_orderdate 
from orders;

## Q30. For each customer, find the number of days between their current order and their previous order.
with pre_order as (
select customer_id,order_date,lag(order_date) over(partition by customer_id order by order_date)previous_orderdate
from orders)
select customer_id,order_date,previous_orderdate,datediff(order_date,previous_orderdate) as diff from pre_order;
