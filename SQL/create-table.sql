USE LaundryManagementSystem;

-- Table: SERVICE_TYPE
-- Stores the types of services offered (e.g., Clothes, Denim, Towels)
CREATE TABLE service_type (
    service_type_id INT IDENTITY(1,1) PRIMARY KEY, -- Auto-incrementing primary key for service type
    service_type_code AS ('SRVT-' + RIGHT('000' + CAST(service_type_id AS NVARCHAR), 3)) PERSISTED, -- Computed column for service type code (e.g., SRVT-001)
    service_type_name NVARCHAR(50) NOT NULL UNIQUE, -- Unique name of the service type
   
	min_weight DECIMAL(10, 2) NOT NULL, -- Minimum weight allowed for this category
    max_weight DECIMAL(10, 2) NOT NULL, -- Maximum weight allowed for this category
);

-- Table: SERVICE_CATEGORY
-- Stores the categories of services (e.g., Wash & Dry, Wash, Dry)
CREATE TABLE service_category (
    service_category_id INT IDENTITY(1,1) PRIMARY KEY, -- Auto-incrementing primary key for service category
    service_category_code AS ('SRVC-' + RIGHT('000' + CAST(service_category_id AS NVARCHAR), 3)) PERSISTED, -- Computed column for service category code (e.g., SRVC-001)
    service_category_name NVARCHAR(50) NOT NULL UNIQUE, -- Unique name of the service category
	service_rate DECIMAL(10, 2) NOT NULL, -- Rate for the service type (e.g., 30.00)
    CHECK (min_weight <= max_weight), -- Ensures that min_weight is less than or equal to max_weight
);

-- Table: CUSTOMERS
-- Stores customer information
CREATE TABLE customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY, -- Auto-incrementing primary key for customers
    customer_code AS ('CSTM-' + RIGHT('000' + CAST(customer_id AS NVARCHAR), 3)) PERSISTED, -- Computed column for customer code (e.g., CSTM-001)
    customer_name NVARCHAR(50) NOT NULL, -- Name of the customer
    phone_number NVARCHAR(11) NOT NULL, -- Customer's phone number
    customer_email NVARCHAR(100) NOT NULL UNIQUE, -- Unique email address of the customer
    customer_address NVARCHAR(255) NOT NULL, -- Address of the customer
);

-- Table: ORDERS
-- Stores order details
CREATE TABLE orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY, -- Auto-incrementing primary key for orders
    order_code AS ('OORD-' + RIGHT('000' + CAST(order_id AS NVARCHAR(3)), 3)) PERSISTED, -- Computed column for order code (e.g., OORD-001)
    service_type_id INT NOT NULL, -- Foreign key referencing SERVICE_TYPE
    service_category_id INT NOT NULL, -- Foreign key referencing SERVICE_CATEGORY
    customer_id INT NOT NULL, -- Foreign key referencing CUSTOMERS
    order_weight DECIMAL(10, 2) NOT NULL CHECK (order_weight >= 0), -- Weight of the order
    delivery_date DATETIME NOT NULL, -- Scheduled delivery date
    order_date DATETIME DEFAULT GETDATE(), -- Date the order was placed (default: current date)
    order_status NVARCHAR(15) NOT NULL CHECK (order_status IN ('PENDING', 'PROCESSING', 'READY', 'DELIVERED')) DEFAULT 'PENDING', -- Status of the order
    order_color NVARCHAR(20), -- Optional: Color preference for the order
    addon_charge DECIMAL(10, 2) DEFAULT 0.00, -- Additional charges for the order
    discount DECIMAL(10, 2) DEFAULT 0.00, -- Discount applied to the order
    paid_amount DECIMAL(10, 2) NOT NULL CHECK (paid_amount >= 0) DEFAULT 0.00, -- Total amount paid for the order

    -- Foreign key constraints
    FOREIGN KEY (service_type_id) REFERENCES service_type(service_type_id),
    FOREIGN KEY (service_category_id) REFERENCES service_category(service_category_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);