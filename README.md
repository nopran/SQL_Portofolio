# SQL_Portofolio
SQL_Portofolio_data-analysis-project

Schema ERD : 

- **Entitas `Products`** memiliki atribut:
  - `product_id` (Primary Key)
  - `name`
  - `price`
  - `category`

- **Entitas `Customers`** memiliki atribut:
  - `customer_id` (Primary Key)
  - `name`
  - `email`
  - `address`

- **Entitas `Sales`** memiliki atribut:
  - `sale_id` (Primary Key)
  - `product_id` (Foreign Key)
  - `customer_id` (Foreign Key)
  - `amount`
  - `date`

- **Hubungan:**
  - `Sales` ke `Products`: Sebuah garis menghubungkan `product_id` di `Sales` ke `product_id` di `Products`. Ini adalah hubungan N:1, karena banyak penjualan bisa berhubungan dengan satu produk.
  - `Sales` ke `Customers`: Sebuah garis menghubungkan `customer_id` di `Sales` ke `customer_id` di `Customers`. Ini juga adalah hubungan N:1, karena seorang customer bisa melakukan banyak penjualan.

Saya harap ini membantu Anda dalam membayangkan bagaimana Anda dapat mendesain ERD untuk portofolio SQL Anda.
