 SELECT city, SUM(total_price) AS revenue
FROM Bookings
WHERE status = 'COMPLETED' AND SUM(total_price) > 0
GROUP BY city;
-- lỗi dùng sum ở where
-- sửa
SELECT city, SUM(total_price) AS revenue
FROM Bookings
WHERE status = 'COMPLETED'
GROUP BY city
HAVING SUM(total_price) > 0;