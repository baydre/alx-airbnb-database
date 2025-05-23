-- Booking table indexes
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- User table index
CREATE INDEX idx_users_user_id ON users(user_id);

-- Property table index
CREATE INDEX idx_properties_property_id ON properties(property_id);

-- Reviews table index
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

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