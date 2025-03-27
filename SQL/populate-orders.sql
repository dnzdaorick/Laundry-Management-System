USE LaundryManagementSystem;

INSERT INTO orders (service_type_id, service_category_id, customer_id, order_weight, delivery_date, order_color) VALUES
(1, 1, 1, 2.5, '2025-12-15', 'WHITE'),
(1, 1, 2, 3.0, '2025-12-16', 'WHITE'),
(2, 1, 3, 1.5, '2025-12-17', NULL),
(2, 1, 4, 2.0, '2025-12-18', NULL),
(2, 1, 5, 2.5, '2025-12-19', 'BLACK'),
(1, 1, 1, 3.0, '2025-12-20', 'BLACK')
