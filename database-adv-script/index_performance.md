# 🗂️ Index Performance Notes

## 🎯 Purpose
Indexes were created to optimize query performance on frequently joined or filtered columns.

## ✅ Indexes Added
- `bookings.user_id`
- `bookings.property_id`
- `users.user_id`
- `properties.property_id`
- `reviews.property_id`

## 🧪 Performance Test

### Query:
```sql
SELECT user_id, COUNT(*) FROM bookings GROUP BY user_id;