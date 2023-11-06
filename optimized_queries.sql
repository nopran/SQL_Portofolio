-- SQL script showcasing before and after optimization of a query

-- Before optimization
-- This query does not have proper indexing and might scan the entire table
SELECT * FROM sales
WHERE customer_id = 101;

-- After optimization
-- Adding an index on customer_id could make this query much faster
CREATE INDEX idx_customer_id ON sales(customer_id);

SELECT * FROM sales
WHERE customer_id = 101;
