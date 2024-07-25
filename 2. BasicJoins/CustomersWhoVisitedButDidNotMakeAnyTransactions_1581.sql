-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/?envType=study-plan-v2&envId=top-sql-50

-- # Write your MySQL query statement below
SELECT VISITS.CUSTOMER_ID, COUNT(VISITS.VISIT_ID) AS COUNT_NO_TRANS
FROM VISITS
LEFT JOIN TRANSACTIONS
ON VISITS.VISIT_ID = TRANSACTIONS.VISIT_ID
WHERE TRANSACTIONS.TRANSACTION_ID IS NULL
GROUP BY VISITS.CUSTOMER_ID