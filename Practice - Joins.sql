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

-- JOIN Questions
## Q1. Display customer name, order ID, order date, and order amount.
select c.customer_name,o.order_id,o.order_date,o.order_amount from fd_customers as c join fd_orders as o
on c.customer_id=o.customer_id;

## Q2. Display customer name and restaurant name for every order.
select c.customer_name,r.restaurant_name from fd_customers as c join fd_orders as o on
c.customer_id=o.customer_id join restaurants as r on r.restaurant_id=o.restaurant_id;

## Q3. Display customer name, restaurant name, cuisine, and order amount.
select c.customer_name,r.restaurant_name,r.cuisine,o.order_amount from fd_customers as c join fd_orders as o on
c.customer_id=o.customer_id join restaurants as r on r.restaurant_id=o.restaurant_id;

## Q4. Display customer name, restaurant name, payment method, and payment status.
select c.customer_name,r.restaurant_name,p.payment_method,p.payment_status from fd_customers as c 
join fd_orders as o on c.customer_id=o.customer_id join restaurants as r on r.restaurant_id=o.restaurant_id
join fd_payments as p on p.order_id=o.order_id;

## Q5. Display restaurant name and customer name for orders where the order status is Delivered.
select c.customer_name,r.restaurant_name from fd_customers as c join fd_orders as o on
c.customer_id=o.customer_id join restaurants as r on r.restaurant_id=o.restaurant_id 
where o.status ='Delivered';

-- left join 
## Q6. Display all customers and their order IDs. Include customers who have never placed an order.
select c.customer_name,o.order_id,o.order_date,o.order_amount from fd_customers as c left join fd_orders as o
on c.customer_id=o.customer_id;

## Q7. Display all restaurants and their order IDs. Include restaurants that have never received an order.
select r.restaurant_name,o.order_id from restaurants as r left join fd_orders as o
on r.restaurant_id=o.restaurant_id;

## Q8. Display all customers, their names, and their total number of orders.Customers with no orders should also appear.
select c.customer_id,c.customer_name,count(o.order_id) from fd_customers as c left join fd_orders as o
on c.customer_id=o.customer_id group by 1,2;

## Q9. Find customers who have never placed an order using LEFT JOIN.
select c.customer_name,o.order_id,o.order_date,o.order_amount from fd_customers as c left join fd_orders as o
on c.customer_id=o.customer_id where o.order_id is null;

## Q10. Find restaurants that have never received an order using LEFT JOIN.
select r.restaurant_name,o.order_id from restaurants as r left join fd_orders as o
on r.restaurant_id=o.restaurant_id where o.order_id is null;

-- right join
## Q11. Display all customers and their order IDs, including customers who have never placed an order.
select c.customer_name,o.order_id,o.order_date,o.order_amount from fd_orders as o right join fd_customers as c
on c.customer_id=o.customer_id;

## Q12. Display all restaurants and their order IDs, including restaurants that have never received an order.
select r.restaurant_name,o.order_id from fd_orders as o right join restaurants as r
on r.restaurant_id=o.restaurant_id;

## Q13. Display all orders and customer names. Make sure every order appears, even if there is no matching customer.
select o.order_id,c.customer_name from fd_customers as c right join fd_orders as o
on c.customer_id=o.customer_id;

## Q14. Find customers who have never placed an order using RIGHT JOIN.
select c.customer_name,o.order_id,o.order_date,o.order_amount from fd_orders as o right join fd_customers as c
on c.customer_id=o.customer_id where o.order_id is null;

-- self join
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

INSERT INTO employees VALUES
(1, 'Amit', NULL),
(2, 'Riya', 1),
(3, 'Sahil', 1),
(4, 'Kavya', 2),
(5, 'Rohit', 2),
(6, 'Pooja', 3);

## Q15. Display each employee's name and their manager's name.
select e.employee_name,m.employee_name as manager_name from employees as e join employees as m on e.employee_id=m.manager_id;

## Q16. Display employee name, manager name, only for employees who have a manager.
select e.employee_name,m.employee_name as manager_name from employees as e join employees as m 
on e.employee_id=m.manager_id where m.manager_id is not null;

## Q17. Find the employees who report directly to Amit.
select e.employee_name,m.employee_name as manager_Amit from employees as e join employees as m on e.manager_id=m.employee_id
where m.employee_name='amit'; 

-- cross join
## Q18 Display every customer name with every restaurant name.
select c.customer_name,r.restaurant_name from fd_customers as c cross join restaurants as r;

## Q19 Display every customer name with every cuisine available in the restaurants table.
select c.customer_name,r.cuisine from fd_customers as c cross join restaurants as r;

-- join with group by/ aggregate
## Q20. Find the total number of orders for each customer. Display customer name and total orders.
select c.customer_name,count(*)total_order from fd_customers as c join fd_orders as o on
c.customer_id=o.customer_id group by 1;

## ## Q21. Find the total amount spent by each customer. Display customer name and total spending.
select c.customer_name,sum(o.order_amount)total_spending from fd_customers as c join fd_orders as o on
c.customer_id=o.customer_id group by 1;

## Q22. Find the number of orders received by each restaurant. Display restaurant name and order count.
select r.restaurant_name,count(o.order_id)order_count from restaurants as r left join fd_orders as o
on r.restaurant_id=o.restaurant_id group by 1;

## Q23. Find the average order amount for each restaurant. Display restaurant name and average order amount.
select r.restaurant_name,avg(o.order_amount)Amount from restaurants as r left join fd_orders as o
on r.restaurant_id=o.restaurant_id group by 1;

-- Mixed join
## Q24. Find the total revenue generated by each restaurant. Display:restaurant name, total revenue
select r.restaurant_name,sum(o.order_amount)Revenue from restaurants as r join fd_orders as o 
on r.restaurant_id=o.restaurant_id group by 1;

## Q25. Find customers who have placed more than 1 order. Display:customer name, order count
select  c.customer_name,count(o.order_id)total_orders from fd_customers as c join fd_orders as o on
c.customer_id=o.customer_id group by 1 having total_orders>1;

## Q26. Find restaurants whose average order amount is greater than ₹1,000. Display: restaurant name,avg order amount
select r.restaurant_name,avg(o.order_amount)AvgOrder_amount from restaurants as r join fd_orders as o 
on r.restaurant_id=o.restaurant_id group by 1 having avgorder_amount>1000;

## Q27. Display the customer name, restaurant name, and payment method for all successful payments.
select  c.customer_name,r.restaurant_name,p.payment_method from fd_customers as c join fd_orders as o on
c.customer_id=o.customer_id join restaurants as r on o.restaurant_id=r.restaurant_id join fd_payments 
as p on p.order_id=o.order_id where payment_status='Success' ;

## Q28. Find the top 3 restaurants based on total revenue. Display:restaurant name, total revenue
select r.restaurant_name,sum(o.order_amount)Revenue from restaurants as r join fd_orders as o 
on r.restaurant_id=o.restaurant_id group by 1 order by 2 desc limit 3;


