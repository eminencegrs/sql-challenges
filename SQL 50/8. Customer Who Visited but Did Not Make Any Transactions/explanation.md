1. **FROM Clause:**
   - It starts with the `FROM` clause, specifying the tables it is working with, which are `Visits` (aliased as `v`) and `Transactions` (aliased as `t`).

   ```sql
   FROM Visits v
   LEFT JOIN Transactions t ON v.visit_id = t.visit_id
   ```

   - It uses a `LEFT JOIN` to include all rows from the `Visits` table, regardless of whether there is a match in the `Transactions` table. The join condition is based on the `visit_id`.

2. **WHERE Clause:**
   - It adds a condition in the `WHERE` clause to filter only the rows where there is no matching transaction. This is identified by checking if `t.visit_id IS NULL`. 

   ```sql
   WHERE t.visit_id IS NULL
   ```

   - This effectively selects only the visits that do not have corresponding transactions.

3. **SELECT Clause:**
   - In the `SELECT` clause, it chooses the columns we want to include in the result. In this case, we want the `customer_id` and the count of distinct `visit_id` for each customer.

   ```sql
   SELECT v.customer_id,
          COUNT(DISTINCT v.visit_id) AS count_no_trans
   ```

   - It uses `COUNT(DISTINCT v.visit_id)` to count the number of unique visits for each customer. The `DISTINCT` ensures that it counts each visit only once, even if there are multiple transactions for the same visit.

4. **GROUP BY Clause:**
   - It uses a `GROUP BY` clause to group the results by `customer_id`. This is necessary because it relies on an aggregate function (`COUNT`) and needs to specify how to group the counts.

   ```sql
   GROUP BY v.customer_id;
   ```

   - The result will show each `customer_id` along with the count of distinct visits for which no transactions occurred.
