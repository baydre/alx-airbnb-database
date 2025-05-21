-- Objective: Write both correlated and non-correlated subqueries.

-- Instructions:

-- Write a query to find all properties where the average rating is greater than 4.0 using a subquery.

-- Write a correlated subquery to find users who have made more than 3 bookings.

-----------------------------------------------------------------------

-- TASK 1.1: Non-Correlated Subquery - High Rated Properties
SELECT
  property_id,
  name,
  location
FROM properties
WHERE property_id IN (
  SELECT property_id
  FROM reviews
  GROUP BY property_id
  HAVING AVG(rating) > 4
);

------------------------------------------------------------------------

-- TASK 1.2: Correlated Subquery - Active Reviewers
SELECT
  u.user_id,
  u.first_name,
  u.last_name
FROM users u
WHERE (
  SELECT COUNT(*)
  FROM reviews r
  WHERE r.user_id = u.user_id
) > 2;

--------------------------------------------------------------------------