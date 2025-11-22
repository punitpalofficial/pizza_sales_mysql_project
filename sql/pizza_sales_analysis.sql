CREATE DATABASE pizza_sales_clone;

CREATE TABLE pizza_sales_clone.orders AS
SELECT * FROM pizza_sales.orders;

CREATE TABLE pizza_sales_clone.order_details AS
SELECT * FROM pizza_sales.order_details;

CREATE TABLE pizza_sales_clone.pizza_types AS
SELECT * FROM pizza_sales.pizza_types;

CREATE TABLE pizza_sales_clone.pizzas AS
SELECT * FROM pizza_sales.pizzas;