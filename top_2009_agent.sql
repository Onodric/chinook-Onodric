1. `top_2009_agent.sql`: Which sales agent made the most in sales in 2009?
>  **Hint:** Use the [MAX](https://www.sqlite.org/lang_aggfunc.html#maxggunc) function on a [subquery](http://beginner-sql-tutorial.com/sql-subquery.htm).

SELECT em.FirstName, em.LastName, printf('%.2f', sum(i.Total)) AS 'Sales Total'
FROM Employee em, Invoice i, Customer c
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = em.EmployeeId
AND i.InvoiceDate
BETWEEN date('2009-01-01') AND date('2009-12-31')
GROUP BY em.LastName
ORDER BY sum(i.Total) DESC