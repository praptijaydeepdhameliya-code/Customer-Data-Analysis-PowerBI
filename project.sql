use project_customer_segmentation;
select* from customer;

-- 1. How is the shopping distribution according to gender?
SELECT
    gender, COUNT(invoice_no) AS total_distribution
FROM
    customer
GROUP BY gender;

-- 2. Which gender did we sell more products to?
SELECT 
    gender, SUM(quantity) AS total_quantity
FROM
    customer
GROUP BY gender;

-- 3. Which gender generated more revenue?
SELECT 
    gender, SUM(price * quantity) AS revanue
FROM
    customer
GROUP BY gender;

-- 4. Distribution of purchase categories relative to other columns?
SELECT 
    age, category, COUNT(*) AS total
FROM
    customer
GROUP BY age , category;

-- 5. How is the shopping distribution according to age?
SELECT 
    age, COUNT(invoice_no) AS total_transactions
FROM
    customer
GROUP BY age
ORDER BY age;

-- 6. Which age category did we sell more products to?
SELECT 
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 56 THEN '46-56'
        ELSE '56+'
    END AS age_group,
    SUM(quantity) AS total_quantity
FROM
    customer
GROUP BY age_group;

-- 7. Which age cat generat more revenue?
SELECT 
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 45 THEN '36-45'
        WHEN age BETWEEN 46 AND 56 THEN '46-56'
        ELSE '56+'
    END AS age_group, sum(price * quantity) as revenue from customer group by age_group;
    
-- 8.Distribution of purchase categories relative to other columns?
SELECT 
    category, payment_method, COUNT(*) AS total
FROM
    customer
GROUP BY category , payment_method;

-- 9. Does the payment method have a relation with other columns?
SELECT 
    gender, payment_method, COUNT(*) AS total
FROM
    customer
GROUP BY payment_method , gender;

-- or
select payment_method,category,count(*) as total from customer group  by payment_method,category;

-- 10.How is the distribution of the payment method?
SELECT 
    payment_method, COUNT(*) AS total_revenue
FROM
    customer
GROUP BY payment_method;








