//1. select all columns (using the wildcard “*”) from the products table;
// select only the name, phone columns from the shippers table, and check its execution in MySQL Workbench.
SELECT * FROM mydb.products;
SELECT name, phone FROM mydb.shippers;

//2. Write an SQL command that allows you to find the average, maximum and minimum value of the price column of the products table, and check its execution in MySQL Workbench*.*
SELECT AVG(price), MAX(price), MIN(price) FROM mydb.products;

//3. Write an SQL command that allows you to select unique values ​​of the category_id and price columns of the products table.
// Select the display order in descending order of the price value and select only 10 rows. Check the execution of the command in MySQL Workbench.
SELECT DISTINCT category_id, price FROM mydb.products
ORDER BY price DESC
LIMIT 10;

//4. Write an SQL command that allows you to find the number of products (rows) that are in the price range from 20 to 100, and check its execution in MySQL Workbench.
SELECT COUNT(*) as product_quantity FROM mydb.products WHERE price > 20 AND price < 100;

//5. Write an SQL command that can be used to find the number of products (rows) and the average price (price) for each supplier (supplier_id), and check its correct execution in MySQL Workbench.
SELECT COUNT(id) as rows_number, AVG(price) as average_price, supplier_id
GROUP BY supplier_id;
