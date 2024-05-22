-- 테이블 생성 완료되었으면 데이터 삽입하고, 조회하여 테스트 해보세요.

-- departments 테이블 데이터 삽입
INSERT INTO departments (dept_name, location)
VALUES ('개발팀', '부산'),
       ('영업팀', '서울'),
       ('마케팅팀', '창원');

-- employees 테이블 데이터 삽입
INSERT INTO employees (emp_name, hire_date, salary, dept_id)
VALUES ('홍길동', '2022-01-15', 3200000, 1),
       ('김철수', '2023-03-01', 2700000, 2),
       ('박영희', '2021-07-01', 2900000, 3);

-- projects 테이블 데이터 삽입
INSERT INTO projects (project_name, start_date, end_date)
VALUES ('웹사이트 프로젝트', '2023-01-01', '2023-06-30'),
       ('쇼핑몰 프로젝트', '2023-02-01', '2023-12-31'),
       ('마케팅 프로젝트', '2023-03-01', NULL);

-- assignments 테이블 데이터 삽입
INSERT INTO assignments (emp_id, project_id)
VALUES (1, 1),
       (1, 2),
       (2, 2),
       (3, 3);
	
select * from departments;