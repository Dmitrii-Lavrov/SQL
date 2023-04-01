-- 1.	Создайте функцию, которая принимает кол-во сек и форматирует их в кол-во дней, часов, минут и секунд.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '


DROP FUNCTION IF EXISTS conversion;

CREATE FUNCTION conversion
(
	 n INT     
)
RETURNS VARCHAR(45)
DETERMINISTIC 
RETURN (concat(n DIV 86400, " дней ",
			  (n % 86400) DIV 3600, " часов ",
			  ((n % 86400) % 3600) DIV 60, " минут ",
			  ((n % 86400) % 3600) % 60, " секунд")); 

SELECT conversion (123456) AS "Конвертация секунд";

-- 2.	Выведите только четные числа от 1 до 10 включительно. (Через функцию / процедуру)
-- Пример: 2,4,6,8,10 (можно сделать через шаг +  2: х = 2, х+=2)


DROP PROCEDURE IF EXISTS print_numbers;
DELIMITER //
CREATE PROCEDURE print_numbers
(
	IN input_numbers INT  
)
BEGIN
	DECLARE n INT;
    DECLARE m INT;
    DECLARE result VARCHAR(45) DEFAULT "";
    SET n = input_numbers;
	SET m = 0;
	REPEAT		
		SET result = CONCAT(result, m, ",");
        SET m = m + 2;
        UNTIL m > n 
	END REPEAT;
	SELECT result;
END //