SELECT
	info -> 'customer' as
customer
FROM
	"030320".orders
ORDER BY
CAST (
	info -> 'items' ->> 'qty' AS INTEGER)
DESC LIMIT 1;