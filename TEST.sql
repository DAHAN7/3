-- 데이터베이스 생성
CREATE DATABASE employees;

-- 데이터베이스 선택
USE employees;

-- 부서(Department) 테이블 생성
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(255)
);

-- 직원(Employee) 테이블 생성
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Position VARCHAR(100),
    PhoneNumber VARCHAR(20),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);
