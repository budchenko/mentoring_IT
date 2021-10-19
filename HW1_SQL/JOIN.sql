SELECT 
    p.[product_id],
    p.[product_name],
    p.[model_year],
    AVG(ISNULL(CAST(oi.discount AS decimal(18,6)), 0)) as avg_discount
FROM [production].[products] p
    LEFT JOIN [sales].[order_items] oi
        ON p.[product_id] = oi.[product_id]
            where p.[model_year] in (2016)
GROUP BY 
    p.[product_id],
    p.[product_name],
    p.[model_year]
HAVING  AVG(ISNULL(CAST(oi.discount AS decimal(18,6)), 0)) < = 0.105581 
    AND AVG(ISNULL(CAST(oi.discount AS decimal(18,6)), 0)) > = 0

--different result with "and p.[model_year] = 2016"






    
