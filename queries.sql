-- Завдання 1.1. Вибрати всі стовпчики з таблиці products
SELECT *
FROM mydb_hw_03.products;


-- Завдання 1.2. Вибрати тільки стовпчики name, phone з таблиці shippers
SELECT name, phone
FROM mydb_hw_03.shippers;


-- Завдання 2. Середнє, максимальне та мінімальне значення price з таблиці products
SELECT
    AVG(price) AS avg_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM mydb_hw_03.products;


-- Завдання 3. Унікальні значення category_id та price з таблиці products,
-- сортування за price у спадаючому порядку, обмеження 10 рядків
SELECT DISTINCT category_id, price
FROM mydb_hw_03.products
ORDER BY price DESC
LIMIT 10;


-- Завдання 4. Кількість продуктів у ціновому діапазоні від 20 до 100
SELECT COUNT(*) AS products_count
FROM mydb_hw_03.products
WHERE price BETWEEN 20 AND 100;


-- Завдання 5. Кількість продуктів та середня ціна у кожного постачальника
SELECT
    supplier_id,
    COUNT(*) AS products_count,
    AVG(price) AS avg_price
FROM mydb_hw_03.products
GROUP BY supplier_id;