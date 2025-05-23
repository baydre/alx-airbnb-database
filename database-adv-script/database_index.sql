-- Booking table indexes
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- User table index
CREATE INDEX idx_users_user_id ON users(user_id);

-- Property table index
CREATE INDEX idx_properties_property_id ON properties(property_id);

-- Reviews table index
CREATE INDEX idx_reviews_property_id ON reviews(property_id);