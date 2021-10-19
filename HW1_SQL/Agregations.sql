SELECT [model_year],
    AVG([list_price]) AS avg_price
FROM [production].[products]
WHERE [list_price] >= 832.99
GROUP by [model_year]
HAVING min([list_price]) > 850 