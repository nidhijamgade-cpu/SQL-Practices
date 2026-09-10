CREATE DATABASE TravelEase;
USE TravelEase;
CREATE TABLE travelers (
    traveler_id INT PRIMARY KEY,
    traveler_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    signup_date DATE
);
INSERT INTO travelers VALUES
(101, 'Aarav Sharma', 'Male', 28, 'Mumbai', '2023-01-15'),
(102, 'Priya Mehta', 'Female', 32, 'Delhi', '2023-02-20'),
(103, 'Rohan Patil', 'Male', 25, 'Pune', '2023-03-10'),
(104, 'Sneha Joshi', 'Female', 29, 'Nagpur', '2023-04-05'),
(105, 'Karan Verma', 'Male', 35, 'Bangalore', '2023-05-18'),
(106, 'Ananya Rao', 'Female', 27, 'Hyderabad', '2023-06-12'),
(107, 'Vikram Singh', 'Male', 41, 'Jaipur', '2023-07-22'),
(108, 'Neha Kapoor', 'Female', 24, 'Chandigarh', '2023-08-09'),
(109, 'Aditya Nair', 'Male', 31, 'Kochi', '2023-09-14'),
(110, 'Ishita Shah', 'Female', 30, 'Ahmedabad', '2023-10-25'),
(111, 'Rahul Deshmukh', 'Male', 38, 'Nashik', '2023-11-03'),
(112, 'Meera Iyer', 'Female', 26, 'Chennai', '2023-12-17'),
(113, 'Arjun Malhotra', 'Male', 33, 'Delhi', '2024-01-08'),
(114, 'Kavya Kulkarni', 'Female', 29, 'Pune', '2024-02-14'),
(115, 'Manish Gupta', 'Male', 45, 'Lucknow', '2024-03-21');
CREATE TABLE destinations (
    destination_id INT PRIMARY KEY,
    destination_name VARCHAR(100),
    country VARCHAR(50),
    region VARCHAR(50)
);
INSERT INTO destinations VALUES
(1, 'Goa', 'India', 'West'),
(2, 'Manali', 'India', 'North'),
(3, 'Jaipur', 'India', 'North'),
(4, 'Kerala', 'India', 'South'),
(5, 'Dubai', 'UAE', 'Middle East'),
(6, 'Singapore', 'Singapore', 'Southeast Asia'),
(7, 'Bali', 'Indonesia', 'Southeast Asia'),
(8, 'Paris', 'France', 'Europe'),
(9, 'London', 'UK', 'Europe'),
(10, 'Bangkok', 'Thailand', 'Southeast Asia');
CREATE TABLE hotels (
    hotel_id INT PRIMARY KEY,
    hotel_name VARCHAR(100),
    destination_id INT,
    hotel_type VARCHAR(50),
    star_rating INT,
    price_per_night DECIMAL(10,2),
    FOREIGN KEY (destination_id) REFERENCES destinations(destination_id)
);
INSERT INTO hotels VALUES
(201, 'Sea Breeze Resort', 1, 'Resort', 4, 6500),
(202, 'Palm Paradise', 1, 'Hotel', 3, 4200),
(203, 'Mountain View Inn', 2, 'Hotel', 4, 5500),
(204, 'Snow Valley Resort', 2, 'Resort', 5, 8500),
(205, 'Royal Heritage', 3, 'Hotel', 5, 7200),
(206, 'Pink City Palace', 3, 'Hotel', 4, 4800),
(207, 'Backwater Retreat', 4, 'Resort', 5, 9000),
(208, 'Coconut Grove', 4, 'Hotel', 3, 4000),
(209, 'Desert Pearl', 5, 'Hotel', 5, 12000),
(210, 'Dubai Marina Stay', 5, 'Hotel', 4, 9500),
(211, 'Orchard Grand', 6, 'Hotel', 5, 11000),
(212, 'City Lights Hotel', 6, 'Hotel', 4, 7500),
(213, 'Bali Sunset Resort', 7, 'Resort', 5, 10000),
(214, 'Island Breeze', 7, 'Hotel', 4, 6800),
(215, 'Eiffel View Hotel', 8, 'Hotel', 5, 15000),
(216, 'Paris Central Inn', 8, 'Hotel', 3, 9000),
(217, 'Royal London Hotel', 9, 'Hotel', 5, 18000),
(218, 'London Bridge Stay', 9, 'Hotel', 4, 12500),
(219, 'Bangkok Grand', 10, 'Hotel', 4, 6000),
(220, 'Thai Garden Resort', 10, 'Resort', 5, 8500);
CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    traveler_id INT,
    hotel_id INT,
    check_in DATE,
    check_out DATE,
    guests INT,
    booking_status VARCHAR(30),
    FOREIGN KEY (traveler_id) REFERENCES travelers(traveler_id),
    FOREIGN KEY (hotel_id) REFERENCES hotels(hotel_id)
);
INSERT INTO bookings VALUES
(1001, 101, 201, '2024-01-10', '2024-01-13', 2, 'Completed'),
(1002, 102, 205, '2024-01-15', '2024-01-18', 3, 'Completed'),
(1003, 103, 203, '2024-02-05', '2024-02-08', 2, 'Completed'),
(1004, 104, 207, '2024-02-12', '2024-02-17', 4, 'Completed'),
(1005, 105, 209, '2024-02-20', '2024-02-23', 2, 'Cancelled'),
(1006, 106, 211, '2024-03-01', '2024-03-05', 2, 'Completed'),
(1007, 107, 217, '2024-03-10', '2024-03-15', 3, 'Completed'),
(1008, 108, 213, '2024-03-18', '2024-03-21', 2, 'Completed'),
(1009, 109, 219, '2024-03-25', '2024-03-28', 1, 'Completed'),
(1010, 110, 201, '2024-04-02', '2024-04-06', 4, 'Completed'),
(1011, 111, 206, '2024-04-10', '2024-04-12', 2, 'Cancelled'),
(1012, 112, 208, '2024-04-15', '2024-04-20', 3, 'Completed'),
(1013, 113, 210, '2024-04-22', '2024-04-26', 2, 'Completed'),
(1014, 114, 214, '2024-05-01', '2024-05-04', 2, 'Completed'),
(1015, 115, 215, '2024-05-10', '2024-05-15', 3, 'Completed'),
(1016, 101, 202, '2024-05-18', '2024-05-21', 2, 'Completed'),
(1017, 102, 204, '2024-05-25', '2024-05-30', 4, 'Completed'),
(1018, 103, 212, '2024-06-02', '2024-06-05', 2, 'Pending'),
(1019, 104, 216, '2024-06-10', '2024-06-14', 2, 'Completed'),
(1020, 105, 220, '2024-06-18', '2024-06-22', 5, 'Completed'),
(1021, 106, 201, '2024-07-01', '2024-07-04', 2, 'Completed'),
(1022, 107, 205, '2024-07-08', '2024-07-12', 3, 'Completed'),
(1023, 108, 207, '2024-07-15', '2024-07-18', 2, 'Cancelled'),
(1024, 109, 209, '2024-07-20', '2024-07-24', 4, 'Completed'),
(1025, 110, 211, '2024-08-01', '2024-08-05', 2, 'Completed'),
(1026, 111, 213, '2024-08-10', '2024-08-14', 3, 'Completed'),
(1027, 112, 217, '2024-08-18', '2024-08-23', 2, 'Completed'),
(1028, 113, 219, '2024-08-25', '2024-08-28', 1, 'Completed'),
(1029, 114, 203, '2024-09-02', '2024-09-06', 2, 'Completed'),
(1030, 115, 215, '2024-09-10', '2024-09-15', 3, 'Pending');
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    booking_id INT,
    payment_date DATE,
    amount DECIMAL(10,2),
    payment_method VARCHAR(30),
    payment_status VARCHAR(30),
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);
INSERT INTO payments VALUES
(5001, 1001, '2024-01-05', 19500, 'Credit Card', 'Paid'),
(5002, 1002, '2024-01-10', 21600, 'UPI', 'Paid'),
(5003, 1003, '2024-01-30', 16500, 'Debit Card', 'Paid'),
(5004, 1004, '2024-02-05', 45000, 'Credit Card', 'Paid'),
(5005, 1005, '2024-02-15', 36000, 'UPI', 'Refunded'),
(5006, 1006, '2024-02-25', 44000, 'Credit Card', 'Paid'),
(5007, 1007, '2024-03-01', 90000, 'Debit Card', 'Paid'),
(5008, 1008, '2024-03-10', 30000, 'UPI', 'Paid'),
(5009, 1009, '2024-03-20', 18000, 'Cash', 'Paid'),
(5010, 1010, '2024-03-25', 26000, 'Credit Card', 'Paid'),
(5011, 1011, '2024-04-05', 9600, 'UPI', 'Refunded'),
(5012, 1012, '2024-04-10', 20000, 'Debit Card', 'Paid'),
(5013, 1013, '2024-04-15', 38000, 'Credit Card', 'Paid'),
(5014, 1014, '2024-04-25', 20400, 'UPI', 'Paid'),
(5015, 1015, '2024-05-01', 75000, 'Credit Card', 'Paid'),
(5016, 1016, '2024-05-10', 12600, 'Cash', 'Paid'),
(5017, 1017, '2024-05-15', 42500, 'Debit Card', 'Paid'),
(5018, 1018, '2024-05-25', 22500, 'UPI', 'Pending'),
(5019, 1019, '2024-06-01', 36000, 'Credit Card', 'Paid'),
(5020, 1020, '2024-06-10', 34000, 'UPI', 'Paid'),
(5021, 1021, '2024-06-25', 19500, 'Credit Card', 'Paid'),
(5022, 1022, '2024-07-01', 28800, 'Debit Card', 'Paid'),
(5023, 1023, '2024-07-10', 45000, 'UPI', 'Refunded'),
(5024, 1024, '2024-07-15', 48000, 'Credit Card', 'Paid'),
(5025, 1025, '2024-07-25', 44000, 'UPI', 'Paid'),
(5026, 1026, '2024-08-01', 40000, 'Debit Card', 'Paid'),
(5027, 1027, '2024-08-10', 90000, 'Credit Card', 'Paid'),
(5028, 1028, '2024-08-20', 18000, 'UPI', 'Paid'),
(5029, 1029, '2024-08-25', 22000, 'Debit Card', 'Paid'),
(5030, 1030, '2024-09-01', 75000, 'Credit Card', 'Pending');
CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    booking_id INT,
    rating INT,
    review_text VARCHAR(255),
    review_date DATE,
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);
INSERT INTO reviews VALUES
(7001, 1001, 5, 'Excellent stay', '2024-01-14'),
(7002, 1002, 4, 'Very good experience', '2024-01-19'),
(7003, 1003, 3, 'Average stay', '2024-02-09'),
(7004, 1004, 5, 'Amazing resort', '2024-02-18'),
(7005, 1006, 4, 'Comfortable room', '2024-03-06'),
(7006, 1007, 5, 'Wonderful hotel', '2024-03-16'),
(7007, 1008, 4, 'Good location', '2024-03-22'),
(7008, 1009, 3, 'Could be better', '2024-03-29'),
(7009, 1010, 5, 'Loved the stay', '2024-04-07'),
(7010, 1012, 4, 'Nice experience', '2024-04-21'),
(7011, 1013, 5, 'Excellent service', '2024-04-27'),
(7012, 1014, 4, 'Good hotel', '2024-05-05'),
(7013, 1015, 5, 'Beautiful property', '2024-05-16'),
(7014, 1016, 3, 'Average experience', '2024-05-22'),
(7015, 1017, 5, 'Fantastic resort', '2024-05-31'),
(7016, 1019, 4, 'Comfortable stay', '2024-06-15'),
(7017, 1020, 5, 'Great service', '2024-06-23'),
(7018, 1021, 5, 'Excellent hotel', '2024-07-05'),
(7019, 1022, 4, 'Very good', '2024-07-13'),
(7020, 1024, 3, 'Average service', '2024-07-25'),
(7021, 1025, 5, 'Amazing stay', '2024-08-06'),
(7022, 1026, 4, 'Nice resort', '2024-08-15'),
(7023, 1027, 5, 'Perfect experience', '2024-08-24'),
(7024, 1028, 4, 'Good location', '2024-08-29'),
(7025, 1029, 5, 'Wonderful stay', '2024-09-07');

select count(*) from travelers;
SELECT COUNT(*) FROM destinations;
SELECT COUNT(*) FROM hotels;
SELECT COUNT(*) FROM bookings;
SELECT COUNT(*) FROM payments;
SELECT COUNT(*) FROM reviews;


## Q1. Display all the details of travelers
select * from travelers;

## Q2. Display only the traveler name, city, and gender of all travelers.
select traveler_name,city,gender from travelers;

## Q3. Find all travelers who are older than 30 years.
select * from travelers where age>30;

## Q4. Find all hotels whose price per night is greater than ₹8,000.
select * from hotels where price_per_night >8000;

## Q5. Display the unique cities from which travelers have signed up.
select distinct city from travelers where signup_date;

## Q6. Find travelers whose age is between 25 and 35, including both ages.
select * from travelers where age between 25 and 35;

## Q7. Find all hotels that are either 4-star or 5-star.
select * from hotels where star_rating = 4 or 5;

## Q8. Find travelers who are from Delhi, Pune, or Mumbai.
select * from travelers where city in ('Delhi','pune','mumbai');

## Q9. Display all bookings sorted by their check-in date from earliest to latest.
select * from bookings order by check_in;

## Q10. Display the 5 most expensive hotels based on price per night.
select * from hotels order by price_per_night desc limit 5;

## Q11. Find all female travelers who are older than 25.
select * from travelers where gender='Female' and age>25;

## Q12. Find hotels with a 5-star rating and a price per night below ₹10,000.
select * from hotels where star_rating =5 and price_per_night <10000;

## Q13. Find all bookings that were either Cancelled or Pending.
select * from bookings where booking_status in ('Cancelled' ,'Pending');

## Q14. Find travelers whose names start with the letter A.
select * from travelers where traveler_name like 'a%';

## Q15. Find the 3 cheapest hotels in the database.
select * from hotels order by price_per_night asc limit 3; 

## Q16. Find the average age of all travelers.
select avg(age)Avgage from travelers;

## Q17. Find the maximum price per night among all hotels.
select max(price_per_night)Max_price from hotels;

## Q18. Count the total number of bookings.
select count(*)Count_no from bookings;

## Q19. Find the total payment amount received.
select sum(amount)Total_payment from payments;

## Q20. Find the average rating given in reviews.
select avg(rating)Rating from reviews;

## Q21. Find the number of travelers in each city.
select City,count(*)City_count from travelers group by city;

## Q22. Find the average hotel price for each star rating.
select Star_rating,avg(price_per_night)Avg_night from hotels group by 1;

## Q23. Find the total payment amount for each payment method.
select payment_method,sum(amount)Amount from payments group by 1;

## Q24. Find cities that have more than 2 travelers.
select City,count(*)City_count from travelers group by city having count(*)>2;

## Q25. Find the highest-rated review rating and show the rating value.
select max(rating)Rating from reviews;

## Q26. Find the names of travelers who have made a booking.
select a.traveler_name,b.booking_status from travelers as a join bookings as b on
a.traveler_id=b.traveler_id ;

## Q27. Display each booking along with the traveler's name.
select b.booking_id,a.traveler_name,b.booking_status from travelers as a join bookings as b on
a.traveler_id=b.traveler_id;

## Q28. Display each hotel along with its destination name.
select h.hotel_name,d.destination_name from hotels as h join destinations as d
on h.destination_id=d.destination_id;

## Q29. Find the total amount paid by each traveler.
select t.traveler_name,sum(p.amount)Amount from payments as p join bookings as b
on b.booking_id = p.booking_id join travelers as t on b.traveler_id=t.traveler_id group by 1;

## Q30. Find the number of bookings for each hotel.
select h.hotel_name,count(b.booking_id)Bookings from hotels as h join 
bookings as b on h.hotel_id=b.hotel_id group by 1;

## Q31. Find the names of travelers who have never made a booking.
select t.traveler_name,b.booking_status from travelers as t left join bookings as b on b.traveler_id=t.traveler_id 
where b.booking_status is null;

## Q32. Find the most expensive hotel in each destination.
select h.hotel_name,d.destination_name,max(price_per_night)Expense from hotels as h join 
destinations as d on h.destination_id=d.destination_id group by 2;

## Q33. Find travelers who have made more than 2 bookings.
select count(b.booking_id)booking,a.traveler_name from travelers as a join bookings as b on
a.traveler_id=b.traveler_id group by 2 having count(b.booking_id)>2;

## Q34. Display the traveler name, hotel name, and booking status for every booking.
select t.traveler_name,h.hotel_name,b.booking_status from travelers as t join bookings as b
on b.traveler_id=t.traveler_id join hotels as h on h.hotel_id=b.hotel_id;

## Q35. Find avg payment amount for each payment method,but show only payment methods where avg payment> ₹10,000.
select payment_method,avg(amount)Amount from payments group by 1 having avg(amount)>10000;

## Q36. Find the traveler who has made the highest number of bookings.
select t.traveler_name,count(b.booking_id)booking_count from travelers as t join bookings as b
on b.traveler_id=t.traveler_id group by 1 order by 2 desc limit 1;

## Q37. Find hotels whose price per night is higher than the average price of all hotels.
select * from hotels where price_per_night> (select avg(price_per_night)Avg_price from hotels );

## Q38. Find the second-highest hotel price in the database.
SELECT * FROM (SELECT *, DENSE_RANK() OVER (ORDER BY price_per_night DESC) AS price_rank
FROM hotels) AS h WHERE price_rank = 2;

## Q39. Display each review along with the traveler's name and rating.
select t.traveler_name,r.rating from travelers as t join bookings as b
on b.traveler_id=t.traveler_id join reviews as r on b.booking_id=r.booking_id ;

## Q40. Find the top 3 travelers based on their total payment amount.
select t.traveler_name,sum(p.amount)Amount from payments as p join bookings as b
on b.booking_id = p.booking_id join travelers as t on b.traveler_id=t.traveler_id 
group by 1 order by 2 desc limit 3;

## Q41. Find all hotels whose price per night is greater than the average price of hotels in the same destination.
select h.hotel_name,d.destination_name from hotels as h join destinations as d on h.destination_id=d.destination_id
 where price_per_night> (select avg(h2.price_per_night)Avg_price from hotels as h2 
where h.destination_id=h2.destination_id);
 
## Q42. Find the third-highest hotel price in the database.
select * from (
select *,dense_rank() over(order by price_per_night desc) rnk from hotels) h where rnk =3;

## Q43. Find the traveler(s) who made the most expensive booking, based on the payment amount.
select t.traveler_name,p.amount from payments as p join bookings as b
on b.booking_id = p.booking_id join travelers as t on b.traveler_id=t.traveler_id 
where p.amount=(select max(amount) from payments);

## Q44. For every destination, display the hotels ranked by their price per night from highest to lowest.
SELECT h.hotel_name,d.destination_name,h.price_per_night,DENSE_RANK() OVER (PARTITION BY h.destination_id
ORDER BY h.price_per_night DESC) AS price_rank FROM hotels AS h
JOIN destinations AS d ON h.destination_id = d.destination_id;
 
## Q45. Find travelers who have never received a review for any of their bookings.
select t.traveler_name from travelers as t left join bookings as b
on b.traveler_id=t.traveler_id left join reviews as r on b.booking_id=r.booking_id where r.review_id is null;

## Q46. Find the second-most expensive hotel in each destination.
SELECT hotel_name,destination_name,price_per_night FROM (sELECT h.hotel_name,d.destination_name,h.price_per_night,
DENSE_RANK() OVER (PARTITION BY h.destination_id ORDER BY h.price_per_night DESC) AS price_rank
FROM hotels AS h JOIN destinations AS d ON h.destination_id = d.destination_id) AS ranked_hotels
WHERE price_rank = 2;

## Q47. Find the travelers whose total payment is greater than ₹20,000.
select t.traveler_name,sum(p.amount)total_payment from payments as p join bookings as b
on b.booking_id = p.booking_id join travelers as t on b.traveler_id=t.traveler_id group by 1
having sum(p.amount)>20000 ;

## Q48. Find the destination with the highest number of bookings.
select d.destination_name,count(b.booking_id)Bookings from hotels as h 
join destinations as d on h.destination_id = d.destination_id group by 1 order by 2 limit 1;

## Q49. Display each hotel along with its price and the average price of hotels in the same destination.
SELECT h.hotel_name,d.destination_name,h.price_per_night,(SELECT AVG(h2.price_per_night)
FROM hotels AS h2 WHERE h2.destination_id = h.destination_id) AS destination_avg_price
FROM hotels AS h JOIN destinations AS d ON h.destination_id = d.destination_id;

## Q50. For each traveler,display their booking count & their booking rank,where traveler with most bookings gets rank 1
SELECT traveler_name,booking_count,DENSE_RANK() OVER (ORDER BY booking_count DESC) AS booking_rank
FROM (SELECT t.traveler_name,COUNT(b.booking_id) AS booking_count FROM travelers AS t
LEFT JOIN bookings AS b ON t.traveler_id = b.traveler_id
GROUP BY t.traveler_id, t.traveler_name) AS traveler_bookings;

## Q51. Find the cheapest hotel in each destination.
SELECT h.hotel_name,d.destination_name,h.price_per_night FROM hotels AS h JOIN destinations AS d
ON h.destination_id = d.destination_id WHERE h.price_per_night = (SELECT MIN(h2.price_per_night)
FROM hotels AS h2 WHERE h2.destination_id = h.destination_id);

## Q52. Find travelers whose age is greater than the average age of all travelers.
select * from travelers where age>(select avg(age) from travelers);

## Q53. Find the traveler with the highest total payment.
select t.traveler_name,sum(p.amount)total_payment from payments as p join bookings as b
on b.booking_id = p.booking_id join travelers as t on b.traveler_id=t.traveler_id 
group by 1 order by 2 limit 1; 

## Q54. Display each hotel with its destination name and its rank based on price within that destination.
SELECT h.hotel_name,d.destination_name,h.price_per_night, DENSE_RANK() OVER (PARTITION BY h.destination_id
ORDER BY h.price_per_night DESC) AS price_rank
FROM hotels AS h JOIN destinations AS d ON h.destination_id = d.destination_id;

## Q55. Find the third-highest payment amount in the payments table.
select * from ( 
select *,dense_rank() over(order by amount desc) rnk from payments) h where rnk =3;

## Q56. Find the destination(s) where the average hotel price is greater than ₹10,000.
select h.hotel_name,d.destination_name,avg(h.price_per_night)Avg_price
FROM hotels AS h JOIN destinations AS d ON h.destination_id = d.destination_id  
group by 1,2 having avg_price > 10000;

## Q57. Find the traveler(s) who have made exactly 2 bookings.
select t.traveler_name,count(b.booking_id)Bookings from travelers as t join bookings as b
on b.traveler_id=t.traveler_id group by 1 having count(b.booking_id)=2  ;

## Q58. Display each payment along with the traveler name, hotel name, and payment amount.
select t.traveler_name,h.hotel_name,p.amount from payments as p join bookings as b
on b.booking_id = p.booking_id join travelers as t on b.traveler_id=t.traveler_id join hotels as h
on b.hotel_id=h.hotel_id;

## Q59. Find the hotels that have never received a booking.
select h.hotel_name,b.booking_status from hotels as h left join bookings as b on b.hotel_id=h.hotel_id
where b.booking_id is null;

## Q60. For each destination, find the most expensive hotel and its price. 
SELECT hotel_name,destination_name,price_per_night FROM (
SELECT h.hotel_name,d.destination_name,h.price_per_night,
DENSE_RANK() OVER (PARTITION BY h.destination_id ORDER BY h.price_per_night DESC) AS price_rank
FROM hotels AS h JOIN destinations AS d ON h.destination_id = d.destination_id
) AS ranked_hotels WHERE price_rank = 1;

## Q61. Find the total number of bookings for each booking status.
select booking_status,count(booking_id)Bookings from bookings group by 1;

## Q62. Find the average age of travelers from each city.
select traveler_name,avg(age)Avg_age,city from travelers group by 1,3;
 
## Q63. Find the traveler(s) who have made more bookings than the average number of bookings per traveler.
WITH traveler_bookings AS (
    SELECT t.traveler_id,
           t.traveler_name,
           COUNT(b.booking_id) AS booking_count
    FROM travelers AS t
    LEFT JOIN bookings AS b
    ON t.traveler_id = b.traveler_id
    GROUP BY t.traveler_id, t.traveler_name
)
SELECT traveler_name, booking_count
FROM traveler_bookings
WHERE booking_count > (
    SELECT AVG(booking_count)
    FROM traveler_bookings
);
 
## Q64. Display each booking with the traveler name, destination name, check-in date, and check-out date.
SELECT t.traveler_name,d.destination_name,b.booking_id,b.check_in,b.check_out FROM travelers AS t JOIN bookings as b
on b.traveler_id=t.traveler_id join hotels as h on h.hotel_id=b.hotel_id
join destinations AS d on d.destination_id=h.destination_id;

## Q65. Find the highest-rated review for each hotel.
SELECT hotel_name, rating
FROM (
    SELECT h.hotel_name,
           r.rating,
           DENSE_RANK() OVER (
               PARTITION BY h.hotel_id
               ORDER BY r.rating DESC
           ) AS rating_rank
    FROM hotels AS h
    JOIN bookings AS b
    ON h.hotel_id = b.hotel_id
    JOIN reviews AS r
    ON b.booking_id = r.booking_id
) AS ranked_reviews
WHERE rating_rank = 1;

## Q66. From the hotels table,Rules:Below 5000 → 'Budget' 5000 to 10000 → 'Mid-Range' Above 10000 → 'Luxury'
select hotel_name,price_per_night ,case when price_per_night<5000 then 'Budget'
when price_per_night between 5000 and 10000 then 'Mid Range' when price_per_night>10000 then 'Luxury' end
as Price_category from hotels order by 2 desc;

## Q67. Q2. Traveler Age Category;Below 25 → Young 25–35 → Adult Above 35 → Senior
select *, case when age>35 then 'Senior' when age between 25 and 35 then 'Adult' when age <25 then 'young'
end as Age_category from travelers;

## Q68. Find the number of bookings made by each traveler using a CTE. Display traveler_name and booking_count.
with traveler_bookings as (
select t.traveler_name,count(b.booking_id)Bookings from travelers as t join bookings as b
on b.traveler_id=t.traveler_id group by 1) 
select * from traveler_bookings; 

## Q69. Using a CTE, find travelers whose total payment is greater than 20,000. Display traveler_name and total_payment.
with traveler_amount as (
select t.traveler_name,sum(p.amount)total_amount from payments as p join bookings as b
on b.booking_id = p.booking_id join travelers as t on b.traveler_id=t.traveler_id group by 1)
select * from traveler_amount where total_amount>20000;

## Q70.Calculate the avg hotel price for each destination.Then display only destinations whose avg hotel price>10,000.
with hotels_destination as (
select d.destination_name,avg(h.price_per_night)Avg_price from hotels as h join 
destinations as d on h.destination_id = d.destination_id group by 1)
select * from hotels_destination having avg_price>10000;
