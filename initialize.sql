DELETE FROM accounts;
DELETE FROM deliveries;
DELETE FROM order_lines;
DELETE FROM orders;
DELETE FROM payment_histories;
DELETE FROM products;
DELETE FROM receipts;
DELETE FROM supplies;
DELETE FROM users;

SELECT * FROM users;
INSERT INTO users (id, email, created_at, updated_at, first_name, last_name, phone_number, billing_unit_number, billing_street, billing_village, billing_building, billing_landmark, billing_city, delivery_unit_number, delivery_street, delivery_village, delivery_building, delivery_landmark, delivery_city, outstanding_balance, account_type, business_name)
VALUES
(1, 'karlotabios@yahoo.com', CURRENT_DATE, CURRENT_DATE, 'Karlo', 'Tabios', '09989548639', '411', 'Imelda Avenue', 'Mayfield Park Residences', 'Daroma', 'SM Hypermarket', 'Cainta', '411', 'Imelda Avenue', 'Mayfield Park Residences', 'Daroma', 'SM Hypermarket', 'Cainta', 0, 'a', 'Ateneo de Manila University');
INSERT INTO accounts (id, created_at, updated_at, first_name, last_name, phone_number, billing_unit_number, billing_street, billing_village, billing_building, billing_landmark, billing_city, delivery_unit_number, delivery_street, delivery_village, delivery_building, delivery_landmark, delivery_city, outstanding_balance, account_type, business_name)
VALUES
(1, CURRENT_DATE, CURRENT_DATE, 'Karlo', 'Tabios', '09989548639', '411', 'Imelda Avenue', 'Mayfield Park Residences', 'Daroma', 'SM Hypermarket', 'Cainta', '411', 'Imelda Avenue', 'Mayfield Park Residences', 'Daroma', 'SM Hypermarket', 'Cainta', 0, 'a', 'Ateneo de Manila University');

SELECT * FROM products;
INSERT INTO products (id, product_name, price, created_at, updated_at)
VALUES
(1, 'Kale', 100, CURRENT_DATE, CURRENT_DATE);
INSERT INTO products (id, product_name, price, created_at, updated_at)
VALUES
(2, 'Blueberry', 200, CURRENT_DATE, CURRENT_DATE);
INSERT INTO products (id, product_name, price, created_at, updated_at)
VALUES
(3, 'Lemon', 300, CURRENT_DATE, CURRENT_DATE);
INSERT INTO products (id, product_name, price, created_at, updated_at)
VALUES
(4, 'Lychee', 400, CURRENT_DATE, CURRENT_DATE);
INSERT INTO products (id, product_name, price, created_at, updated_at)
VALUES
(5, 'Strawberry', 500, CURRENT_DATE, CURRENT_DATE);
INSERT INTO products (id, product_name, price, created_at, updated_at)
VALUES
(6, 'Grapefruit', 600, CURRENT_DATE, CURRENT_DATE);
INSERT INTO products (id, product_name, price, created_at, updated_at)
VALUES
(7, 'Cherry', 700, CURRENT_DATE, CURRENT_DATE);