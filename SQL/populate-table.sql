USE LaundryManagementSystem;

INSERT INTO SERVICE_TYPE (service_type_name, service_rate) VALUES
('Clothes', 30.00),
('Denim', 60.00),
('Towels', 60.00),
('Linens', 60.00),
('Comforter (Queen)', 320.00),
('Comforter (King)', 420.00);

INSERT INTO SERVICE_CATEGORY (service_category_name, min_weight, max_weight) VALUES
('Wash & Dry', 4.00, 6.00),
('Wash', 4.00, 5.00),
('Dry', 4.00, 6.00);

INSERT INTO CUSTOMERS (customer_name, phone_number, customer_email, customer_address) VALUES
('Dao', '09123456789', 'dnzdaorick@gmail.com', 'BLK 4 LOT 16 BATASAN HILLS'),
('Joshua', '09123456789', 'joshua@gmail.com', 'BLK 4 LOT 12 BEMBANG SUBDV'),
('John Aldrein', '09123456789', 'johnaldrein@gmail.com', 'BLK 5 LOT 11 BEMBANG SUBDV'),
('Ash', '09123456789', 'ash@gmail.com', 'BLK 3 LOT 10 BEMBANG SUBDV'),
('Kaira', '09123456789', 'kaira@gmail.com', 'BLK 2 LOT 9 BEMBANG SUBDV');