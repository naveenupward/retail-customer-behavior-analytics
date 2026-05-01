USE customer_behaviour

SELECT * FROM customer

-- 1. Total Revenue

SELECT SUM(purchase_amount) as total_revenue FROM customer

-- The business generated a total revenue of 233,081 from all customers.

-- 2. Which gender contributes more revenue?

SELECT 
    gender,
    SUM(purchase_amount) AS revenue
FROM customer
GROUP BY gender

/*
  Male customers contribute significantly more revenue (157,890) compared to female customers (75,191)
  accounting for roughly twice the revenue
*/

SELECT 
    gender,
    SUM(purchase_amount) AS revenue,
    ROUND(100.0 * SUM(purchase_amount) / SUM(SUM(purchase_amount)) OVER(), 2) AS percentage
FROM customer
GROUP BY gender

/*
  Male customers contribute ~67% of total revenue, 
  which is more than double the contribution from female customers (32%).
*/

SELECT 
    gender,
    COUNT(*) AS total_customers,
    AVG(purchase_amount) AS avg_spend
FROM customer
GROUP BY gender

/*
 Male customers are significantly higher in number (2652 vs 1248), 
 while the average spend per customer is almost the same (59 vs 60).
 This indicates that the higher total revenue from male customers is primarily driven by volume (number of customers), 
 not higher spending per customer.

 RECOMMENDATION:
 To increase revenue, the company should focus on acquiring more female customers, 
 since their spending behavior is already comparable to male customers.
*/

-- 3. Do subscribers spend more?

SELECT 
    subscription_status,
    COUNT(*) AS total_customers,
    AVG(purchase_amount) AS avg_spend,
    SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY subscription_status

/*
    Non-subscribers contribute the majority of total revenue (170K vs 62K), 
    primarily due to a significantly larger customer base (2847 vs 1053), 
    while the average spend per customer remains nearly identical (59) across both groups. 

    RECOMMENDATION:
    This indicates that the subscription model is not currently driving higher per-customer spending, 
    but increasing subscriber adoption could still scale revenue due to similar spending behavior
*/

-- 4. Customer Segmentation

SELECT 
    CASE 
        WHEN previous_purchases = 1 THEN 'New'
        WHEN previous_purchases BETWEEN 2 AND 5 THEN 'Returning'
        ELSE 'Loyal'
    END AS segment,
    COUNT(*) AS total_customers,
    SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY 
    CASE 
        WHEN previous_purchases = 1 THEN 'New'
        WHEN previous_purchases BETWEEN 2 AND 5 THEN 'Returning'
        ELSE 'Loyal'
    END

/*
  Loyal customers form the majority of the customer base and contribute the highest share of revenue, 
  indicating strong repeat purchase behavior. 
  
  RECOMMENDATION:
  However, the relatively small number of new customers suggests limited customer acquisition,
  highlighting an opportunity to focus on attracting new users and nurturing them into repeat buyers
*/

-- 5. Category Analysis

SELECT category, SUM(purchase_amount) AS revenue
FROM customer
GROUP BY category
ORDER BY revenue DESC

/*
   The business shows category-level revenue concentration, suggesting dependency on specific product segments. 
   
   RECOMMENDATION:
   Diversifying revenue across categories or strengthening underperforming segments could reduce risk and improve overall stability.
*/

-- 6. Discount Impact

SELECT discount_applied, AVG(purchase_amount) as average_purchase_amount
FROM customer
GROUP BY discount_applied

/*
   While revenue is concentrated in key product categories, 
   discount strategies do not appear to significantly impact customer spending behavior.
   
   RECOMMENDATION:
   This suggests that growth opportunities lie more in category optimization and targeted marketing rather than broad discounting.
*/   

-- 7. Top Customers

SELECT TOP 10 
    customer_id,
    SUM(purchase_amount) AS total_spent
FROM customer
GROUP BY customer_id
ORDER BY total_spent DESC

/*
  A small group of top customers contributes a disproportionately high amount of total revenue, 
  indicating the presence of high-value customers who are critical to business performance
  
  RECOMMENDATION:
  The company should focus on identifying and retaining these high-value customers through personalized offers, 
  loyalty programs, and targeted engagement strategies, as losing them could significantly impact overall revenue
*/


--
