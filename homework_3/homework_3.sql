SELECT  post, salary
FROM staff
WHERE post = "Рабочий"
ORDER BY salary;

SELECT  post, salary
FROM staff
WHERE post = "Инженер"
ORDER BY salary;

SELECT  post, salary
FROM staff
WHERE post = "Начальник"
ORDER BY salary;

SELECT  post, salary
FROM staff
WHERE post = "Уборщик"
ORDER BY salary;

SELECT salary
FROM staff
ORDER BY salary DESC
LIMIT 5;

SELECT 
	post,	
    SUM(salary) AS "Суммарная зп"    
FROM staff
GROUP BY post; 

SELECT 
	post,	
    COUNT(salary) AS "Количество сотрудников, в возрасте от 24 до 49"    
FROM staff
WHERE post = "Рабочий" AND age >= 24 AND age <= 49;

SELECT COUNT(DISTINCT(post))
FROM staff;

SELECT 
	post,
	ROUND(AVG(age)) AS "Средний возраст"
FROM staff
GROUP BY post
HAVING AVG(age) < 30; 

