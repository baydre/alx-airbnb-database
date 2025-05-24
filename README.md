# 🏡 ALX Airbnb Database Project

Welcome to the **ALX Airbnb Database** project! This repository contains SQL scripts, documentation, and performance reports for designing, normalizing, seeding, and optimizing a relational database for an Airbnb-style platform.

---

## 📚 Project Structure

- **database-script-0x01/**
  - `schema.sql` — Main database schema (tables, constraints, relationships)
  - `README.md` — Table and schema documentation

- **database-script-0x02/**
  - `seed.sql` — Sample data for all tables
  - `README.md` — Seeding instructions

- **database-adv-script/**
  - `joins_queries.sql` — Practice with SQL JOINs (INNER, LEFT, FULL OUTER)
  - `subqueries.sql` — Correlated and non-correlated subqueries
  - `aggregations_and_window_functions.sql` — Aggregations and window functions (e.g., `ROW_NUMBER`, `RANK`)
  - `database_index.sql` — Index creation statements
  - `perfomance.sql` — Performance checks and `EXPLAIN ANALYZE` usage
  - `refactored_query.sql` — Optimized query example
  - `partitioning.sql` — Table partitioning by date
  - **Reports:**
    - `optimization_report.md` — Query optimization summary
    - `index_performance.md` — Index impact notes
    - `partition_performance.md` — Partitioning performance notes
    - `performance_monitoring.md` — Overall performance monitoring

- **ERD/**
  - `requirements.md` — Entity-Relationship Diagram requirements

- `normalization.md` — Normalization process and 3NF compliance

---

## 🧩 Features & Highlights

- **Normalized Schema:**  
  Designed to 3NF for minimal redundancy and strong data integrity.

- **Sample Data:**  
  Realistic seed data for users, properties, bookings, payments, reviews, and messages.

- **Advanced SQL:**  
  Practice with JOINs, subqueries, aggregations, window functions, and partitioning.

- **Performance Optimization:**  
  Indexing, query refactoring, and partitioning with before/after analysis using `EXPLAIN ANALYZE`.

- **Documentation:**  
  Each step is documented for clarity and reproducibility.

---

## 🚀 Quick Start

1. **Set Up the Schema**
   ```bash
   psql -U <username> -d <database_name> -f database-script-0x01/schema.sql
   ```

2. **Seed the Database**
   ```bash
   psql -U <username> -d <database_name> -f database-script-0x02/seed.sql
   ```

3. **Run Advanced Scripts**
   - Explore and run scripts in `database-adv-script/` for JOINs, subqueries, and performance tasks.

---

## 📝 Documentation

- [Schema & Table Details](database-script-0x01/README.md)
- [Seeding Instructions](database-script-0x02/README.md)
- [Normalization Process](normalization.md)
- [ERD Requirements](ERD/requirements.md)
- [Performance Reports](database-adv-script/optimization_report.md), [index_performance.md](database-adv-script/index_performance.md), [partition_performance.md](database-adv-script/partition_performance.md), [performance_monitoring.md](database-adv-script/performance_monitoring.md)

---

## 🛠️ Tech Stack

- PostgreSQL or MySQL
- SQL (DDL, DML, DQL)
- SQL profiling tools (`EXPLAIN`, `ANALYZE`)

---

## 📄 License

MIT License — see [LICENSE](LICENSE) for details.

---

## 👤 Author

Yasir Musa

---

## 🤝 Contributing

Pull requests are welcome! Please follow SQL best practices and add documentation for any new scripts or features.