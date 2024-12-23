--а) Запрос на извлечение данных из нескольких связанных таблиц с использованием соединения по равенству полей таблиц.  (“=” в условии WHERE);
--Вывести заднеприводные карты (картинги)
SELECT c.id, c.car_plates FROM cars c, models m WHERE c.model_id = m.id AND m.drive = 'AWD';

--б) Запрос а) реализовать вторым способом с использованием INNER JOIN; 
SELECT c.id, c.car_plates FROM cars c JOIN models m ON c.model_id = m.id AND m.drive = 'AWD';

--в) Запрос с использованием процедурных возможностей SQL (команда CASE).
--Вывести карты и пометить мощными те, у которых больше 10 лошадиных сил (остальные - "Обычный")
SELECT c.id, c.car_plates, m.engine_horsepower, (CASE WHEN m.engine_horsepower > 10 THEN 'Мощный' ELSE 'Обычный' END) AS power_type FROM cars c JOIN models m ON c.model_id = m.id;

--г) Запрос с использованием группировок, группировочных функций и условий на группы (HAVING);
--Вывести типы инцидентов, в которых участвовали карты с 13+ лошадиными силами
SELECT "type" FROM accidents a JOIN cars c ON a.car_id = c.id JOIN models m ON c.model_id = m.id GROUP BY "type", m.engine_horsepower HAVING m.engine_horsepower > 13;

--д) Запрос с использованием внешнего соединения (OUTER JOIN);
--Вывести все id конфигов и их покрытие, если оно уличное (outdoor)
SELECT c.id, m.coverage FROM configs c LEFT JOIN maps m ON c.map_id = m.id and m.coverage = 'Outdoor';

--е) Запрос с использованием вложенного подзапроса (вложенный SELECT).
--Вывести конфиги и их длину, длина которых больше чем средняя протяженность всех карт
SELECT c.id, c.length AS l FROM configs c WHERE (c.length > (SELECT min(avg) FROM (SELECT avg(total_length) AS avg FROM maps)));