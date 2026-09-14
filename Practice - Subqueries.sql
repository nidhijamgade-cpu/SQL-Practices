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

## Q1. Find all orders whose order_amount is greater than the average order amount.
select order_id, order_amount from fd_orders where order_amount> 
(select avg(order_amount)Avg_amount from fd_orders);

## Q2. Find customers whose age is greater than the average age of all customers.
select customer_name, age from fd_customers where age>
(select avg(age)Avg_age from fd_customers);

## Q3. Find the restaurant with the highest rating.
select restaurant_name, rating from restaurants where rating =
(select max(rating)Highest from restaurants);

## Q4. Find restaurants whose rating is greater than the average restaurant rating.
select restaurant_name, rating from restaurants where rating>
(select avg(rating)Avg_rate from restaurants);

## Q5. Find customers who have placed at least one order, using a subquery
select customer_name from fd_customers where customer_id in 
(select customer_id from fd_orders);

## Q6. Find customers who have never placed an order using a subquery.
select customer_name from fd_customers where customer_id not in 
(select customer_id from fd_orders);

## Q7. Find restaurants that have never received an order using a subquery.
select restaurant_name from restaurants where restaurant_id not in
(select restaurant_id from fd_orders);

## Q8. Find all orders placed by customers who live in Mumbai.
select * from fd_orders where customer_id in 
(select customer_id from fd_customers where city='Mumbai');

## Q9. Find all restaurants whose rating is higher than the rating of "Pizza Point".
select restaurant_name, rating from restaurants where rating>
(select rating from restaurants where restaurant_name='Pizza point');

## Q10. Find all orders whose amount is equal to the highest order amount.
select * from fd_orders where order_amount = 
(select max(order_amount) from fd_orders);

## Q11. Find the avg order amount for each customer,using a subquery in the FROM clause.Display:customer ID,avg order amount
select customer_id,avg_amount from  (
select customer_id, avg(order_amount)avg_amount from fd_orders group by 1)cust_avg;

## Q12. Find customers whose total spending > ₹2,500,using a subquery in the FROM clause.Display:customer ID,total spending
select * from (
select customer_id,sum(order_amount)Total_spending from fd_orders group by 1)cust_spending 
where total_spending>2500;

## Q13. Find the customer who has the highest total spending using a subquery.
select customer_id,total_spending from (
select customer_id,sum(order_amount)total_spending from fd_orders group by 1)cust_spending
where total_spending=(
select max(total_spending) from(
select customer_id,sum(order_amount)total_spending from fd_orders group by 1)as spending );

## Q14. Find the second-highest order amount using a subquery.
select max(order_amount) from fd_orders where order_amount< 
(select max(order_amount) from fd_orders);

## Q15. Find restaurants whose rating is higher than the average rating of restaurants in their own city.
select restaurant_name,city rating from restaurants as r1
where rating>
(select avg(rating) from restaurants as r2 where r2.city=r1.city );

## Q16. Find restaurants whose rating is greater than the average rating of restaurants in their own city.
select restaurant_name,city ,rating from restaurants as r1
where rating>
(select avg(rating) from restaurants as r2 where r2.city=r1.city );

## Q17. Find customers whose age is greater than the average age of customers in their own city.
select customer_name, age from fd_customers  as c1 
where age>
(select avg(age)Avg_age from fd_customers as c2 where c1.city=c2.city);

## Q18. Find orders whose order_amount is greater than the average order amount of that particular customer.
select order_id, order_amount from fd_orders as o1
where order_amount> 
(select avg(order_amount)Avg_amount from fd_orders as o2 where o1.customer_id=o2.customer_id);

## Q19. Find restaurants where the highest order amount for that restaurant is greater than ₹1,500.
select r.restaurant_name  from restaurants as r
where (
select max(order_amount) from fd_orders as o where  o.restaurant_id=r.restaurant_id)>1500;

## Q20. Find customers whose latest order amount is greater than their average order amount.
select o1.customer_id,o1.order_amount from fd_orders as o1
where o1.order_date=(
select max(o2.order_amount) from fd_orders as o2 where o2.customer_id=o1.customer_id) and
o1.order_amount>(
select avg(o3.order_amount) from fd_orders as o3 where o3.customer_id=o1.customer_id) ;
