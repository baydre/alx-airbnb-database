-- Total bookings made by each user
SELECT
  user_id,
  COUNT(*) AS total_bookings
FROM
  bookings
GROUP BY
  user_id
ORDER BY
  total_bookings DESC;

-- Ranking properties by the number of bookings
SELECT
  property_id,
  COUNT(*) AS booking_count,
  ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM
  bookings
GROUP BY
  property_id;
