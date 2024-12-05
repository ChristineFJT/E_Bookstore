# E-Bookstore Database System

## Overview
This project involves designing, implementing, and documenting a database system for an electronic bookstore. The system will handle various aspects such as book inventory management, customer orders, feedback, payments, and delivery statuses. The goal is to create a functional and efficient system that supports a seamless online bookstore experience.

## Key Features
- **Book Inventory Management**: Manage books available in the bookstore, including details like book name, publisher, quantity, and price.
- **Customer Registration and Management**: Customers need to register as members to purchase books and provide feedback.
- **Shopping Cart and Orders**: Members can add books to their cart, view order summaries, and make payments. Once payment is made, the order is confirmed, and the books are delivered within 7 working days.
- **Feedback System**: Members can rate books (1-10) and leave a short text comment. Each user can provide only one feedback per book.
- **Publisher and Orders Management**: Track the books ordered from publishers, the books received, and the status of these orders.

## Database Management
This project uses **Microsoft SQL Server (MSSQL)** for database management.

## Queries to Implement Using Data Manipulation Language (DML)
### 1. List the book(s) with the highest rating.
- Show book ID, book name, and the rating.
  
### 2. Find the total number of feedback per member.
- Show member ID, member name, and total number of feedbacks per member.

### 3. Find the total number of books published by each publisher.
- Show publisher ID, publisher name, and the number of books published.

### 4. Find the total number of books ordered by the store manager from each publisher.

### 5. From the book table, list the books where the quantity is greater than the average quantity of all books.

### 6. Find the bestselling book(s).

### 7. Show the member(s) who spent the most on buying books.

### 8. Show the member(s) who have not made any orders.

### 9. List purchased books that have not been delivered to members.
- Show member identification number, address, contact number, book serial number, book title, quantity, date, and delivery status.

### 10. Show the members who made more than two orders.

## Assumptions
1. **Markup on Books**: Books must be sold with a markup of less than fifteen (15) percent (%).
2. **Rating Multiple Purchases**: A user who has purchased the same book under a different Cart ID and payment ID can rate the book again.
3. **Publisher's Books**: All books published by publishers will be sold by the bookstore.
4. **Membership Requirement**: All customers who purchase books online must be members of the bookstore.
5. **Reordering Books**: The bookstore manager will automatically place an order with the publisher when the quantity of available books falls below five (5).
6. **Entity Identification**: In the entity-relationship diagram, the member identification number is referred to as `memberID`, and the book serial number is referred to as `bookID`.
7. **Gender Limitation**: Only two genders, "Female" and "Male", will be stored in the database system.
8. **Phone Number Format**: All bookstore members are assumed to have signed up with a Malaysian phone number (+60).
9. **Shipping Limitation**: All addresses in the database are assumed to be Malaysian addresses, with only local shipping available for book orders.
10. **Multiple Books in One Payment**: A member can purchase multiple books with a single payment, and one rating will be required for each book purchased.
11. **Rating for Multiple Same Books**: Under the same payment, a user who purchases multiple copies of the same book is only required to rate it once.
12. **Default Cart ID**: All members are assumed to have a default cart ID, even if no items have been selected in the shopping cart.
13. **Order and Delivery Status**: The `Cart_Delivery_Status` and `Order_Delivery_Status` can only have two possible entries: 'Arrived' and 'Not Arrived'.
