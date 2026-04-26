SELECT EXTRACT(HOUR FROM order_time) AS hour,
       COUNT(order_id) AS total_orders
FROM orders
GROUP BY EXTRACT(HOUR FROM order_time)
ORDER BY hour;