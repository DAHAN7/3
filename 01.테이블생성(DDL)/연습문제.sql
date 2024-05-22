-- 기존 사용자를 삭제
DROP USER IF EXISTS director;
DROP USER IF EXISTS ceo;
DROP USER IF EXISTS staff;

-- 사용자를 생성하고 권한 부여
CREATE USER 'director'@'localhost'
IDENTIFIED BY 'password';
CREATE USER 'ceo'@'localhost' IDENTIFIED
BY 'password';
CREATE USER 'staff'@'localhost' IDENTIFIED
BY 'password';

-- 권한부여 예제
GRANT ALL PRIVILEGES ON *.* TO
'director'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO
'ceo'@'localhost';
GRANT ALL PRIVILEGES  ON
sakila.* To 'staff'@'localhost';


-- 문제1
CREATE USER 'report_user'@'localhost'
IDENTIFIED BY 'password';
GRANT SELECT ON sakila .* TO
'reportuser'@'localhost';
-- 문제2
CREATE USER 'admin_user'@'localhost'
IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON world.*TO
'admin_user'@'localhost';

-- 문제3
CREATE USER 'dev_user'@'localhost'
IDENTIFIED BY 'password';
GRANT SELECT,INSERT,UPDATE ON
sakila. actor TO 'dev_user'@'localhost';


-- 문제4
CREATE USER 'guest_user'@'localhost'
IDENTIFIED BY 'password';
GRANT SELECT ON world.city TO
'guest_user'@'localhost';

-- 문제5
REVOKE SELECT ON sakila.* FROM
'report_user'@'localhost';

-- 문제6
REVOKE SELECT,INSERT,UPDATE ON
sakila.actor FROM 'dev_user'@'localhost';
Grant SELECT ON sakila.actor TO
'dev_user'@'local_host';

-- 문제 7
DROP USER IF EXISTS
'report_user'@'localhost';
DROP USER IF EXISTS
'admin_user'@'localhost';
DROP USER IF EXISTS
'dev_user'@'localhost';
DROP USER IF EXISTS
'guest_user'@'localhost';