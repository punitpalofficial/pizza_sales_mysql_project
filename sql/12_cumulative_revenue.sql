-- Analyze the cumulative revenue generated over time.

with a as(select date(orders.order_date) as dates,sum(order_details.quantity*pizzas.price) as revenue
from order_details join pizzas
on pizzas.pizza_id=order_details.pizza_id
join orders
on orders.order_id=order_details.order_id
group by dates
order by dates asc)
select dates, revenue, sum(revenue) over(order by dates) as previous_day_payment from a;