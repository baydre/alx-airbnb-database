-- 📌 Performance Check (optional)
-- You can run EXPLAIN ANALYZE before and after adding indexes:

-- Initial query combining Bookings, Users, Properties, and Payments
SELECT 
  b.booking_id,
  u.first_name || ' ' || u.last_name AS user_name,
  p.name AS property_name,
  b.start_date,
  b.end_date,
  pay.amount,
  pay.payment_method
FROM 
  bookings b
JOIN 
  users u ON b.user_id = u.user_id
JOIN 
  properties p ON b.property_id = p.property_id
JOIN 
  payments pay ON b.booking_id = pay.booking_id
WHERE 
  b.start_date BETWEEN '2024-01-01' AND '2024-12-31';


-- EXPLAIN ANALYZE
SELECT
  user_id,
  COUNT(*) AS total_bookings
FROM
  bookings
GROUP BY
  user_id;

-- And observe the difference in query planning time and cost.