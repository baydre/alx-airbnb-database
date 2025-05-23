-- Optimized version using indexed columns and limiting join data
WITH filtered_bookings AS (
  SELECT * FROM bookings
  WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31'
)
SELECT 
  b.booking_id,
  u.first_name || ' ' || u.last_name AS user_name,
  p.name AS property_name,
  b.start_date,
  b.end_date,
  pay.amount,
  pay.payment_method
FROM 
  filtered_bookings b
JOIN 
  users u ON b.user_id = u.user_id
JOIN 
  properties p ON b.property_id = p.property_id
JOIN 
  payments pay ON b.booking_id = pay.booking_id;
