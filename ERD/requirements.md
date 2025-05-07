# ERD Requirements

## Tool Used
This ER diagram was created using [dbdiagram.io](https://dbdiagram.io). It visually models the structure of an Airbnb-like rental platform database.

## Entities Identified
- User
- Property
- Booking
- Payment
- Review

## Relationships
- One User can own many Properties
- One User can make many Bookings
- One Booking is for one Property and one User
- One Booking can have one Payment
- One User can leave multiple Reviews
- One Property can have many Reviews

## Notes
All relationships have been designed to support future scalability while adhering to normalization principles.
