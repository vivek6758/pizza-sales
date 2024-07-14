-- Analyze the cumulative revenue generated over time.
select  order_date,
sum(revenue) over(order by order_date) as cum_revenue
from
(select orders.order_date,
sum(order_details.quantity*pizzas.price) as revenue
from order_details join pizzas
on order_details.pizza_id = pizzas.pizza_id
join orders
on orders.Order_id = order_details.Order_id
group by orders.order_date) as sales;