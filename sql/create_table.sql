CREATE TABLE orders (
    order_id INT PRIMARY KEY NOT NULL,
    order_date DATE,
    order_time TIME
);

CREATE TABLE pizzas (
    pizza_id VARCHAR(20) PRIMARY KEY NOT NULL,
    pizza_type_id VARCHAR(20),
    size VARCHAR(10),
    price DECIMAL(10,2)
);

CREATE TABLE pizza_types (
    pizza_type_id VARCHAR(20) PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    category VARCHAR(50),
    ingredients TEXT
);

CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY NOT NULL,
    order_id INT,
    pizza_id VARCHAR(20)
);