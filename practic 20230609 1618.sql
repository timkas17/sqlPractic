-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 5.0.37.1
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 09.06.2023 16:18:35
-- Версия сервера: 5.5.25
-- Версия клиента: 4.1

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

-- 
-- Установка базы данных по умолчанию
--
USE practic;

--
-- Описание для таблицы employees
--
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
  id INT(11) NOT NULL AUTO_INCREMENT,
  fullName VARCHAR(60) NOT NULL,
  department INT(11) NOT NULL,
  salary DOUBLE NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 4096
CHARACTER SET utf8
COLLATE utf8_general_ci;

DELIMITER $$

--
-- Описание для процедуры UpdateSalary
--
DROP PROCEDURE IF EXISTS UpdateSalary$$
CREATE DEFINER = 'root'@'localhost'
PROCEDURE UpdateSalary(newsalary DOUBLE,
                              setid     INT
                              )
BEGIN
  IF (setid = id) THEN
    UPDATE employees
SET
  salary = @newsalary + salary;
    SELECT fullName
     , salary
FROM
  employees;
  END IF;
END
$$

DELIMITER ;

-- 
-- Вывод данных для таблицы employees
--
INSERT INTO employees VALUES 
  (2, 'Данил Федотов Васильевич', 9, 2505000),
  (3, 'Никита Маркин Петрович', 7, 3507000),
  (4, 'Андрей Вихров Иванович', 9, 10000),
  (5, 'Валера Шевченко Николаевич', 7, 30000);

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;