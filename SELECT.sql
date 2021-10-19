SELECT 
       [product_name],
       [category_id],
       [list_price]
FROM [production].[products]
WHERE [list_price] <1000
      AND [category_id] IN (3, 6)
      AND ([product_name] LIKE '%girl%' OR [product_name] LIKE 'Sun%')

     



