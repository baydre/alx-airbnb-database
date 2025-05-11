-- users table
INSERT INTO users (user_id, first_name, last_name, email, password_hash, role) VALUES
  ('uuid-001', 'Agba', 'Doe', 'agba.doe@example.com', 'hashedpassword1', 'guest'),
  ('uuid-002', 'Khalifa', 'Isa', 'khalifa.isa@example.com', 'hashedpassword2', 'host'),
  ('uuid-003', 'Taj', 'West', 'taj.west@example.com', 'hashedpassword3', 'admin');

-- properties table
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight) VALUES
  ('uuid-101', 'uuid-002', 'Beachside Villa', 'A beautiful villa near the beach.', 'Miami, FL', 250.00),
  ('uuid-102', 'uuid-002', 'Cozy Mountain Cabin', 'A quiet cabin in the mountains.', 'Asheville, NC', 150.00),
  ('uuid-103', 'uuid-002', 'Urban Apartment', 'Modern apartment in downtown.', 'New York, NY', 300.00);

-- bookings table
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status) VALUES
  ('uuid-201', 'uuid-101', 'uuid-001', '2025-06-01', '2025-06-07', 1500.00, 'confirmed'),
  ('uuid-202', 'uuid-102', 'uuid-001', '2025-06-10', '2025-06-15', 750.00, 'pending'),
  ('uuid-203', 'uuid-103', 'uuid-001', '2025-06-20', '2025-06-25', 1500.00, 'confirmed');

-- payments table
INSERT INTO payments (payment_id, booking_id, amount, payment_method) VALUES
  ('uuid-301', 'uuid-201', 1500.00, 'credit_card'),
  ('uuid-302', 'uuid-203', 1500.00, 'paypal');

-- reviews table
INSERT INTO reviews (review_id, property_id, user_id, rating, comment) VALUES
  ('uuid-401', 'uuid-101', 'uuid-001', 5, 'Amazing villa with a great view!'),
  ('uuid-402', 'uuid-102', 'uuid-001', 4, 'Very cozy and peaceful, loved it.'),
  ('uuid-403', 'uuid-103', 'uuid-001', 5, 'Modern, clean, and perfect location.');

-- messages table
INSERT INTO messages (message_id, sender_id, recipient_id, message_body) VALUES
  ('uuid-501', 'uuid-001', 'uuid-002', 'Hi Khalifa, I’m interested in booking your property. Can you confirm availability for June?'),
  ('uuid-502', 'uuid-002', 'uuid-001', 'Hello Agba, Yes, the Beachside Villa is available for the dates you requested!');
