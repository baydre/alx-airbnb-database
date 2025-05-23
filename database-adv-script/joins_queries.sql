-- Objective: Master SQL joins by writing complex queries using different types of joins.

-- Instructions:

-- Write a query using an INNER JOIN to retrieve all bookings and the respective users who made those bookings.

-- Write a query using aLEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews.

-- Write a query using a FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.

--------------------------------

-- TASK 0.1: INNER JOIN - Bookings with User Details
SELECT
  b.booking_id,
  u.first_name || ' ' || u.last_name AS full_name,
  b.property_id,
  b.start_date,
  b.end_date,
  b.total_price
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id;

---------------------------------

-- TASK 0.2: LEFT JOIN - Properties with Reviews
SELECT
  p.property_id,
  p.name,
  r.rating,
  r.comment
FROM properties p
LEFT JOIN reviews r ON p.property_id = r.property_id
ORDER BY p.property_id;

---------------------------------

-- TASK 0.3: FULL OUTER JOIN - Users and Bookings
SELECT
  u.user_id,
  u.first_name,
  b.booking_id,
  b.start_date,
  b.status
FROM users u
FULL OUTER JOIN bookings b ON u.user_id = b.user_id;

---------------------------------