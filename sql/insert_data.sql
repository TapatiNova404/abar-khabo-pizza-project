USE Abar__Khabo_Pizza;

-- Orders table
LOAD DATA INFILE 'orders.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, order_date, order_time);

-- Pizzas table
LOAD DATA INFILE 'order_details.csv'
INTO TABLE pizzas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(pizza_id, pizza_type_id, size, price);

-- Pizza Types table
LOAD DATA INFILE 'pizza_types.csv'
INTO TABLE pizza_types
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(pizza_type_id, name, category, ingredients);

-- Order Details table
LOAD DATA INFILE 'order_details.csv'
INTO TABLE order_details
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_details_id, order_id, pizza_id);