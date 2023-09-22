use classicmodels;
show tables;
select * from customers;
select*from employees;
#Retrieve all customer names and their corresponding credit limits.
select customername,creditLimit from customers;
#List all employees in the Sales department
SELECT lastName, firstName, jobTitle, COUNT(*) AS jobTitleCount
FROM employees
WHERE jobTitle = 'Sales Rep'
GROUP BY lastName, firstName, jobTitle;
SELECT COUNT(*) AS TotalSalesReps
FROM employees
WHERE jobTitle = 'Sales Rep';
#Find the total number of orders for each customer.
select*from orders;
SELECT customerName, COUNT(orderNumber) AS totalOrders 
FROM customers 
JOIN orders USING (customerNumber) 
GROUP BY customerName;
#Retrieve the product name and quantity ordered for each order.
SELECT productName, quantityOrdered 
FROM orderdetails 
JOIN products USING (productCode);
#List the product names and their respective product lines.
SELECT productName, productLine 
FROM products;
#Find the total sales (quantity * price) for each order.
SELECT orderNumber, SUM(quantityOrdered * priceEach) AS totalSales
FROM orderdetails 
GROUP BY orderNumber;
#List the top 5 customers with the highest credit limits.
SELECT customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 5;
#Find the average payment amount for all customers.
SELECT AVG(amount) AS averagePayment
FROM payments;
#Retrieve the product that has the highest price.
SELECT productName, MSRP AS highestPrice
FROM products
WHERE MSRP = (SELECT MAX(MSRP) FROM products);

select*from products

