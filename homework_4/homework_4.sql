-- 1. Вывести всех котиков по магазинам по id (условие соединения shops.id = cats.shops_id)

SELECT c.name, s.shopname
FROM cats c 
JOIN shops s 
ON s.id = c.shops_id; 

-- 2. Вывести магазин, в котором продается кот “Мурзик” (попробуйте выполнить 2 способами)

SELECT s.shopname
FROM shops s
JOIN cats c 
ON s.id = c.shops_id 
WHERE c.name = "Murzik"; 

SELECT shopname 
FROM shops
WHERE id = (SELECT shops_id FROM cats WHERE name = "Murzik");

-- 3. Вывести магазины, в которых НЕ продаются коты “Мурзик” и “Zuza”

SELECT * 
FROM shops
WHERE id NOT IN (SELECT shops_id FROM cats WHERE name = "Murzik" OR name = "Zuza");

-- Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю.

SELECT a.an_name, a.an_cost, o.ord_datetime
FROM analysis a
JOIN Orders o 
ON o.ord_an = a.an_id 
WHERE o.ord_datetime BETWEEN "2020-02-05" AND "2020-02-12";