DELETE FROM order_lines;
DELETE FROM orders;

SELECT * FROM orders;
INSERT INTO orders (id, amount_due, mode_of_payment, status, date_ordered, created_at, updated_at, accounts_id)
VALUES
(1, 100, 'COD', 'Ready', CURRENT_DATE, CURRENT_DATE, CURRENT_DATE, 1)
INSERT INTO orders (id, amount_due, mode_of_payment, status, date_ordered, created_at, updated_at, accounts_id)
VALUES
(2, 200, 'COD', 'Pending', CURRENT_DATE, CURRENT_DATE, CURRENT_DATE, 1)
INSERT INTO orders (id, amount_due, mode_of_payment, status, date_ordered, created_at, updated_at, accounts_id, delivery_id)
VALUES
(3, 300, 'COD', 'Delivered', CURRENT_DATE, CURRENT_DATE, CURRENT_DATE, 1, 1)
INSERT INTO orders (id, amount_due, mode_of_payment, status, date_ordered, created_at, updated_at, accounts_id)
VALUES
(4, 400, 'COD', 'Ready', CURRENT_DATE, CURRENT_DATE, CURRENT_DATE, 1)
INSERT INTO orders (id, amount_due, mode_of_payment, status, date_ordered, created_at, updated_at, accounts_id)
VALUES
(5, 500, 'COD', 'Pending', CURRENT_DATE, CURRENT_DATE, CURRENT_DATE, 1)
INSERT INTO orders (id, amount_due, mode_of_payment, status, date_ordered, created_at, updated_at, accounts_id, delivery_id)
VALUES
(6, 600, 'COD', 'Delivered', CURRENT_DATE, CURRENT_DATE, CURRENT_DATE, 1, 2)

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

SELECT * FROM order_lines;
INSERT INTO order_lines (id, subtotal_amount, quantity, created_at, updated_at, orders_id, products_id)
VALUES
(1, 100, 1, CURRENT_DATE, CURRENT_DATE, 1, 1);
INSERT INTO order_lines (id, subtotal_amount, quantity, created_at, updated_at, orders_id, products_id)
VALUES
(2, 200, 2, CURRENT_DATE, CURRENT_DATE, 1, 1);
INSERT INTO order_lines (id, subtotal_amount, quantity, created_at, updated_at, orders_id, products_id)
VALUES
(3, 300, 3, CURRENT_DATE, CURRENT_DATE, 1, 1);
INSERT INTO order_lines (id, subtotal_amount, quantity, created_at, updated_at, orders_id, products_id)
VALUES
(4, 200, 1, CURRENT_DATE, CURRENT_DATE, 2, 2);
INSERT INTO order_lines (id, subtotal_amount, quantity, created_at, updated_at, orders_id, products_id)
VALUES
(5, 600, 2, CURRENT_DATE, CURRENT_DATE, 2, 3);
INSERT INTO order_lines (id, subtotal_amount, quantity, created_at, updated_at, orders_id, products_id)
VALUES
(6, 1200, 3, CURRENT_DATE, CURRENT_DATE, 2, 4);
INSERT INTO order_lines (id, subtotal_amount, quantity, created_at, updated_at, orders_id, products_id)
VALUES
(7, 300, 3, CURRENT_DATE, CURRENT_DATE, 3, 1);
INSERT INTO order_lines (id, subtotal_amount, quantity, created_at, updated_at, orders_id, products_id)
VALUES
(8, 300, 3, CURRENT_DATE, CURRENT_DATE, 4, 1);
INSERT INTO order_lines (id, subtotal_amount, quantity, created_at, updated_at, orders_id, products_id)
VALUES
(9, 300, 3, CURRENT_DATE, CURRENT_DATE, 5, 1);
INSERT INTO order_lines (id, subtotal_amount, quantity, created_at, updated_at, orders_id, products_id)
VALUES
(10, 300, 3, CURRENT_DATE, CURRENT_DATE, 5, 1);
INSERT INTO order_lines (id, subtotal_amount, quantity, created_at, updated_at, orders_id, products_id)
VALUES
(11, 300, 3, CURRENT_DATE, CURRENT_DATE, 6, 1);
INSERT INTO order_lines (id, subtotal_amount, quantity, created_at, updated_at, orders_id, products_id)
VALUES
(12, 300, 3, CURRENT_DATE, CURRENT_DATE, 1, 1);