-- E-COMMERCE DATABASE SCHEMA
-- Database: ecommerce_db

CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;

-- Category Table
CREATE TABLE Category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

-- Customer Table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    address VARCHAR(100),
    phone_number VARCHAR(100)
);

-- Product Table
CREATE TABLE Product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    SKU VARCHAR(100) UNIQUE NOT NULL,
    description VARCHAR(100),
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    Category_catego INT,
    FOREIGN KEY (Category_catego) REFERENCES Category(category_id)
);

-- Cart Table
CREATE TABLE Cart (
    cart_id INT PRIMARY KEY AUTO_INCREMENT,
    quantity INT NOT NULL,
    Customer_customer_id INT,
    Product_product_id INT,
    FOREIGN KEY (Customer_customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (Product_product_id) REFERENCES Product(product_id)
);

-- Wishlist Table
CREATE TABLE Wishlist (
    wishlist_id INT PRIMARY KEY AUTO_INCREMENT,
    Customer_customer_id INT,
    Product_product_id INT,
    FOREIGN KEY (Customer_customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (Product_product_id) REFERENCES Product(product_id)
);

-- Payment Table
CREATE TABLE Payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    payment_date DATETIME NOT NULL,
    payment_method VARCHAR(100),
    amount DECIMAL(10,2) NOT NULL,
    Customer_custome INT,
    FOREIGN KEY (Customer_custome) REFERENCES Customer(customer_id)
);

-- Order Table
CREATE TABLE `Order` (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATETIME NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    Customer_custo INT,
    Payment_payme INT,
    Shipment_shipm INT,
    FOREIGN KEY (Customer_custo) REFERENCES Customer(customer_id),
    FOREIGN KEY (Payment_payme) REFERENCES Payment(payment_id),
    FOREIGN KEY (Shipment_shipm) REFERENCES Shipment(shipment_id)
);

-- Shipment Table
CREATE TABLE Shipment (
    shipment_id INT PRIMARY KEY AUTO_INCREMENT,
    shipment_date DATETIME NOT NULL,
    address VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(20),
    country VARCHAR(50),
    zip_code VARCHAR(10),
    Customer_custom INT,
    FOREIGN KEY (Customer_custom) REFERENCES Customer(customer_id)
);

-- Order_item Table
CREATE TABLE Order_item (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    Product_prod INT,
    Order_order_i INT,
    FOREIGN KEY (Product_prod) REFERENCES Product(product_id),
    FOREIGN KEY (Order_order_i) REFERENCES `Order`(order_id)
);