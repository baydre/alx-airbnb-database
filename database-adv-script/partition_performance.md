# 📊 Partitioning Performance Notes

## 🎯 Goal
Improve performance of date-based queries by partitioning the `bookings` table on `start_date`.

---

## 🛠 Implementation

- Created `bookings_partitioned` as parent table
- Year-based partitions: `bookings_2023`, `bookings_2024`

---

## 🔬 Performance Testing

### Query:
```sql
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
