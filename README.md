# E-Commerce Database Project
A relational database design for an e-commerce platform — created as part of Database-1 coursework.
The database models essential components of an online store such as customers, products, orders, payments, carts, wishlists, and shipments.

# Entity–Relationship Diagram (ERD)
<img width="919" height="896" alt="DB" src="https://github.com/user-attachments/assets/04a01379-e335-4b24-99e7-55daaf8efc8a" />

# Database Schema
### Main Entities
| Entity         | Description                                                           |
| :------------- | :-------------------------------------------------------------------- |
| **Customer**   | Stores user information such as name, email, password, and address    |
| **Product**    | Contains product details including SKU, description, price, and stock |
| **Category**   | Groups products into categories                                       |
| **Cart**       | Represents customer’s active cart items before checkout               |
| **Wishlist**   | Saves items customers wish to purchase later                          |
| **Order**      | Records confirmed purchases and their total prices                    |
| **Order_Item** | Represents individual products in an order                            |
| **Payment**    | Handles payment details and methods                                   |
| **Shipment**   | Manages order delivery information                                    |
