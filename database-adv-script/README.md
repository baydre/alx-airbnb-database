---

## 📘 Final Touch: `README.md`

Here’s a structure to summarize your tasks clearly in `README.md`.

```markdown
# 🏡 Airbnb Clone - Backend Performance Tasks

## 🧩 Overview

This repository contains SQL files and reports focused on improving the performance of a backend Airbnb-style application using:

- Indexing
- Aggregations
- Query Optimization
- Partitioning
- Monitoring

---

## ✅ Tasks Summary

### Task 0: SQL Joins

In this task, I practiced writing different SQL JOIN queries to combine data across multiple tables.

- **INNER JOIN** between `bookings` and `users` to display booking details along with user names.
- **LEFT JOIN** between `properties` and `reviews` to show all properties and their reviews (if available).
- **FULL OUTER JOIN** to list all users and bookings, including unmatched records.

---

### Task 1: SQL Subqueries

This task involved using subqueries to filter and analyze data.

- **Non-correlated subquery** to list properties with an average rating above 4.
- **Correlated subquery** to find users who have written more than two reviews.

---

### Task 2: Aggregations & Window Functions
Used `GROUP BY` and `ROW_NUMBER()` to analyze user booking behavior.

> 📄 `aggregations_and_window_functions.sql`

---

### Task 3: Indexing
Added indexes and verified faster performance using `EXPLAIN ANALYZE`.

> 📄 `database_index.sql`  
> 📄 `index_performance.md`

---

### Task 4: Query Optimization
Refactored slow joins using filtering and indexing strategies.

> 📄 `perfomance.sql`  
> 📄 `optimization_report.md`

---

### Task 5: Partitioning
Partitioned bookings by `start_date` and compared performance before/after.

> 📄 `partitioning.sql`  
> 📄 `partition_performance.md`

---

### Task 6: Performance Monitoring
Analyzed improvements using `EXPLAIN ANALYZE`, summarized all performance gains.

> 📄 `performance_monitoring.md`

---

## 🔧 Tech Used

- PostgreSQL (or MySQL)
- SQL profiling (`EXPLAIN`, `ANALYZE`)
- Indexing & Partitioning concepts