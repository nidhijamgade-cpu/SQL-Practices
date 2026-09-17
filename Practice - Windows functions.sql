create database practice2;
use practice2;
CREATE TABLE fd_customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    age INT
);

INSERT INTO fd_customers VALUES
(1, 'Aman', 'Mumbai', 25),
(2, 'Riya', 'Pune', 29),
(3, 'Sahil', 'Nagpur', 23),
(4, 'Kavya', 'Delhi', 31),
(5, 'Rohit', 'Mumbai', 27),
(6, 'Pooja', 'Pune', 24),
(7, 'Aditya', 'Nagpur', 30),
(8, 'Simran', 'Delhi', 26),
(9, 'Nikhil', 'Mumbai', 34),
(10, 'Meera', 'Pune', 28),
(11, 'Tanvi', 'Nagpur', 22),
(12, 'Yash', 'Delhi', 33);
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(50),
    city VARCHAR(50),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1)
);

INSERT INTO restaurants VALUES
(101, 'Spice Hub', 'Mumbai', 'Indian', 4.5),
(102, 'Pizza Point', 'Pune', 'Italian', 4.2),
(103, 'Biryani House', 'Nagpur', 'Indian', 4.7),
(104, 'Cafe Aroma', 'Delhi', 'Cafe', 4.0),
(105, 'Dragon Bowl', 'Mumbai', 'Chinese', 4.3),
(106, 'Burger Town', 'Pune', 'Fast Food', 3.9),
(107, 'South Express', 'Nagpur', 'South Indian', 4.6),
(108, 'Food Junction', 'Delhi', 'Indian', 4.1);CREATE TABLE fd_orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    order_date DATE,
    order_amount DECIMAL(10,2),
    status VARCHAR(30)
);

INSERT INTO fd_orders VALUES
(1001, 1, 101, '2026-01-05', 850, 'Delivered'),
(1002, 2, 102, '2026-01-07', 1200, 'Delivered'),
(1003, 3, 103, '2026-01-10', 950, 'Cancelled'),
(1004, 1, 105, '2026-01-15', 1500, 'Delivered'),
(1005, 4, 104, '2026-01-18', 700, 'Delivered'),
(1006, 5, 101, '2026-01-20', 1100, 'Delivered'),
(1007, 6, 106, '2026-01-22', 650, 'Pending'),
(1008, 7, 107, '2026-01-25', 900, 'Delivered'),
(1009, 8, 108, '2026-02-01', 1300, 'Cancelled'),
(1010, 9, 105, '2026-02-03', 1800, 'Delivered'),
(1011, 10, 102, '2026-02-05', 1400, 'Delivered'),
(1012, 2, 102, '2026-02-08', 1000, 'Delivered'),
(1013, 3, 103, '2026-02-10', 1250, 'Delivered'),
(1014, 5, 101, '2026-02-12', 900, 'Delivered'),
(1015, 1, 101, '2026-02-15', 1600, 'Delivered'),
(1016, 7, 107, '2026-02-18', 1150, 'Delivered'),
(1017, 9, 105, '2026-02-20', 2000, 'Delivered'),
(1018, 11, 103, '2026-02-22', 800, 'Delivered'),
(1019, 12, 108, '2026-02-25', 950, 'Delivered'),
(1020, 4, 104, '2026-02-27', 1100, 'Delivered');
CREATE TABLE fd_order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(50),
    quantity INT,
    item_price DECIMAL(10,2)
);

INSERT INTO fd_order_items VALUES
(1,1001,'Paneer Tikka',2,250),
(2,1001,'Naan',3,100),
(3,1002,'Farmhouse Pizza',1,700),
(4,1002,'Garlic Bread',2,250),
(5,1003,'Chicken Biryani',2,450),
(6,1004,'Hakka Noodles',2,500),
(7,1004,'Spring Roll',2,250),
(8,1005,'Cold Coffee',2,200),
(9,1005,'Sandwich',1,300),
(10,1006,'Butter Chicken',2,450),
(11,1006,'Naan',2,100),
(12,1007,'Veg Burger',2,250),
(13,1007,'Fries',1,150),
(14,1008,'Masala Dosa',2,300),
(15,1008,'Idli',2,150),
(16,1009,'Paneer Curry',2,400),
(17,1010,'Manchurian',2,350),
(18,1010,'Fried Rice',2,300),
(19,1011,'Margherita Pizza',2,500),
(20,1011,'Garlic Bread',1,250),
(21,1012,'Farmhouse Pizza',1,700),
(22,1012,'Pasta',1,300),
(23,1013,'Chicken Biryani',2,450),
(24,1013,'Kebab',1,350),
(25,1014,'Paneer Butter Masala',1,500),
(26,1014,'Naan',4,100),
(27,1015,'Butter Chicken',2,450),
(28,1015,'Biryani',1,500),
(29,1016,'Masala Dosa',2,300),
(30,1016,'Vada',2,200),
(31,1017,'Chilli Paneer',2,450),
(32,1017,'Fried Rice',2,350),
(33,1018,'Chicken Biryani',1,450),
(34,1018,'Naan',2,100),
(35,1019,'Paneer Curry',1,400),
(36,1019,'Roti',3,100),
(37,1020,'Cold Coffee',2,200),
(38,1020,'Pasta',2,300);
CREATE TABLE fd_payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30)
);

INSERT INTO fd_payments VALUES
(501,1001,'UPI','Success'),
(502,1002,'Card','Success'),
(503,1003,'UPI','Failed'),
(504,1004,'Card','Success'),
(505,1005,'Cash','Success'),
(506,1006,'UPI','Success'),
(507,1007,'Card','Pending'),
(508,1008,'UPI','Success'),
(509,1009,'Card','Failed'),
(510,1010,'Card','Success'),
(511,1011,'UPI','Success'),
(512,1012,'Card','Success'),
(513,1013,'UPI','Success'),
(514,1014,'Cash','Success'),
(515,1015,'UPI','Success'),
(516,1016,'Card','Success'),
(517,1017,'UPI','Success'),
(518,1018,'Cash','Success'),
(519,1019,'Card','Success'),
(520,1020,'UPI','Success');
CREATE TABLE fd_reviews (
    review_id INT PRIMARY KEY,
    order_id INT,
    customer_id INT,
    restaurant_id INT,
    rating INT
);

INSERT INTO fd_reviews VALUES
(1,1001,1,101,5),
(2,1002,2,102,4),
(3,1004,1,105,3),
(4,1005,4,104,5),
(5,1006,5,101,4),
(6,1008,7,107,5),
(7,1010,9,105,4),
(8,1011,10,102,5),
(9,1012,2,102,3),
(10,1013,3,103,5),
(11,1014,5,101,4),
(12,1015,1,101,5),
(13,1016,7,107,4),
(14,1017,9,105,5),
(15,1018,11,103,4),
(16,1019,12,108,3),
(17,1020,4,104,5);

## Q1. Assign a row number to every order, with the newest order getting number 1.
select *, row_number() over ( order by order_date desc )sequence from fd_orders;

## Q2. Assign a row number to each customer's orders, with their earliest order getting number 1.
select *, row_number() over (partition by customer_id order by order_date asc)sequence from fd_orders;

## Q3. Rank all restaurants based on their rating, highest rating first.
select *, rank() over(order by rating desc)rnk from restaurants;

## Q4. Rank restaurants within each city based on rating, highest rating first.
select *, rank() over(partition by city order by rating desc)rnk from restaurants;

## Q5. Find the highest-rated restaurant in each city using a window function.
select * from(
select restaurant_name,city,rating,rank() over(partition by city order by rating desc)rnk from restaurants)
rest_rank where rnk=1;

## Q6. Find the top 2 highest-rated restaurants in each city using a window function.
select * from (
select restaurant_name,city,rating , dense_rank() over(partition by city order by rating)rnk from restaurants)
rest_rank where rnk<=2;

## Q7. Find the second-highest-rated restaurant overall.
select * from (
select restaurant_name,rating, dense_rank() over(order by rating desc)rnk from restaurants)rank_
where rnk =2;

## Q8. Assign a dense rank to customers based on their total spending, with the highest spender getting rank 1.
select * ,dense_rank() over(order by spending desc)rnk from (
select customer_id, sum(order_amount)spending from fd_orders group by 1) cust_spending;

## Q9. For each customer's orders, display the order amount and the previous order amount using LAG().
select *,lag(order_amount) over(partition by customer_id order by order_date)p_order from fd_orders;

## Q10. For each customer's orders, display the order amount and the next order amount using LEAD().
select *,lead(order_amount) over(partition by customer_id order by order_date)l_order from fd_orders;

## Q11. Display each order along with the overall average order amount.
select * , avg(order_amount) over()avg_ from fd_orders;

## Q12. Display each order along with the difference between its amount and the overall average order amount.
select * , order_amount - avg(order_amount) over()avg_ from fd_orders;

## Q13. Display each order along with the total spending of that customer.
select *,sum(order_amount) over(partition by customer_id)spending from fd_orders;

## Q14. Display each order along with the average order amount for that customer.
select *,avg(order_amount) over(partition by customer_id )spending from fd_orders ;

## Q15. Display each order along with the running total of that customer's spending, ordered by order_date.
select *, sum(order_amount) over(partition by customer_id order by order_date)running_total from fd_orders;

## Q16. For each order, display:customer_id,order_id,order_amount,the highest order amount placed by that customer
select customer_id,order_id,order_amount,max(order_amount) over(partition by customer_id)highest from
fd_orders;

## Q17. For each order, display the percentage of that customer's total spending represented by that order.
select customer_id, order_id, round(order_amount*100/sum(order_amount) over(partition by customer_id),2)spending 
from fd_orders;

## Q18. Find the highest-value order for each customer using a window function.
select * from (
select *, rank() over(partition by customer_id order by order_amount desc)rnk from fd_orders)highest
where rnk=1;

## Q19. Find the top 2 highest-value orders for each customer using a window function.
select * from (
select *, dense_rank() over(partition by customer_id order by order_amount desc)rnk from fd_orders)top_
where rnk<=2;

## Q20. For each customer's orders,display:order_id,order_amount,order_date,the change in amount compared with their previous order
select *, lag(order_amount) over(partition by customer_id order by order_date)rnk from fd_orders;

## Q21. Find the highest-value order for each customer, but return only the order ID, customer name, and order amount.
select * from (
select o.order_id,c.customer_name,o.order_amount, rank() 
over(partition by o.customer_id order by o.order_amount desc)rnk from fd_customers as c join fd_orders as o 
on c.customer_id=o.customer_id)highest where rnk=1;

## Q22. Find the second-highest order amount for each customer using a window function.
select * from (
select *, dense_rank() over(partition by customer_id order by order_amount desc)rnk from fd_orders)top_
where rnk=2;

## Q23. For each restaurant, display:restaurant name,order amount,the average order amount for that restaurant
select r.restaurant_name,o.order_amount,avg(order_amount) over(partition by restaurant_name)avg_ from
restaurants as r join fd_orders as o on r.restaurant_id=o.restaurant_id;

## Q24. For each order, display:customer ID,order date,order amount,the difference between the order amount and the customer's average order amount
select customer_id,order_date,order_amount,order_amount-avg(order_amount) over(partition by customer_id)difference_ from fd_orders;

## Q25. Find customers whose latest order amount is greater than their average order amount.
select * from (
select *, row_number() over(partition by customer_id order by order_date)rn,avg(order_amount) over(partition by customer_id)avg_
from fd_orders)latest where rn=1 and order_amount>avg_;






