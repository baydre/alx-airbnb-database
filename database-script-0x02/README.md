# Seeding the AirBnB Database

This README provides instructions for seeding the AirBnB database with sample data. The data includes users, properties, bookings, payments, reviews, and messages, simulating real-world usage of the AirBnB application.

## Objective

The objective of this task is to populate the database with realistic sample data, ensuring that all tables (Users, Properties, Bookings, Payments, Reviews, and Messages) contain relevant and well-structured data.

## Steps to Seed the Database

### 1. **Ensure the Database Schema is Created**
Before running the seed data, make sure you have already executed the `schema.sql` file to create the database tables.

### 2. **Seed Data**

Run the `seed.sql` script to insert sample data into the database. The script adds sample records to each of the following tables:

- **Users**: Contains information about users (guests, hosts, and admin).
- **Properties**: Includes properties listed by hosts.
- **Bookings**: Records of user bookings for properties.
- **Payments**: Payment details associated with bookings.
- **Reviews**: Reviews left by users for properties.
- **Messages**: Messages exchanged between users (guests and hosts).

#### Sample Data for Each Table:
- **Users**: 3 users, including a guest, a host, and an admin.
- **Properties**: 3 properties listed by the host.
- **Bookings**: 3 bookings, each for a different property.
- **Payments**: Payments linked to bookings made by the guest.
- **Reviews**: 3 reviews, one for each property.
- **Messages**: 2 messages exchanged between the guest and host.

### 3. **Run the Seed SQL Script**

You can execute the `seed.sql` script in your SQL client or terminal as follows:

```bash
psql -U username -d database_name -f seed.sql

or

mysql -u username -p database_name < seed.sql
