# Airbnb Database Schema - SQL Scripts

This repository contains the SQL scripts for setting up the database schema for an Airbnb-like platform. The database design follows the principles of normalization and ensures efficient storage and retrieval of data, supporting the core features of the platform.

## Tables Overview

The database consists of the following tables:

1. **Users**: Stores information about the users of the platform.
2. **Properties**: Contains details about properties listed on the platform.
3. **Bookings**: Represents the bookings made by users for properties.
4. **Payments**: Tracks the payments made for bookings.
5. **Reviews**: Stores reviews submitted by users for properties.
6. **Messages**: Allows communication between users (sender and recipient).

### Table Structure

#### Users Table
- `user_id` (UUID): Primary Key
- `first_name` (VARCHAR): User's first name.
- `last_name` (VARCHAR): User's last name.
- `email` (VARCHAR): User's email (Unique).
- `password_hash` (VARCHAR): Hashed password for user authentication.
- `phone_number` (VARCHAR): User's phone number (Optional).
- `role` (ENUM): Defines the role of the user (guest, host, admin).
- `created_at` (TIMESTAMP): Account creation timestamp (Defaults to current time).

#### Properties Table
- `property_id` (UUID): Primary Key
- `host_id` (UUID): Foreign Key referencing the `users` table (User who is the host).
- `name` (VARCHAR): Name of the property.
- `description` (TEXT): Description of the property.
- `location` (VARCHAR): Location of the property.
- `pricepernight` (DECIMAL): Price per night for the property.
- `created_at` (TIMESTAMP): Timestamp when the property was created.
- `updated_at` (TIMESTAMP): Timestamp when the property was last updated.

#### Bookings Table
- `booking_id` (UUID): Primary Key
- `property_id` (UUID): Foreign Key referencing the `properties` table.
- `user_id` (UUID): Foreign Key referencing the `users` table.
- `start_date` (DATE): Start date of the booking.
- `end_date` (DATE): End date of the booking.
- `total_price` (DECIMAL): Total price for the booking.
- `status` (ENUM): The status of the booking (pending, confirmed, canceled).
- `created_at` (TIMESTAMP): Timestamp when the booking was created.

#### Payments Table
- `payment_id` (UUID): Primary Key
- `booking_id` (UUID): Foreign Key referencing the `bookings` table.
- `amount` (DECIMAL): Payment amount.
- `payment_date` (TIMESTAMP): Date when the payment was made.
- `payment_method` (ENUM): Payment method used (credit_card, paypal, stripe).

#### Reviews Table
- `review_id` (UUID): Primary Key
- `property_id` (UUID): Foreign Key referencing the `properties` table.
- `user_id` (UUID): Foreign Key referencing the `users` table.
- `rating` (INTEGER): Rating given to the property (1 to 5).
- `comment` (TEXT): Review comment.
- `created_at` (TIMESTAMP): Timestamp when the review was created.

#### Messages Table
- `message_id` (UUID): Primary Key
- `sender_id` (UUID): Foreign Key referencing the `users` table (Sender of the message).
- `recipient_id` (UUID): Foreign Key referencing the `users` table (Recipient of the message).
- `message_body` (TEXT): Content of the message.
- `sent_at` (TIMESTAMP): Timestamp when the message was sent.

### Running the SQL Scripts

To set up the database schema, simply run the `schema.sql` file in your SQL environment. This will create the tables with all necessary constraints and relationships.

### Example Usage

After running the schema script, you can begin populating the tables with sample data using the `seed.sql` script (located in the next task's directory).

### Dependencies

- PostgreSQL or MySQL (or any relational database system that supports SQL syntax used in this script).
- SQL client to execute the scripts.

---

### Contributing

If you want to contribute to this project, feel free to fork the repository and submit a pull request. Please follow the SQL conventions for naming and structure.

---

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
