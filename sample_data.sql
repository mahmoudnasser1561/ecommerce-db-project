-- Insert Categories
INSERT INTO Category (category_id, name) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home & Garden'),
(5, 'Sports & Outdoors');

-- Insert Customers
INSERT INTO Customer (customer_id, first_name, last_name, email, password, address, phone_number) VALUES
(1, 'John', 'Doe', 'john.doe@email.com', 'hashed_password_1', '123 Main St', '+1234567890'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', 'hashed_password_2', '456 Oak Ave', '+1234567891'),
(3, 'Mike', 'Johnson', 'mike.j@email.com', 'hashed_password_3', '789 Pine Rd', '+1234567892'),
(4, 'Sarah', 'Williams', 'sarah.w@email.com', 'hashed_password_4', '321 Elm St', '+1234567893'),
(5, 'David', 'Brown', 'david.b@email.com', 'hashed_password_5', '654 Maple Dr', '+1234567894');

-- Insert Products
INSERT INTO Product (product_id, SKU, description, price, stock, Category_catego) VALUES
(1, 'ELEC-001', 'Wireless Headphones', 79.99, 50, 1),
(2, 'ELEC-002', 'Smart Watch', 299.99, 30, 1),
(3, 'CLOTH-001', 'Cotton T-Shirt', 19.99, 100, 2),
(4, 'CLOTH-002', 'Denim Jeans', 49.99, 75, 2),
(5, 'BOOK-001', 'Programming Guide', 39.99, 45, 3),
(6, 'BOOK-002', 'Mystery Novel', 14.99, 60, 3),
(7, 'HOME-001', 'Table Lamp', 34.99, 40, 4),
(8, 'SPORT-001', 'Yoga Mat', 24.99, 80, 5),
(9, 'ELEC-003', 'USB-C Cable', 12.99, 200, 1),
(10, 'HOME-002', 'Coffee Maker', 89.99, 25, 4);

-- Insert Cart Items
INSERT INTO Cart (cart_id, quantity, Customer_customer_id, Product_product_id) VALUES
(1, 2, 1, 1),
(2, 1, 1, 5),
(3, 3, 2, 3),
(4, 1, 3, 2),
(5, 2, 4, 8);

-- Insert Wishlist Items
INSERT INTO Wishlist (wishlist_id, Customer_customer_id, Product_product_id) VALUES
(1, 1, 2),
(2, 1, 7),
(3, 2, 10),
(4, 3, 5),
(5, 4, 6),
(6, 5, 1);

-- Insert Shipments
INSERT INTO Shipment (shipment_id, shipment_date, address, city, state, country, zip_code, Customer_custom) VALUES
(1, '2025-10-15 10:30:00', '123 Main St', 'New York', 'NY', 'USA', '10001', 1),
(2, '2025-10-16 14:20:00', '456 Oak Ave', 'Los Angeles', 'CA', 'USA', '90001', 2),
(3, '2025-10-17 09:15:00', '789 Pine Rd', 'Chicago', 'IL', 'USA', '60601', 3);

-- Insert Payments
INSERT INTO Payment (payment_id, payment_date, payment_method, amount, Customer_custome) VALUES
(1, '2025-10-15 10:00:00', 'Credit Card', 179.97, 1),
(2, '2025-10-16 14:00:00', 'PayPal', 59.97, 2),
(3, '2025-10-17 09:00:00', 'Debit Card', 299.99, 3);

-- Insert Orders
INSERT INTO `Order` (order_id, order_date, total_price, Customer_custo, Payment_payme, Shipment_shipm) VALUES
(1, '2025-10-15 10:00:00', 179.97, 1, 1, 1),
(2, '2025-10-16 14:00:00', 59.97, 2, 2, 2),
(3, '2025-10-17 09:00:00', 299.99, 3, 3, 3);

-- Insert Order Items
INSERT INTO Order_item (order_item_id, quantity, price, Product_prod, Order_order_i) VALUES
(1, 2, 79.99, 1, 1),
(2, 1, 19.99, 3, 1),
(3, 3, 19.99, 3, 2),
(4, 1, 299.99, 2, 3);


