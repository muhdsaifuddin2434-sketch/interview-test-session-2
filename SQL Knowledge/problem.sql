-- Table: employees
CREATE TABLE employees (
id SERIAL PRIMARY KEY,
name TEXT NOT NULL,
position TEXT,
department TEXT,
salary NUMERIC(10,2)
);
-- Table: customers
CREATE TABLE customers (
customer_id SERIAL PRIMARY KEY,
customer_name TEXT NOT NULL,
city TEXT
);
-- Table: inventories (products)
CREATE TABLE inventories (
product_id SERIAL PRIMARY KEY,
product_name TEXT NOT NULL,
quantity INTEGER DEFAULT 0,
price NUMERIC(10,2)
);
-- Table: orders
CREATE TABLE orders (order_id SERIAL PRIMARY KEY,
order_date DATE NOT NULL,
customer_id INTEGER NOT NULL,
total_amount NUMERIC(10,2),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
-- Table: sales
CREATE TABLE sales (
order_id INTEGER NOT NULL,
customer_id INTEGER NOT NULL,
product_id INTEGER NOT NULL,
quantity INTEGER NOT NULL,
sale_date DATE NOT NULL,
PRIMARY KEY (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (product_id) REFERENCES inventories(product_id)
);
