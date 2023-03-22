-- Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания для каждой группы
SELECT  post, salary
FROM staff
WHERE post = "Рабочий"
ORDER BY salary; -- ORDER BY salary DESC;

SELECT  post, salary
FROM staff
WHERE post = "Инженер"
ORDER BY salary; -- ORDER BY salary DESC;

SELECT  post, salary
FROM staff
WHERE post = "Начальник"
ORDER BY salary; -- ORDER BY salary DESC;

SELECT  post, salary
FROM staff
WHERE post = "Уборщик"
ORDER BY salary; -- ORDER BY salary DESC;

-- Выведите 5 максимальных заработных плат (saraly)

SELECT salary
FROM staff
ORDER BY salary DESC
LIMIT 5;

-- Посчитайте суммарную зарплату (salary) по каждой специальности (роst)

SELECT 
	post,	
    SUM(salary) AS "Суммарная зп"    
FROM staff
GROUP BY post; 

-- Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.

SELECT 
	post,	
    COUNT(salary) AS "Количество сотрудников, в возрасте от 24 до 49"    
FROM staff
WHERE post = "Рабочий" AND age >= 24 AND age <= 49;

-- Найдите количество специальностей

SELECT COUNT(DISTINCT(post))
FROM staff;

-- Выведите специальности, у которых средний возраст сотрудников меньше 30 лет

SELECT 
	post,
	ROUND(AVG(age)) AS "Средний возраст"
FROM staff
GROUP BY post
HAVING AVG(age) < 30; 

