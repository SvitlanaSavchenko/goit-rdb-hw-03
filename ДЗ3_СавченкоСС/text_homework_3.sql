SELECT * FROM mydb.products;
SELECT name, phone FROM mydb.shippers;
SELECT 
    AVG(price) AS 'Середнє значення',
    MAX(price) AS 'Максимальне значення',
    MIN(price) AS 'Мінімальне значення'
FROM 
    mydb.products;
SELECT 
    DISTINCT category_id,
    price
FROM 
    mydb.products
ORDER BY 
    price DESC
LIMIT 10;
SELECT 
    COUNT(*) AS 'Кількість продуктів'
FROM 
    mydb.products
WHERE 
    price BETWEEN 20 AND 100;
SELECT 
    supplier_id,
    COUNT(*) AS 'Кількість продуктів',
    AVG(price) AS 'Середня ціна'
FROM 
    mydb.products
GROUP BY 
    supplier_id;