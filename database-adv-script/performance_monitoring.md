# 📈 Performance Monitoring Report

## 🧪 Tools Used
- `EXPLAIN ANALYZE` — Used to track query execution plan and cost
- `SHOW PROFILE` (MySQL only) — For breaking down time spent at each stage

---

## 🔍 Task 2: Aggregation & Window Functions

### Original Query:
Grouped all bookings by user without index on `user_id`.

### After Adding Index:
```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
