DELIMITER //
DROP PROCEDURE IF EXISTS test1;
CREATE PROCEDURE test1()
 BEGIN
    SELECT 'hi';
 END //
DELIMITER ;

CALL test1();

DELIMITER //
DROP PROCEDURE IF EXISTS test2;
CREATE PROCEDURE test2(IN n VARCHAR(60))
 BEGIN
 
 IF(n = 'm') THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = "ahhh";
    END IF;
    
    SELECT n;
 END //
DELIMITER ;

CALL test2('a');