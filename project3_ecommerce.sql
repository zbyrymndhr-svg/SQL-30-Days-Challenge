                 ---1)Filtering & Sorting:
--challenge 1: display only products that belong to the electronics category.
select * from products
where category='electronics';
--challenge 2: extract a list of products that are completely out of stock.
select * from products
where stock=0;
--challenge 3: display a list of customers who joined in 2024, sorted from newest to oldest.
select * from customers
where join_date between'2024-01-01'::DATE and '2024-12-30'::DATE 
order by join_date desc;

                 ---2)Aggregation & Grouping:
--challenge 4: calculating the total amount of money collected fom all orders
select sum(total_amount) as total_revenue from orders;
--challenge 5: each product category is displayed along with the number of products belonging to it from the product table.
select category, count(product_id) as produit_count
from products
group by category;

                ---3)Joins:
--challenge 6: link the orders table with the customers table.
select c.customer_id, o.quantity, o.order_date
from customers c
inner join orders o
on c.customer_id=o.customer_id;
--challenge 7: view all customers and their order dates.
select c.customer_name, o.order_date
from customers c
left join orders o on c.customer_id=o.customer_id;

