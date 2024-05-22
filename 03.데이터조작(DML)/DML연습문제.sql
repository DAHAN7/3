CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock INT
);

CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    sale_date DATE,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- 샘플 데이터 삽입
INSERT INTO products (product_name, category, price, stock) VALUES
('Laptop', 'Electronics', 1000.00, 10),
('Smartphone', 'Electronics', 600.00, 20),
('Tablet', 'Electronics', 400.00, 30),
('Headphones', 'Accessories', 50.00, 100),
('Charger', 'Accessories', 20.00, 150);

INSERT INTO sales (product_id, sale_date, quantity) VALUES
(1, '2023-01-10', 2),
(2, '2023-01-12', 1),
(3, '2023-01-15', 3),
(1, '2023-01-20', 1),
(4, '2023-01-25', 5);

-- 연습문제1: 새로운 제품삽입
INSERT INTO Products (product_name, category,price,stock)VALUES ('Mouse','Accessoeries',25.00,200);

-- 연습문제2:제품가격 업데이트
UPDATE products
SET pirce = 650.00
WHERE product_name = 'Smartphone';

-- 연습문제3: 재고 수량 업데이트
UPDATE products
SET stock = 15
WHERE product_name='Laptop';

-- 연습문제4: 특정 제품 삭제
DELETE FROM products
WHERE product_name='Charger'

-- 연습문제5 : 특정 날짜의 판매기록 삽입
INSERT INTO sales (product_id, sale_date,quantity) VALUES
((SELECT product_id FROM products WHERE product_name= 'Headphones'),
'2023-02-01',10);

-- 연습문제6 특정판매기록 업데이트
UPDATE sales
SET quantity = 3
WHERE product_id = (SELECT product_id FROM products WHERE product_name = 'Laptop')
  AND sale_date = '2023-01-10';
-- 연습문제7 :특정 판매기록 삭제
DELETE FROM sales
WHERE sale_date = '2023-01-25'
  AND product_id = (SELECT product_id FROM products WHERE product_name = 'Headphones');
-- 연습문제8: 특정조건에 맞는 제품의 가격 업데이트
UPDATE products
SET price = price * 1.10
WHERE category = 'Electronics';
-- 연습문제 9: 특정조건에 맞는 제품의 재고 업데이트
UPDATE products
SET stock = stock + 5
WHERE price >= 500.00;


