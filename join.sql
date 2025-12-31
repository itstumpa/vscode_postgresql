SELECT * FROM orders;

-- innerjoin.sql
SELECT o.order_id, o.customer_name, o.product_name, o.quantity, o.price,
       u.email  
FROM orders o
JOIN users u ON o.order_id = u.order_id;

-- leftjoin.sql
SELECT o.order_id, o.customer_name
FROM orders o
LEFT JOIN users u ON o.order_id = u.order_id;

-- rightjoin.sql
SELECT u.order_id, u.customer_name       
FROM users u
RIGHT JOIN orders o ON u.order_id = o.order_id;

-- fulljoin.sql
SELECT o.order_id, o.customer_name, u.email
FROM orders o
FULL JOIN users u ON o.order_id = u.order_id;

-- selfjoin.sql
SELECT a.order_id AS order1_id, b.order_id AS order2_id, a.customer
FROM orders a
JOIN orders b ON a.customer_name = b.customer_name AND a.order_id <> b.order_id;


-- crossjoin.sql
SELECT o.order_id, u.email
FROM orders o
CROSS JOIN users u;


-- Those o, u, a, b are table aliases.
-- orders o
-- users u
-- customers c
-- products p

-- a → first copy of orders
-- b → second copy of orders

-- o, u, a, b are table aliases, created inside the query to reference tables easily—nothing more.
