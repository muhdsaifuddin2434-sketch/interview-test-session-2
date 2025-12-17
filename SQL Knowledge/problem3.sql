SELECT
SUM(s.quantity * i.price) AS total_sales_amount,
AVG(order_amount) AS avg_sales_amount_per_order
FROM (
SELECT
order_id,
SUM(s.quantity * i.price) AS order_amount
FROM sales s
JOIN inventories i ON s.product_id = i.product_id
GROUP BY order_id
) AS order_totals;