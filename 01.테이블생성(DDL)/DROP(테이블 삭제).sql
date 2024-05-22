 use alter_db;
 
 -- 테이블 삭제(DROP)
 -- DDL의 일부, DB 객체를 삭제
 -- 테이블의 구조와,테이블에 포함된 데이터가 영구적으로 삭제
 
 show tables; -- 현재 테이블 확인
 
 -- 테이블에 참조관계가 형성되어 있을 경우 참조하는 테이블을 먼저 삭제해야
 -- 참조 받는 테이블을 삭제할 수 있습니다.( 참조 무결성 제약조건)
  DROP TABLE employees;				-- 테이블 삭제
  DROP TABLE IF EXISTS department;	-- 테이블이 존재하는 경우에만 삭제
  
  -- 스키마 (데이터베이스 삭제하기)
  DROP DATABASE alter_db;
  DROP DATABASE IF EXISTS alter_db;
  -- 데이터베이스명.데이블명으로 선택되지 않은 테이블 삭제 가능
  -- 콤마(,)를 통해 여러 테이블 동시 삭제 가능
  DROP TABLE exercise.assignments,
  exercise.projects;
  -- 데이터베이스 생성
  CREATE DATABASE IF NOT EXISTS drop_db;
  use drop_db;
  -- employees 샘플 데이터베이스의 구조를 복사사형 테이블 생성
  CREATE TABLE employees LIKE employees.employees;
  -- employees 샘플 데이터베이스의 데이터를 복사하여 삽입
  INSERT INTO employees
  SELECT*FROM employees.employees;
  SELECT *FROM employees;
  
  -- TRUNCATE TABLE employees;