# ⚡ Optimization Report

## 🔍 Initial Query
Involved multiple joins across 4 large tables with no early filtering.

### 🔴 Bottlenecks:
- Sequential scans on `bookings`
- Joins on unindexed columns
- High cost due to lack of row filtering before joins

---

## ✅ Optimized Version

### 🧪 Improvements:
- Introduced early filtering using a `WITH` clause (CTE)
- Ensured indexed columns were used (`user_id`, `property_id`, `booking_id`)
- Reduced data passed into joins

### 💡 Result:
- Significant drop in execution time
- Joins used index scans
- Lower planning and execution cost observed with `EXPLAIN ANALYZE`
