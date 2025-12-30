SELECT * FROM orders;

-- innerjoin.sql
SELECT o.order_id, o.customer_name, o.product_name, o.quantity, o.price,
       u.email  
FROM orders o
JOIN users u ON o.order_id = u.order_id;