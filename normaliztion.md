# Database Normalization - Airbnb Clone

## Objective

This document explains the normalization process applied to our database schema to ensure it satisfies the **Third Normal Form (3NF)** for optimal performance, consistency, and data integrity.

---

## Step 1: First Normal Form (1NF)

All tables in the schema satisfy 1NF:
- Each column contains **atomic** values.
- There are **no repeating groups or arrays**.
- All records are uniquely identified by **primary keys** (`uuid`).

✅ 1NF achieved.

---

## Step 2: Second Normal Form (2NF)

The schema uses **single-column primary keys** (`uuid`), so:
- There are **no partial dependencies**.
- Every non-key attribute is fully dependent on the entire primary key.

✅ 2NF achieved.

---

## Step 3: Third Normal Form (3NF)

We reviewed each table for **transitive dependencies** (when non-key attributes depend on other non-key attributes).  
None were found — all non-key attributes depend directly on the primary key.

✅ 3NF achieved.

---

## Summary

Our database schema is fully normalized up to **Third Normal Form (3NF)**:
- Redundancy is minimized
- Data integrity is ensured
- Structure supports scalability and clean relationships

No changes were required because the initial schema design already adhered to normalization best practices.
