CREATE DATABASE bamazon;
USE bamazon;
CREATE TABLE products (item_id int AUTO_INCREMENT, product_id varchar(50) NOT NULL, department_name varchar(50) NOT NULL, price varchar(30) NOT NULL, stock_quantity int NOT NULL, PRIMARY KEY(item_id) );

select * from products; 
INSERT INTO products (product_id, department_name, price, stock_quantity) VALUES ("iPhone 11 Pro", "Technology", 999.00, 45);
INSERT INTO products (product_id, department_name, price, stock_quantity) VALUES ("MacBook Pro", "Technology", 1200.00, 30);
INSERT INTO products (product_id, department_name, price, stock_quantity) VALUES ("AirPods", "Technology", 150.00, 100);
INSERT INTO products (product_id, department_name, price, stock_quantity) VALUES ("AppleTV", "Technology", 149.00, 50);
INSERT INTO products (product_id, department_name, price, stock_quantity) VALUES ("Apple Watch Series 4", "Technology", 349.00, 100);
INSERT INTO products (product_id, department_name, price, stock_quantity) VALUES ("HomePod", "Technology", 299.00, 55);
INSERT INTO products (product_id, department_name, price, stock_quantity) VALUES ("iMac Pro", "Technology", 4999.00, 20);
INSERT INTO products (product_id, department_name, price, stock_quantity) VALUES ("iPad Pro", "Technology", 799.00, 500);
INSERT INTO products (product_id, department_name, price, stock_quantity) VALUES ("iPad Mini", "Technology", 399.00, 100);
INSERT INTO products (product_id, department_name, price, stock_quantity) VALUES ("iPhone 8", "Technology", 329.00, 50);

select * from products;