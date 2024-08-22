CREATE TABLE ORDERS( 
    order_id INT NOT NULL PRIMARY KEY, 
    customer_id INT NOT NULL, 
    product_id INT NOT NULL, 
    order_date DATE NOT NULL, 
    quantity INT, 
    paid INT, 
    total INT NOT NULL, 
    status char(10) NOT NULL)

-------------

CREATE TABLE CUSTOMERS( 
    customer_id INT NOT NULL PRIMARY KEY, 
    first_name VARCHAR(100) NOT NULL, 
    surname VARCHAR(100) NOT NULL, 
    birthdate DATE, 
    phone INT, 
    email varchar(100) NOT NULL, 
    address varchar(200), 
    city varchar(50), 
    country varchar(100))

-----------------

CREATE TABLE PRODUCTS( 
    product_id INT NOT NULL PRIMARY KEY, 
    order_id INT NOT NULL, 
    supplier_id INT NOT NULL, 
    name varchar(100) NOT NULL, 
    price int NOT NULL, 
    category varchar(50), 
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id))

--------------

CREATE TABLE SHIPMENTS( 
    shipment_id INT NOT NULL PRIMARY KEY, 
    order_id INT NOT NULL, 
    shipment_date DATE NOT NULL, 
    tracking_no INT NOT NULL, 
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id))

--------------

CREATE TABLE SUPPLIERS( 
    supplier_id INT NOT NULL PRIMARY KEY, 
    product_id INT NOT NULL, 
    name VARCHAR(100) NOT NULL, 
    contact_name varchar(200) NOT NULL, 
    phone INT NOT NULL, 
    email varchar(100) NOT NULL, 
    country varchar(100) NOT NULL, 
    city varchar(50) NOT NULL, 
    address varchar(200) NOT NULL, 
    FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id))

-------------

INSERT ALL 
INTO PRODUCTS (product_id, order_id, supplier_id, name, price, category) 
    VALUES (113113, 111111, 1, 'MATCHA', 50, 'New') 
INTO PRODUCTS (product_id, order_id, supplier_id, name, price, category) 
    VALUES (123144, 222222, 2, 'CHAI', 30, 'Asia') 
INTO PRODUCTS (product_id, order_id, supplier_id, name, price, category) 
    VALUES (113114, 333333, 1, 'MATE', 40, 'Japanese') 
INTO PRODUCTS (product_id, order_id, supplier_id, name, price, category) 
    VALUES (115623, 444444, 3, 'ROOIBOS', 25, 'Africa') 
INTO PRODUCTS (product_id, order_id, supplier_id, name, price, category) 
    VALUES (113115, 555555, 1, 'HERBAL', 60, 'Classic') 
SELECT * FROM dual

-----------

INSERT ALL 
INTO CUSTOMERS (customer_id, first_name, surname, birthdate, phone, email, address, city, country) 
    VALUES (121111, 'John', 'Doe', DATE '1998-05-15', 8612345678, 'john.doe@example.com', '123 Main St', 'Kaunas', 'USA') 
INTO CUSTOMERS (customer_id, first_name, surname, birthdate, phone, email, address, city, country) 
    VALUES (124435, 'Jane', 'Smith', DATE '2005-10-20', 8698765432, 'jane.smith@example.com', '456 Oak Ave', 'Riga', 'Canada') 
INTO CUSTOMERS (customer_id, first_name, surname, birthdate, phone, email, address, city, country) 
    VALUES (126783, 'Alice', 'Johnson', DATE '1995-03-25', 8655512345, 'alice.johnson@example.com', '789 Elm St', 'Melbourne', 'Australia') 
INTO CUSTOMERS (customer_id, first_name, surname, birthdate, phone, email, address, city, country) 
    VALUES (129333, 'Michelle', 'Brown', DATE '1988-09-12', 8677555555, 'michael.brown@example.com', '321 Pine St', 'Brighton', 'UK') 
INTO CUSTOMERS (customer_id, first_name, surname, birthdate, phone, email, address, city, country) 
    VALUES (124769, 'Emily', 'Wilson', DATE '1992-07-18', 8677888888, 'emily.wilson@example.com', '654 Maple Ave', 'Paris', 'Germany') 
SELECT * FROM dual

-------------

INSERT ALL 
INTO ORDERS (ORDER_ID, CUSTOMER_ID, PRODUCT_ID, ORDER_DATE, QUANTITY, PAID, TOTAL, STATUS) 
    VALUES (111111, 121111, 113113, DATE '2024-01-03', 2, 1, 152, 'delivered') 
INTO ORDERS (ORDER_ID, CUSTOMER_ID, PRODUCT_ID, ORDER_DATE, QUANTITY, PAID, TOTAL, STATUS) 
    VALUES (222222, 121111, 123144, DATE '2023-11-28', 4, 0, 88, 'cancelled') 
INTO ORDERS (ORDER_ID, CUSTOMER_ID, PRODUCT_ID, ORDER_DATE, QUANTITY, PAID, TOTAL, STATUS) 
    VALUES (333333, 124435, 113113, DATE '2024-02-04', 1, 1, 76, 'delivered') 
INTO ORDERS (ORDER_ID, CUSTOMER_ID, PRODUCT_ID, ORDER_DATE, QUANTITY, PAID, TOTAL, STATUS) 
    VALUES (444444, 126783, 115623, DATE '2024-02-26', 1, 1, 59, 'sent') 
INTO ORDERS (ORDER_ID, CUSTOMER_ID, PRODUCT_ID, ORDER_DATE, QUANTITY, PAID, TOTAL, STATUS) 
    VALUES (555555, 126783, 113113, DATE '2024-02-27', 3, 1, 228, 'confirmed') 
SELECT * FROM dual

----------

INSERT ALL 
INTO SHIPMENTS (shipment_id, order_id, shipment_date, tracking_no) 
    VALUES (71111, 111111, DATE '2024-01-03', 999123456) 
INTO SHIPMENTS (shipment_id, order_id, shipment_date, tracking_no) 
    VALUES (72222, 222222, DATE '2023-11-28', 999789012) 
INTO SHIPMENTS (shipment_id, order_id, shipment_date, tracking_no) 
    VALUES (73333, 333333, DATE '2024-02-04', 999345678) 
INTO SHIPMENTS (shipment_id, order_id, shipment_date, tracking_no) 
    VALUES (74444, 444444, DATE '2024-02-26', 999901234) 
INTO SHIPMENTS (shipment_id, order_id, shipment_date, tracking_no) 
    VALUES (75555, 555555, DATE '2024-02-27', 999567890) 
SELECT * FROM dual

-----------

INSERT ALL 
INTO SUPPLIERS (supplier_id, product_id, name, contact_name, phone, email, country, city, address) 
    VALUES (54111, 113113, 'MATCHA Supplier', 'John Green', 76995551234, 'john.green@example.com', 'Japan', 'Tokyo', '123 Green St') 
INTO SUPPLIERS (supplier_id, product_id, name, contact_name, phone, email, country, city, address) 
    VALUES (54222, 123144, 'CHAI Supplier', 'Sarah Spice', 76995556789, 'sarah.spice@example.com', 'India', 'Mumbai', '456 Spice Ave') 
INTO SUPPLIERS (supplier_id, product_id, name, contact_name, phone, email, country, city, address) 
    VALUES (54333, 113114, 'MATE Supplier', 'Michael Tea', 76995552345, 'michael.tea@example.com', 'China', 'Beijing', '789 Tea St') 
INTO SUPPLIERS (supplier_id, product_id, name, contact_name, phone, email, country, city, address) 
    VALUES (54444, 115623, 'ROOIBOS Supplier', 'Jane Green', 76995551234, 'jane.green@example.com', 'Japan', 'Kyoto', '456 Red St') 
INTO SUPPLIERS (supplier_id, product_id, name, contact_name, phone, email, country, city, address) 
    VALUES (54555, 113115, 'HERBAL Supplier', 'Emily Green', 76995551234, 'emily.green@example.com', 'Japan', 'Osaka', '789 Blue St') 
SELECT * FROM dual

--------------

DECLARE 
   TYPE TASK41 IS RECORD ( 
      order_id INT, 
      order_date DATE, 
      paid INT 
   ); 
 
   r_task TASK41; 
 
   CURSOR c_order IS 
      SELECT order_id, 
             order_date, 
             paid 
      FROM Orders 
      WHERE order_id = 111111; 
 
BEGIN 
   OPEN c_order; 
   FETCH c_order INTO r_task; 
   CLOSE c_order; 
 
   dbms_output.put_line('Order ID: ' || r_task.order_id); 
   dbms_output.put_line('Order Date: ' || TO_CHAR(r_task.order_date, 'DD-MON-YYYY')); 
   dbms_output.put_line('Paid: ' || r_task.paid); 
END;

-----------

CREATE OR REPLACE PROCEDURE Task33( 
    p_Product_ID   IN PRODUCTS.Product_ID%TYPE, 
    p_Order_ID     IN PRODUCTS.Order_ID%TYPE, 
    p_Supplier_ID  IN PRODUCTS.Supplier_ID%TYPE, 
    p_Name         IN PRODUCTS.Name%TYPE, 
    p_Price        IN PRODUCTS.Price%TYPE, 
    p_Category     IN PRODUCTS.Category%TYPE 
) AS 
BEGIN 
    INSERT INTO PRODUCTS(Product_ID, Order_ID, Supplier_ID, Name, Price, Category) 
    VALUES (p_Product_ID, p_Order_ID, p_Supplier_ID, p_Name, p_Price, p_Category); 
    COMMIT; 
EXCEPTION 
    WHEN OTHERS THEN 
        ROLLBACK; 
        DBMS_OUTPUT.PUT_LINE('Error adding record to PRODUCTS: ' || SQLERRM); 
END Task33; 

-------------