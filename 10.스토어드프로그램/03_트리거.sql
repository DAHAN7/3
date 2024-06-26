-- 03_트리거 
/*
데이터베이스에서 특정이벤트가 발생할때 자동으로 실행되는 프로시저
-BEFORE:이벤트가 발생하기 전
-AFTER:이벤트가 발생하기 후
-INSERT | UPDATE | DELETE : 이벤트
*/
USE sqldb;

CREATE TABLE user_log(
log_id INT AUTO_INCREMENT PRIMARY KEY,
userId CHAR(8),			-- 사용자ID
action VARCHAR(10),		-- 발생한 액션
action_time TIMESTAMP	-- 액션이 발생한 시간
);

-- 트리거 생성
DELIMITER $$
CREATE TRIGGER after_user_insert
	AFTER INSERT ON usertbl
    FOR EACH ROW
BEGIN
	-- usertbl의 각 행에 삽입 이벤트 발생 후 수행 
	-- 이벤트 발생시 수행할 SQL문(프로시저)
    INSERT INTO user_log(userID,action,action_time)
    VALUE(NEW.userID,'INSERT',now());
END $$
DELIMITER ;

SELECT * FROM usertbl;
INSERT INTO usertbl
VALUES('TEST','테스트',2000,'부산','010',
'12345678','180','2024-06-26');
-- 트리거가 동작
SELECT * FROM user_log;