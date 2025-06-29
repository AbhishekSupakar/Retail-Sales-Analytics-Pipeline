CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  order_value DECIMAL(10,2),
  status ENUM('Completed', 'Cancelled', 'Returned', 'Abandoned'),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);