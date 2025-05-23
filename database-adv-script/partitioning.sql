-- Parent table
CREATE TABLE bookings_partitioned (
  booking_id UUID,
  user_id UUID,
  property_id UUID,
  start_date DATE,
  end_date DATE,
  total_price DECIMAL,
  status VARCHAR,
  created_at TIMESTAMP
) PARTITION BY RANGE (start_date);

-- Child partitions
CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
  FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
  FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');
