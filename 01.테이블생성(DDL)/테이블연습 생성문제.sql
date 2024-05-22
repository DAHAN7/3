/*
- 테이블 생성 연습문제

- 요구사항:
- products라는 이름의 새로운 테이블을 생성하십시오.

이 테이블은 다음과 같은 컬럼을 포함해야 합니다:
- product_id (INT, 기본키, NULL 불허용)
- product_name (VARCHAR(100), NULL 불허용)
- price (DECIMAL(10,2), NULL 불허용)
- stock_quantity (INT, NULL 불허용)
- supplier_id (INT, NULL 허용)

*/

CREATE TABLE products (
    product_id INT PRIMARY KEY NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    supplier_id INT
);

SELECT * FROM products;
use test_db;
/*
테이블 생성 연습문제 3

- `customer_accounts`라는 이름의 새로운 테이블을 생성하십시오.

- 이 테이블은 고객 계정 정보를 저장하며, 다음과 같은 컬럼을 포함해야 합니다:
  - `account_id` (INT, 기본키, NULL 불허용)
  - `customer_name` (VARCHAR(100), NULL 불허용)
  - `email` (VARCHAR(100), NULL 불허용, 유니크 제약조건)
  - `phone_number` (VARCHAR(15), 유니크 제약조건, NULL 허용)

*/
# DDL (데이터 정의어)

### CREATE 생성

### 테이블 생성
-- 테이블 생성 문법
```sql
CREATE TABLE 테이블명 (
	컬럼명1 데이터타입 제약조건,
	컬럼명2 데이터타입 제약조건,
    ....
    추가 제약조건
);
```

CREATE TABLE customer_accounts (
    account_id INT PRIMARY KEY NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15) UNIQUE
);
SELECT * FROM customer_accounts;
CREATE TABLE products (
    product_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    supplier_id INT,
    PRIMARY KEY (product_id)
);

DESC products;
SELECT * FROM products;

CREATE TABLE course_registrations (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    registration_date DATE NOT NULL,
    PRIMARY KEY (student_id, course_id)
);

DESCRIBE course_registrations;
SELECT * FROM course_registrations;

CREATE TABLE customer_accounts (
    account_id INT NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15) UNIQUE,
    PRIMARY KEY (account_id)
);

desc customer_accounts;
select * from customer_accounts;
