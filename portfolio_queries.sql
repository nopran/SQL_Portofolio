-- portfolio_queries.sql
-- This SQL script contains various queries for a SQL portfolio demonstrating data analysis, reporting, and querying techniques.

-- Use this script after setting up your database with the provided Products, Customers, and Sales tables.

-- Total Penjualan Per Kategori
-- Menghitung jumlah penjualan dan total nilai penjualan per kategori produk.
SELECT p.category, COUNT(s.sale_id) AS number_of_sales, SUM(p.price * s.quantity) AS total_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.category;

-- Rata-Rata Harga Penjualan Per Kategori
-- Menghitung rata-rata harga produk per kategori.
SELECT p.category, AVG(p.price) AS average_price
FROM Products p
GROUP BY p.category;

-- Daftar Produk Yang Belum Terjual
-- Mencari produk yang belum pernah terjual.
SELECT *
FROM Products
WHERE product_id NOT IN (SELECT DISTINCT product_id FROM Sales);

-- Pelanggan dengan Jumlah Pembelian Terbanyak
-- Menemukan pelanggan dengan jumlah pembelian terbanyak.
SELECT c.customer_id, c.name, COUNT(s.sale_id) AS number_of_purchases
FROM Customers c
JOIN Sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.name
ORDER BY number_of_purchases DESC
LIMIT 1;

-- Tren Penjualan Harian dalam Sebulan Terakhir
-- Menganalisis tren penjualan harian dalam satu bulan terakhir.
SELECT sale_date, SUM(p.price * s.quantity) AS daily_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
WHERE sale_date BETWEEN CURDATE() - INTERVAL 1 MONTH AND CURDATE()
GROUP BY sale_date
ORDER BY sale_date;
