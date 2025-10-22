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

# Tech Stack
Database: MySQL


```mermaid
erDiagram
    CUSTOMER {
        int customer_id PK
        varchar first_name
        varchar last_name
        varchar email
        varchar password
        varchar address
        varchar phone_number
    }

    PRODUCT {
        int product_id PK
        varchar SKU
        varchar description
        decimal price
        int stock
        int category_id FK
    }

    CATEGORY {
        int category_id PK
        varchar name
    }

    CART {
        int cart_id PK
        int quantity
        int customer_id FK
        int product_id FK
    }

    WISHLIST {
        int wishlist_id PK
        int customer_id FK
        int product_id FK
    }

    ORDER {
        int order_id PK
        datetime order_date
        decimal total_price
        int customer_id FK
        int payment_id FK
        int shipment_id FK
    }

    ORDER_ITEM {
        int order_item_id PK
        int quantity
        decimal price
        int product_id FK
        int order_id FK
    }

    PAYMENT {
        int payment_id PK
        datetime payment_date
        varchar payment_method
        decimal amount
        int customer_id FK
    }

    SHIPMENT {
        int shipment_id PK
        datetime shipment_date
        varchar address
        varchar city
        varchar state
        varchar country
        varchar zip_code
        int customer_id FK
    }

    CUSTOMER ||--o{ ORDER : places
    CUSTOMER ||--o{ PAYMENT : makes
    CUSTOMER ||--o{ SHIPMENT : receives
    CUSTOMER ||--o{ CART : has
    CUSTOMER ||--o{ WISHLIST : keeps

    CATEGORY ||--o{ PRODUCT : includes
    PRODUCT ||--o{ ORDER_ITEM : contains
    PRODUCT ||--o{ CART : added_to
    PRODUCT ||--o{ WISHLIST : saved_in

    ORDER ||--o{ ORDER_ITEM : contains
    ORDER ||--|| PAYMENT : paid_with
    ORDER ||--|| SHIPMENT : delivered_by

