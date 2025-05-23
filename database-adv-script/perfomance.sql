-- 📌 Performance Check (optional)
-- You can run EXPLAIN ANALYZE before and after adding indexes:

-- EXPLAIN ANALYZE
SELECT
  user_id,
  COUNT(*) AS total_bookings
FROM
  bookings
GROUP BY
  user_id;

-- And observe the difference in query planning time and cost.