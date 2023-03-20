USE lesson2;
CREATE TABLE IF NOT EXISTS sales
(
	id INT PRIMARY KEY AUTO_INCREMENT,	
    order_date DATE NOT NULL,
    count_produkt INT NOT NULL   
);

INSERT sales (order_date, count_produkt)
VALUES 
("2022-01-01", 156),
("2022-01-02", 180),
("2022-01-03", 21),
("2022-01-04", 124),
("2022-01-05", 341);

SELECT *
FROM sales;

SELECT
	id AS "ID заказа",    
    IF(count_produkt < 100, "Маленький заказ", 
		IF(count_produkt < 300, "Средний заказ", "Большой заказ"))
	AS "Тип фильма"
FROM sales;

CREATE TABLE IF NOT EXISTS orders
(
	id INT PRIMARY KEY AUTO_INCREMENT,	
    employee_id VARCHAR(45) NOT NULL,
    amount DECIMAL(5,2) NOT NULL,
    order_status VARCHAR(45) NOT NULL  
);

INSERT orders (employee_id, amount, order_status)
VALUES 
("e03", 15.00, "OPEN"),
("e01", 25.50, "OPEN"),
("e05", 100.70, "CLOSED"),
("e02", 22.18, "OPEN"),
("e04", 9.50, "CANCELLED");

SELECT *
FROM orders;

SELECT
	id,
    employee_id,
    amount,
    order_status,
    IF(order_status = "OPEN", "Orders is in open state", 
		IF(order_status = "CLOSED", "Orders is closed", "Orders is cancelled"))
	AS "full_order_status"
FROM orders;