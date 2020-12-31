BEGIN TRANSACTION

INSERT INTO Автомойка_1 VALUES
('На Хользунова', 'ул. Рязанская, 117, Воронеж'),
('На Лизюкова', 'ул. Генерала Лизюкова, 50/2, Воронеж'),
('Московская', 'Московский просп., 84-а, Воронеж'),
('AutoPolish', 'ул. Карла Маркса, 72а/2, Воронеж'),
('Не мой сам', 'ул. ​Антонова-Овсеенко, 7а, Воронеж'),
('ARKANA','ул. ​Патриотов проспект, 25д, Воронеж'),
('Барвиха','ул. Солнечная, 66в, Воронеж'),
('Про Драйв','ул.Краснодонская, 27/1, Воронеж')
GO


INSERT INTO Бокс_2 VALUES
('Первый', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('На Хользунова'))
),
('Второй', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('На Хользунова'))
),
('Третий', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('На Хользунова'))
),
('Четвертый', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('На Хользунова'))
)

GO
INSERT INTO Бокс_2 VALUES
('Первый', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('На Лизюкова'))
),
('Второй', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('На Лизюкова'))
),
('Третий', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('На Лизюкова'))
)

GO
INSERT INTO Бокс_2 VALUES
('Первый', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('Московская'))
),
('Второй', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('Московская'))
),
('Третий', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('Московская'))
)

GO
INSERT INTO Бокс_2 VALUES
('Первый', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('AutoPolish'))
),
('Второй', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('AutoPolish'))
)

GO
INSERT INTO Бокс_2 VALUES
('Первый', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('Не мой сам'))
),
('Второй', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('Не мой сам'))
),
('Третий', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('Не мой сам'))
)

GO
INSERT INTO Бокс_2 VALUES
('Первый', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('ARKANA'))
),
('Второй', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('ARKANA'))
)

GO
INSERT INTO Бокс_2 VALUES
('Первый', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('Барвиха'))
),
('Второй', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('Барвиха'))
)

GO
INSERT INTO Бокс_2 VALUES
('Первый', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('Про Драйв'))
),
('Второй', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('Про Драйв'))
),
('Третий', (SELECT id_Автомойки
		   FROM Автомойка_1
		   WHERE UPPER(Название) LIKE UPPER('Про Драйв'))
)
GO

INSERT INTO Сотрудник_11 VALUES
('Петухов', 'Николай', 'Петрович', '1988-05-23', 89204567892, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('На Хользунова')), NULL
),
('Пирогов', 'Сергей', 'Александрович', '1997-01-10', 89037892356, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('На Хользунова')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('На Хользунова')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Первый'))
),
('Ахмедов', 'Анар', NULL, '2000-02-10', NULL, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('На Хользунова')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('На Хользунова')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Второй'))
),
('Мишин', 'Андрей','Кириллович','1995-05-27', 89256789213, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('На Хользунова')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('На Хользунова')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Третий'))
),
('Зимницкий', 'Олег','Васильевич','1989-11-10', 89601459874, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('На Хользунова')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('На Хользунова')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Четвертый'))
)

GO

INSERT INTO Сотрудник_11 VALUES
('Кретинин', 'Владислав', 'Петрович', '1978-02-25', 89045667892, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('На Лизюкова')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('На Лизюкова')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Первый'))
),
('Панько', 'Роман', 'Олегович', '1960-05-10', 89789567325, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('На Лизюкова')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('На Лизюкова')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Второй'))
),
('Рыбинцев', 'Виталий', 'Иванович', '1970-07-16', 89209673925, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('На Лизюкова')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('На Лизюкова')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Второй'))
),
('Алексенко', 'Георгий', 'Васильевич', '1979-10-10', 89039957125, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('На Лизюкова')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('На Лизюкова')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Третий'))
)
GO
INSERT INTO Сотрудник_11 VALUES
('Радищев', 'Иван', NULL, '1976-04-15', 89085617842, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('Московская')), NULL
),
('Николаев', 'Роман', 'Романович', '1987-01-10', 89669587315, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('Московская')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('Московская')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Первый'))
),
('Решетов', 'Михаил', 'Петрович', '1976-09-07',89664581234, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('Московская')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('Московская')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Второй'))
),
('Греченко', 'Константин', 'Васильевич', '1999-11-11', 89017947121, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('Московская')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('Московская')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Третий'))
),
('Греченко', 'Алексей', 'Васильевич', '1999-11-11', 89015612121, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('Московская')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('Московская')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Третий'))
)
GO
INSERT INTO Сотрудник_11 VALUES
('Вольнов', 'Василий', 'Константинович', '1986-02-13', 89081317842, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('AutoPolish')), NULL
),
('Раздолин', 'Сергей', 'Максимович', '1969-04-18', 89169537345, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('AutoPolish')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('AutoPolish')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Первый'))
),
('Ларин', 'Максим', NULL, '1996-05-02', 89234769085, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('AutoPolish')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('AutoPolish')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Второй'))
)
GO
INSERT INTO Сотрудник_11 VALUES
('Воронов', 'Иван', 'Константинович', '1989-01-13', 89087367122, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('Не мой сам')), NULL
),
('Раздолин', 'Валентин', 'Максимович', '1965-11-15', 89458937125, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('Не мой сам')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('Не мой сам')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Первый'))
),
('Нерестов', 'Николай', 'Олегович', '1994-08-01', 89776891265, (SELECT id_Автомойки
															 FROM Автомойка_1
															 WHERE UPPER(Название) LIKE UPPER('Не мой сам')), (SELECT id_Бокса
																												  FROM Бокс_2 Б JOIN Автомойка_1 А
																												  ON Б.id_Автомойки = А.id_Автомойки
																												  WHERE UPPER(А.Название) LIKE UPPER('Не мой сам')
																												  AND UPPER(Б.Название_бокса) LIKE UPPER('Второй'))
)
GO

INSERT INTO Услуга_3 VALUES
('Техническая мойка'),
('Мойка кузова'),
('Комплексная мойка'),
('Мойка двигателя'),
('Пылесос салона'),
('Химчистка салона')
GO

INSERT INTO Автомойка_Услуга_13 (id_Автомойки, id_Услуги, Стоимость)
SELECT А.id_Автомойки, У.id_Услуги, 200
FROM Автомойка_1 А, Услуга_3 У
WHERE (UPPER(У.Название) LIKE UPPER('Техническая мойка'))

GO
INSERT INTO Автомойка_Услуга_13 (id_Автомойки, id_Услуги, Стоимость)
SELECT А.id_Автомойки, У.id_Услуги, 400
FROM Автомойка_1 А, Услуга_3 У
WHERE (UPPER(А.Название) IN (UPPER('На Лизюкова'), UPPER('На Хользунова'), UPPER('Московская'))) AND ((UPPER(У.Название) LIKE UPPER('Мойка кузова')))

GO
INSERT INTO Автомойка_Услуга_13 (id_Автомойки, id_Услуги, Стоимость)
SELECT А.id_Автомойки, У.id_Услуги, 350
FROM Автомойка_1 А, Услуга_3 У
WHERE (UPPER(А.Название) NOT IN (UPPER('На Лизюкова'), UPPER('На Хользунова'), UPPER('Московская'))) AND ((UPPER(У.Название) LIKE UPPER('Мойка кузова')))

GO
INSERT INTO Автомойка_Услуга_13 (id_Автомойки, id_Услуги, Стоимость)
SELECT А.id_Автомойки, У.id_Услуги, 600
FROM Автомойка_1 А, Услуга_3 У
WHERE (UPPER(А.Название) IN (UPPER('На Лизюкова'), UPPER('AutoPolish'), UPPER('ARKANA'))) AND ((UPPER(У.Название) LIKE UPPER('Комплексная мойка')))

GO
INSERT INTO Автомойка_Услуга_13 (id_Автомойки, id_Услуги, Стоимость)
SELECT А.id_Автомойки, У.id_Услуги, 700
FROM Автомойка_1 А, Услуга_3 У
WHERE (UPPER(А.Название) NOT IN (UPPER('На Лизюкова'), UPPER('AutoPolish'), UPPER('ARKANA'))) AND ((UPPER(У.Название) LIKE UPPER('Комплексная мойка')))

GO
INSERT INTO Автомойка_Услуга_13 (id_Автомойки, id_Услуги, Стоимость)
SELECT А.id_Автомойки, У.id_Услуги, 300
FROM Автомойка_1 А, Услуга_3 У
WHERE (UPPER(У.Название) LIKE UPPER('Мойка двигателя'))

GO
INSERT INTO Автомойка_Услуга_13 (id_Автомойки, id_Услуги, Стоимость)
SELECT А.id_Автомойки, У.id_Услуги, 100
FROM Автомойка_1 А, Услуга_3 У
WHERE (UPPER(А.Название) IN (UPPER('На Хользунова'), UPPER('Не мой сам'), UPPER('Про Драйв'))) AND ((UPPER(У.Название) LIKE UPPER('Пылесос салона')))

GO
INSERT INTO Автомойка_Услуга_13 (id_Автомойки, id_Услуги, Стоимость)
SELECT А.id_Автомойки, У.id_Услуги, 50
FROM Автомойка_1 А, Услуга_3 У
WHERE (UPPER(А.Название) NOT IN (UPPER('На Хользунова'), UPPER('Не мой сам'), UPPER('Про Драйв'))) AND ((UPPER(У.Название) LIKE UPPER('Пылесос салона')))

GO
INSERT INTO Автомойка_Услуга_13 (id_Автомойки, id_Услуги, Стоимость)
SELECT А.id_Автомойки, У.id_Услуги, 3000
FROM Автомойка_1 А, Услуга_3 У
WHERE (UPPER(А.Название) IN (UPPER('Барвиха'), UPPER('Московская'))) AND ((UPPER(У.Название) LIKE UPPER('Химчистка салона')))

GO
INSERT INTO Автомойка_Услуга_13 (id_Автомойки, id_Услуги, Стоимость)
SELECT А.id_Автомойки, У.id_Услуги, 2500
FROM Автомойка_1 А, Услуга_3 У
WHERE (UPPER(А.Название) IN (UPPER('На Хользунова'), UPPER('На Лизюкова'))) AND ((UPPER(У.Название) LIKE UPPER('Химчистка салона')))

GO
INSERT INTO Автомойка_Услуга_13 (id_Автомойки, id_Услуги, Стоимость)
SELECT А.id_Автомойки, У.id_Услуги, 3000
FROM Автомойка_1 А, Услуга_3 У
WHERE (UPPER(А.Название) IN (UPPER('AutoPolish'), UPPER('Не мой сам'), UPPER('ARKANA'), UPPER('Про Драйв'))) AND ((UPPER(У.Название) LIKE UPPER('Химчистка салона')))

GO
INSERT INTO Косметика_4 VALUES
('Полироль для фар'),
('Жидкий полимер'),
('Очиститель-полироль пластика'),
('Очиститель кожи'),
('Защитное покрытие'),
('Чернитель резины')

GO
INSERT INTO Услуга_Косметика_12(id_Косметики, id_Автомойки_Услуги, Объем, Стоимость, Количество_на_складе)
SELECT К.id_Косметики, АУ.id_Автомойки_Услуги, 0.1, 500, 30
FROM Косметика_4 К, Автомойка_Услуга_13 АУ JOIN Услуга_3 У
ON АУ.id_Услуги = У.id_Услуги
JOIN Автомойка_1 А
ON АУ.id_Автомойки = А.id_Автомойки
WHERE (UPPER(К.Название) LIKE UPPER('Полироль для фар')) AND ((UPPER(У.Название) LIKE UPPER('Комплексная мойка')) AND (UPPER(А.Название) IN (UPPER('На Хользунова'), UPPER('Не мой сам'), UPPER('Про Драйв'))))

INSERT INTO Услуга_Косметика_12(id_Косметики, id_Автомойки_Услуги, Объем, Стоимость, Количество_на_складе)
SELECT К.id_Косметики, АУ.id_Автомойки_Услуги, 0.1, 600, 55
FROM Косметика_4 К, Автомойка_Услуга_13 АУ JOIN Услуга_3 У
ON АУ.id_Услуги = У.id_Услуги
JOIN Автомойка_1 А
ON АУ.id_Автомойки = А.id_Автомойки
WHERE (UPPER(К.Название) LIKE UPPER('Полироль для фар')) AND ((UPPER(У.Название) LIKE UPPER('Комплексная мойка')) AND (UPPER(А.Название) NOT IN (UPPER('На Хользунова'), UPPER('Не мой сам'), UPPER('Про Драйв'))))
GO

INSERT INTO Акция_7 VALUES
('Первое посещение', 15),
('Приведи друга', 10),
('Ночная акция', 20)

INSERT INTO Скидка_17 VALUES
(5),(10),(15),(20)

INSERT Категория_21 VALUES
('A'),('B'),('C'),('D')

INSERT Страна_производитель_14 VALUES
('Россия'),
('Франция'),
('Германия'),
('Япония'),
('Корея'),
('Китай'),
('Америка'),
('Италия')

INSERT Марка_16 (id_Страны, Название) 
SELECT id_Страны, 'BMW'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Германия')
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Mercedes-Benz'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Германия')
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Volkswagen'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Германия')
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Porsche'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Германия')
GO

INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Lada'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Россия')
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'УАЗ'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Россия')
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'ГАЗ'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Россия')

GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Chevrolet'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Америка')
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Ford'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Америка')
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Jeep'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Америка')

GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Renault'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Франция')
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Peugeot'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Франция')
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Citroen'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Франция')	

GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Toyota'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Япония')	
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Lexus'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Япония')	
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Subaru'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Япония')	
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Mitsubishi'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Япония')	
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Honda'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Япония')	

GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Hyundai'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Корея')	
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Daewoo'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Корея')
GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Kia'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Корея')

GO
INSERT Марка_16 (id_Страны, Название)
SELECT id_Страны, 'Chery'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Китай')
GO
INSERT Марка_16 (id_Страны, Название) 
SELECT id_Страны, 'Great Wall'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Китай')
GO
INSERT Марка_16 (id_Страны, Название) 
SELECT id_Страны, 'Geely'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Китай')

GO
INSERT Марка_16 (id_Страны, Название) 
SELECT id_Страны, 'Ferrari'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Италия')
GO
INSERT Марка_16 (id_Страны, Название) 
SELECT id_Страны, 'Lamborghini'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Италия')
GO
INSERT Марка_16 (id_Страны, Название) 
SELECT id_Страны, 'Fiat'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Италия')
GO
INSERT Марка_16 (id_Страны, Название) 
SELECT id_Страны, 'Alfa Romeo'
FROM Страна_производитель_14
WHERE UPPER(Название) LIKE UPPER('Италия')

GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Solaris', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Hyundai') AND (К.Категория LIKE 'B')
GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Creta', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Hyundai') AND (К.Категория LIKE 'B')
GO

INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Camaro', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Chevrolet') AND (К.Категория LIKE 'B')
GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Trackhawk', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Jeep') AND (К.Категория LIKE 'B')

GO

INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Focus', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Ford') AND (К.Категория LIKE 'B')

GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Accord', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Honda') AND (К.Категория LIKE 'B')

GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Civic', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Honda') AND (К.Категория LIKE 'B')

GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Pilot', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Honda') AND (К.Категория LIKE 'B')

GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'CrossTour', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Honda') AND (К.Категория LIKE 'B')

GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Camry', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Toyota') AND (К.Категория LIKE 'B')
GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Outback', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Subaru') AND (К.Категория LIKE 'B')
GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Asx', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Mitsubishi') AND (К.Категория LIKE 'B')

GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Vesta', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Lada') AND (К.Категория LIKE 'B')
GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Granta', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Lada') AND (К.Категория LIKE 'B')
GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Hunter', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('УАЗ') AND (К.Категория LIKE 'B')

GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'X5', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('BMW') AND (К.Категория LIKE 'B')

GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Cayenne', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Porsche') AND (К.Категория LIKE UPPER('B'))

GO
INSERT INTO Модель_15(Название, id_Марки, id_Категории)
SELECT 'Rio', М.id_Марки, К.id_Категории
FROM Марка_16 М, Категория_21 К
WHERE UPPER(М.Название) LIKE UPPER('Kia') AND (К.Категория LIKE UPPER('B'))

INSERT INTO Клиент_8 VALUES
('Емельянов', 'Сергей', 'Александрович', 89081236587, NULL),
('Емельянов', 'Алексей', 'Владимирович', 89205346512, (SELECT id_Скидки FROM Скидка_17 WHERE Размер_скидки = 10)),
('Емельянов', 'Виктор', 'Александрович', 89153478213, (SELECT id_Скидки FROM Скидка_17 WHERE Размер_скидки = 5)),
('Курчатов', 'Андрей', 'Викторович', 89256238540, NULL),
('Попрекайло', 'Василий', 'Иванович', 89003127643, (SELECT id_Скидки FROM Скидка_17 WHERE Размер_скидки = 15)),
('Решетов', 'Алексей', 'Викторович', 89763785461, NULL),
('Лепестков', 'Валерий', 'Витальевич', 89347914412,(SELECT id_Скидки FROM Скидка_17 WHERE Размер_скидки = 20)),
('Сиротов', 'Константин', 'Олегович', 89563459812, NULL),
('Смолов', 'Михаил', 'Максимович', 89793456521,(SELECT id_Скидки FROM Скидка_17 WHERE Размер_скидки = 5)),
('Аристов', 'Олег', 'Сергеевич', 89451230975, (SELECT id_Скидки FROM Скидка_17 WHERE Размер_скидки = 5)),
('Смолов', 'Алексей', 'Максимович', 89083412581,(SELECT id_Скидки FROM Скидка_17 WHERE Размер_скидки = 10)),
('Тестов', 'Lada', 'Максимович', 89997773412 ,NULL)

INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 136, М.id_Модели, К.id_Клиента, 'У549ВЕ'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Vesta') AND UPPER(К.Фамилия) LIKE UPPER('Емельянов') AND UPPER(К.Имя) LIKE UPPER('Сергей')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 777, М.id_Модели, К.id_Клиента, 'А111АА'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('X5') AND UPPER(К.Фамилия) LIKE UPPER('Лепестков') AND UPPER(К.Имя) LIKE UPPER('Валерий')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 178, М.id_Модели, К.id_Клиента, 'О101ОО'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Cayenne') AND UPPER(К.Фамилия) LIKE UPPER('Сиротов') AND UPPER(К.Имя) LIKE UPPER('Константин')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 36, М.id_Модели, К.id_Клиента, 'У455РЕ'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Granta') AND UPPER(К.Фамилия) LIKE UPPER('Смолов') AND UPPER(К.Имя) LIKE UPPER('Михаил')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 136, М.id_Модели, К.id_Клиента, 'B345MX'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Accord') AND UPPER(К.Фамилия) LIKE UPPER('Смолов') AND UPPER(К.Имя) LIKE UPPER('Михаил')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 01, М.id_Модели, К.id_Клиента, 'Р333РР'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Camry') AND UPPER(К.Фамилия) LIKE UPPER('Емельянов') AND UPPER(К.Имя) LIKE UPPER('Алексей')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 36, М.id_Модели, К.id_Клиента, 'К123РУ'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Accord') AND UPPER(К.Фамилия) LIKE UPPER('Емельянов') AND UPPER(К.Имя) LIKE UPPER('Виктор')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 136, М.id_Модели, К.id_Клиента, 'К581ЕЕ'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Camry') AND UPPER(К.Фамилия) LIKE UPPER('Емельянов') AND UPPER(К.Имя) LIKE UPPER('Виктор')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 750, М.id_Модели, К.id_Клиента, 'К947УУ'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Solaris') AND UPPER(К.Фамилия) LIKE UPPER('Курчатов') AND UPPER(К.Имя) LIKE UPPER('Андрей')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 750, М.id_Модели, К.id_Клиента, 'Е001ЕЕ'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Outback') AND UPPER(К.Фамилия) LIKE UPPER('Курчатов') AND UPPER(К.Имя) LIKE UPPER('Андрей')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 134, М.id_Модели, К.id_Клиента, 'Х345ЕХ'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('TrackHawk') AND UPPER(К.Фамилия) LIKE UPPER('Попрекайло') AND UPPER(К.Имя) LIKE UPPER('Василий')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 81, М.id_Модели, К.id_Клиента, 'Е123ВА'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Focus') AND UPPER(К.Фамилия) LIKE UPPER('Решетов') AND UPPER(К.Имя) LIKE UPPER('Алексей')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 36, М.id_Модели, К.id_Клиента, 'Т345РО'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Rio') AND UPPER(К.Фамилия) LIKE UPPER('Решетов') AND UPPER(К.Имя) LIKE UPPER('Алексей')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 750, М.id_Модели, К.id_Клиента, 'У666ОР'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Rio') AND UPPER(К.Фамилия) LIKE UPPER('Курчатов') AND UPPER(К.Имя) LIKE UPPER('Андрей')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 50, М.id_Модели, К.id_Клиента, 'О987КК'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Asx') AND UPPER(К.Фамилия) LIKE UPPER('Аристов') AND UPPER(К.Имя) LIKE UPPER('Олег')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 50, М.id_Модели, К.id_Клиента, 'А093ТМ'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Hunter') AND UPPER(К.Фамилия) LIKE UPPER('Курчатов') AND UPPER(К.Имя) LIKE UPPER('Андрей')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 136, М.id_Модели, К.id_Клиента, 'Л004КУ'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Solaris') AND UPPER(К.Фамилия) LIKE UPPER('Смолов') AND UPPER(К.Имя) LIKE UPPER('Михаил')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 136, М.id_Модели, К.id_Клиента, 'А333ЕЕ'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Solaris') AND UPPER(К.Фамилия) LIKE UPPER('Смолов') AND UPPER(К.Имя) LIKE UPPER('Михаил')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 05, М.id_Модели, К.id_Клиента, 'О004АР'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Civic') AND UPPER(К.Фамилия) LIKE UPPER('Попрекайло') AND UPPER(К.Имя) LIKE UPPER('Василий')

GO

INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 78, М.id_Модели, К.id_Клиента, 'А036КО'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Pilot') AND UPPER(К.Фамилия) LIKE UPPER('Емельянов') AND UPPER(К.Имя) LIKE UPPER('Алексей')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 777, М.id_Модели, К.id_Клиента, 'А666ОА'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('CrossTour') AND UPPER(К.Фамилия) LIKE UPPER('Емельянов') AND UPPER(К.Имя) LIKE UPPER('Алексей')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 77, М.id_Модели, К.id_Клиента, 'А468ОА'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('CrossTour') AND UPPER(К.Фамилия) LIKE UPPER('Аристов') AND UPPER(К.Имя) LIKE UPPER('Олег')

GO
INSERT INTO Автомобиль_9(Регион, id_Модели, id_Клиента, Госномер)
SELECT 24, М.id_Модели, К.id_Клиента, 'Р777ОА'
FROM Клиент_8 К, Модель_15 М
WHERE UPPER(М.Название) LIKE UPPER('Vesta') AND UPPER(К.Фамилия) LIKE UPPER('Смолов') AND UPPER(К.Имя) LIKE UPPER('Алексей')

GO
INSERT INTO Статус_жалобы_18 VALUES
('Жалоба принята'), ('Жалоба обрабатывается'), ('Жалобаба обработана')

GO
INSERT INTO Заказ_5(Дата_заказа, Время_начала_работ, Время_окончания_работ, id_Клиента, id_Акции, id_Бокса, id_Автомобиля, Стоимость)
SELECT '2020-10-10', '10:00:00', '10:25:00', К.id_Клиента, NULL, Б.id_Бокса, АВТ.id_Автомобиля, (АУ.Стоимость + УК.Стоимость*УК.Объем)
FROM Клиент_8 К
LEFT JOIN Скидка_17 С
ON К.id_Скидки = С.id_Скидки
JOIN Автомобиль_9 АВТ
ON К.id_Клиента = АВТ.id_Клиента,

/*Акция_7 А,*/
Бокс_2 Б JOIN Автомойка_1 АМ
ON Б.id_Автомойки = АМ.id_Автомойки
JOIN Автомойка_Услуга_13 АУ
ON АМ.id_Автомойки = АУ.id_Автомойки
JOIN Услуга_3 У
ON У.id_Услуги = АУ.id_Услуги
LEFT JOIN Услуга_Косметика_12 УК
ON АУ.id_Автомойки_Услуги = УК.id_Автомойки_Услуги
LEFT JOIN Косметика_4 КМ
ON УК.id_Косметики = КМ.id_Косметики

WHERE К.Номер_телефона = 89081236587 AND UPPER(Б.Название_бокса) LIKE UPPER('Первый') 
AND UPPER(АМ.Название) LIKE UPPER('На Хользунова') AND UPPER(У.Название) LIKE ('Комплексная мойка')
AND UPPER(АВТ.ГосНомер) LIKE UPPER('У549ВЕ') AND UPPER(АВТ.Регион) LIKE UPPER('136')

GO
INSERT INTO Заказ_5(Дата_заказа, Время_начала_работ, Время_окончания_работ, id_Клиента, id_Акции, id_Бокса, id_Автомобиля, Стоимость)
SELECT '2020-10-15', '10:00', '11:00', К.id_Клиента, NULL, Б.id_Бокса, АВТ.id_Автомобиля, АУ.Стоимость
FROM Клиент_8 К
LEFT JOIN Скидка_17 С
ON К.id_Скидки = С.id_Скидки
JOIN Автомобиль_9 АВТ
ON К.id_Клиента = АВТ.id_Клиента,

/*Акция_7 А,*/
Бокс_2 Б JOIN Автомойка_1 АМ
ON Б.id_Автомойки = АМ.id_Автомойки
JOIN Автомойка_Услуга_13 АУ
ON АМ.id_Автомойки = АУ.id_Автомойки
JOIN Услуга_3 У
ON У.id_Услуги = АУ.id_Услуги
LEFT JOIN Услуга_Косметика_12 УК
ON АУ.id_Автомойки_Услуги = УК.id_Автомойки_Услуги
LEFT JOIN Косметика_4 КМ
ON УК.id_Косметики = КМ.id_Косметики

WHERE К.Номер_телефона = 89081236587 AND UPPER(Б.Название_бокса) LIKE UPPER('Первый') 
AND UPPER(АМ.Название) LIKE UPPER('Московская') AND UPPER(У.Название) LIKE ('Техническая мойка')
AND UPPER(АВТ.ГосНомер) LIKE UPPER('У549ВЕ') AND UPPER(АВТ.Регион) LIKE UPPER('136')

GO
INSERT INTO Заказ_5(Дата_заказа, Время_начала_работ, Время_окончания_работ, id_Клиента, id_Акции, id_Бокса, id_Автомобиля, Стоимость)
SELECT '2020-10-10', '12:00', '13:00', К.id_Клиента, NULL, Б.id_Бокса, АВТ.id_Автомобиля, (АУ.Стоимость + УК.Стоимость*УК.Объем)
FROM Клиент_8 К
LEFT JOIN Скидка_17 С
ON К.id_Скидки = С.id_Скидки
JOIN Автомобиль_9 АВТ
ON К.id_Клиента = АВТ.id_Клиента,

/*Акция_7 А,*/
Бокс_2 Б JOIN Автомойка_1 АМ
ON Б.id_Автомойки = АМ.id_Автомойки
JOIN Автомойка_Услуга_13 АУ
ON АМ.id_Автомойки = АУ.id_Автомойки
JOIN Услуга_3 У
ON У.id_Услуги = АУ.id_Услуги
LEFT JOIN Услуга_Косметика_12 УК
ON АУ.id_Автомойки_Услуги = УК.id_Автомойки_Услуги
LEFT JOIN Косметика_4 КМ
ON УК.id_Косметики = КМ.id_Косметики

WHERE К.Номер_телефона = 89003127643 AND UPPER(Б.Название_бокса) LIKE UPPER('Первый') 
AND UPPER(АМ.Название) LIKE UPPER('На Хользунова') AND UPPER(У.Название) LIKE ('Комплексная мойка')
AND UPPER(АВТ.ГосНомер) LIKE UPPER('О004АР') AND UPPER(АВТ.Регион) LIKE UPPER('5')


GO
INSERT INTO Заказ_5(Дата_заказа, Время_начала_работ, Время_окончания_работ, id_Клиента, id_Акции, id_Бокса, id_Автомобиля, Стоимость)
SELECT '2020-11-10', '15:00:00', '15:15:00', К.id_Клиента, NULL, Б.id_Бокса, АВТ.id_Автомобиля, ((АУ.Стоимость) * (1-(С.Размер_скидки/100)))
FROM Клиент_8 К
LEFT JOIN Скидка_17 С
ON К.id_Скидки = С.id_Скидки
JOIN Автомобиль_9 АВТ
ON К.id_Клиента = АВТ.id_Клиента,

Бокс_2 Б JOIN Автомойка_1 АМ
ON Б.id_Автомойки = АМ.id_Автомойки
JOIN Автомойка_Услуга_13 АУ
ON АМ.id_Автомойки = АУ.id_Автомойки
JOIN Услуга_3 У
ON У.id_Услуги = АУ.id_Услуги
LEFT JOIN Услуга_Косметика_12 УК
ON АУ.id_Автомойки_Услуги = УК.id_Автомойки_Услуги
LEFT JOIN Косметика_4 КМ
ON УК.id_Косметики = КМ.id_Косметики

WHERE К.Номер_телефона = 89003127643 AND UPPER(Б.Название_бокса) LIKE UPPER('Второй') 
AND UPPER(АМ.Название) LIKE UPPER('Не мой сам') AND UPPER(У.Название) LIKE ('Мойка кузова') 
AND UPPER(АВТ.ГосНомер) LIKE UPPER('О004АР') AND UPPER(АВТ.Регион) LIKE UPPER('5')
GO

INSERT INTO Заказ_5(Дата_заказа, Время_начала_работ, Время_окончания_работ, id_Клиента, id_Акции, id_Бокса, id_Автомобиля, Стоимость)
SELECT '2020-11-16', '12:00', '12:45', К.id_Клиента, А.id_Акции, Б.id_Бокса, АВТ.id_Автомобиля, ((АУ.Стоимость + УК.Стоимость*УК.Объем) * (1-(А.Размер_скидки/100)))
FROM Клиент_8 К
LEFT JOIN Скидка_17 С
ON К.id_Скидки = С.id_Скидки
JOIN Автомобиль_9 АВТ
ON К.id_Клиента = АВТ.id_Клиента,

Акция_7 А,
Бокс_2 Б JOIN Автомойка_1 АМ
ON Б.id_Автомойки = АМ.id_Автомойки
JOIN Автомойка_Услуга_13 АУ
ON АМ.id_Автомойки = АУ.id_Автомойки
JOIN Услуга_3 У
ON У.id_Услуги = АУ.id_Услуги
LEFT JOIN Услуга_Косметика_12 УК
ON АУ.id_Автомойки_Услуги = УК.id_Автомойки_Услуги
LEFT JOIN Косметика_4 КМ
ON УК.id_Косметики = КМ.id_Косметики

WHERE К.Номер_телефона = 89793456521 AND UPPER(Б.Название_бокса) LIKE UPPER('Третий') 
AND UPPER(АМ.Название) LIKE UPPER('Московская') AND UPPER(У.Название) LIKE ('Комплексная мойка') AND UPPER(А.Название_акции) LIKE UPPER('Первое посещение')
AND UPPER(АВТ.ГосНомер) LIKE UPPER('B345MX') AND UPPER(АВТ.Регион) LIKE UPPER('136')

GO
INSERT INTO Заказ_5(Дата_заказа, Время_начала_работ, Время_окончания_работ, id_Клиента, id_Акции, id_Бокса, id_Автомобиля ,Стоимость)
SELECT '2020-11-15', '10:00', '21:00', К.id_Клиента, А.id_Акции, Б.id_Бокса, АВТ.id_Автомобиля, ((АУ.Стоимость) * (1-(А.Размер_скидки/100)))
FROM Клиент_8 К
LEFT JOIN Скидка_17 С
ON К.id_Скидки = С.id_Скидки
JOIN Автомобиль_9 АВТ
ON К.id_Клиента = АВТ.id_Клиента,

Акция_7 А,
Бокс_2 Б JOIN Автомойка_1 АМ
ON Б.id_Автомойки = АМ.id_Автомойки
JOIN Автомойка_Услуга_13 АУ
ON АМ.id_Автомойки = АУ.id_Автомойки
JOIN Услуга_3 У
ON У.id_Услуги = АУ.id_Услуги
LEFT JOIN Услуга_Косметика_12 УК
ON АУ.id_Автомойки_Услуги = УК.id_Автомойки_Услуги
LEFT JOIN Косметика_4 КМ
ON УК.id_Косметики = КМ.id_Косметики

WHERE К.Номер_телефона = 89083412581 AND UPPER(Б.Название_бокса) LIKE UPPER('Второй') 
AND UPPER(АМ.Название) LIKE UPPER('На Лизюкова') AND UPPER(У.Название) LIKE ('Химчистка салона') AND UPPER(А.Название_акции) LIKE UPPER('Первое посещение')
AND UPPER(АВТ.ГосНомер) LIKE UPPER('Р777ОА') AND UPPER(АВТ.Регион) LIKE UPPER('24')

GO
INSERT INTO Заказ_5(Дата_заказа, Время_начала_работ, Время_окончания_работ, id_Клиента, id_Акции, id_Бокса, id_Автомобиля ,Стоимость)
SELECT '2020-11-17', '17:00', '18:35', К.id_Клиента, А.id_Акции, Б.id_Бокса, АВТ.id_Автомобиля, ((АУ.Стоимость + УК.Стоимость*УК.Объем) * (1-(А.Размер_скидки/100)))
FROM Клиент_8 К
LEFT JOIN Скидка_17 С
ON К.id_Скидки = С.id_Скидки
JOIN Автомобиль_9 АВТ
ON К.id_Клиента = АВТ.id_Клиента,

Акция_7 А,
Бокс_2 Б JOIN Автомойка_1 АМ
ON Б.id_Автомойки = АМ.id_Автомойки
JOIN Автомойка_Услуга_13 АУ
ON АМ.id_Автомойки = АУ.id_Автомойки
JOIN Услуга_3 У
ON У.id_Услуги = АУ.id_Услуги
LEFT JOIN Услуга_Косметика_12 УК
ON АУ.id_Автомойки_Услуги = УК.id_Автомойки_Услуги
LEFT JOIN Косметика_4 КМ
ON УК.id_Косметики = КМ.id_Косметики

WHERE К.Номер_телефона = 89763785461 AND UPPER(Б.Название_бокса) LIKE UPPER('Первый') 
AND UPPER(АМ.Название) LIKE UPPER('AutoPolish') AND UPPER(У.Название) LIKE ('Комплексная мойка') AND UPPER(А.Название_акции) LIKE UPPER('Первое посещение')
AND UPPER(АВТ.ГосНомер) LIKE UPPER('Е123ВА') AND UPPER(АВТ.Регион) LIKE UPPER('81')

GO

INSERT INTO Заказ_5(Дата_заказа, Время_начала_работ, Время_окончания_работ, id_Клиента, id_Акции, id_Бокса, id_Автомобиля ,Стоимость)
SELECT '2020-11-17', '14:25', '15:00', К.id_Клиента, NULL, Б.id_Бокса, АВТ.id_Автомобиля, (АУ.Стоимость + УК.Стоимость*УК.Объем)
FROM Клиент_8 К
LEFT JOIN Скидка_17 С
ON К.id_Скидки = С.id_Скидки
JOIN Автомобиль_9 АВТ
ON К.id_Клиента = АВТ.id_Клиента,

Бокс_2 Б JOIN Автомойка_1 АМ
ON Б.id_Автомойки = АМ.id_Автомойки
JOIN Автомойка_Услуга_13 АУ
ON АМ.id_Автомойки = АУ.id_Автомойки
JOIN Услуга_3 У
ON У.id_Услуги = АУ.id_Услуги
LEFT JOIN Услуга_Косметика_12 УК
ON АУ.id_Автомойки_Услуги = УК.id_Автомойки_Услуги
LEFT JOIN Косметика_4 КМ
ON УК.id_Косметики = КМ.id_Косметики

WHERE К.Номер_телефона = 89763785461 AND UPPER(Б.Название_бокса) LIKE UPPER('Второй') 
AND UPPER(АМ.Название) LIKE UPPER('AutoPolish') AND UPPER(У.Название) LIKE ('Комплексная мойка') 
AND UPPER(АВТ.ГосНомер) LIKE UPPER('Т345РО') AND UPPER(АВТ.Регион) LIKE UPPER('36')

GO
INSERT INTO Заказ_5(Дата_заказа, Время_начала_работ, Время_окончания_работ, id_Клиента, id_Акции, id_Бокса, id_Автомобиля ,Стоимость)
SELECT '2020-11-18', '09:18', '09:53', К.id_Клиента, NULL, Б.id_Бокса, АВТ.id_Автомобиля, (АУ.Стоимость + УК.Стоимость*УК.Объем)
FROM Клиент_8 К
LEFT JOIN Скидка_17 С
ON К.id_Скидки = С.id_Скидки
JOIN Автомобиль_9 АВТ
ON К.id_Клиента = АВТ.id_Клиента,

Бокс_2 Б JOIN Автомойка_1 АМ
ON Б.id_Автомойки = АМ.id_Автомойки
JOIN Автомойка_Услуга_13 АУ
ON АМ.id_Автомойки = АУ.id_Автомойки
JOIN Услуга_3 У
ON У.id_Услуги = АУ.id_Услуги
LEFT JOIN Услуга_Косметика_12 УК
ON АУ.id_Автомойки_Услуги = УК.id_Автомойки_Услуги
LEFT JOIN Косметика_4 КМ
ON УК.id_Косметики = КМ.id_Косметики

WHERE К.Номер_телефона = 89256238540 AND UPPER(Б.Название_бокса) LIKE UPPER('Второй') 
AND UPPER(АМ.Название) LIKE UPPER('Московская') AND UPPER(У.Название) LIKE ('Комплексная мойка') 
AND UPPER(АВТ.ГосНомер) LIKE UPPER('У666ОР') AND UPPER(АВТ.Регион) LIKE UPPER('750')
GO

INSERT INTO Заказ_5(Дата_заказа, Время_начала_работ, Время_окончания_работ, id_Клиента, id_Акции, id_Бокса, id_Автомобиля ,Стоимость)
SELECT '2020-11-20', '13:21', '13:35', К.id_Клиента, NULL, Б.id_Бокса, АВТ.id_Автомобиля, АУ.Стоимость
FROM Клиент_8 К
LEFT JOIN Скидка_17 С
ON К.id_Скидки = С.id_Скидки
JOIN Автомобиль_9 АВТ
ON К.id_Клиента = АВТ.id_Клиента,

Бокс_2 Б JOIN Автомойка_1 АМ
ON Б.id_Автомойки = АМ.id_Автомойки
JOIN Автомойка_Услуга_13 АУ
ON АМ.id_Автомойки = АУ.id_Автомойки
JOIN Услуга_3 У
ON У.id_Услуги = АУ.id_Услуги
LEFT JOIN Услуга_Косметика_12 УК
ON АУ.id_Автомойки_Услуги = УК.id_Автомойки_Услуги
LEFT JOIN Косметика_4 КМ
ON УК.id_Косметики = КМ.id_Косметики

WHERE К.Номер_телефона = 89256238540 AND UPPER(Б.Название_бокса) LIKE UPPER('Второй') 
AND UPPER(АМ.Название) LIKE UPPER('На Лизюкова') AND UPPER(У.Название) LIKE ('Мойка двигателя') 
AND UPPER(АВТ.ГосНомер) LIKE UPPER('А093ТМ') AND UPPER(АВТ.Регион) LIKE UPPER('50')

GO
INSERT INTO Заказ_5(Дата_заказа, Время_начала_работ, Время_окончания_работ, id_Клиента, id_Акции, id_Бокса, id_Автомобиля, Стоимость)
SELECT '2020-11-28', '17:35', '18:15', К.id_Клиента, NULL, Б.id_Бокса, АВТ.id_Автомобиля, (АУ.Стоимость + УК.Стоимость*УК.Объем)
FROM Клиент_8 К
LEFT JOIN Скидка_17 С
ON К.id_Скидки = С.id_Скидки
JOIN Автомобиль_9 АВТ
ON К.id_Клиента = АВТ.id_Клиента,

/*Акция_7 А,*/
Бокс_2 Б JOIN Автомойка_1 АМ
ON Б.id_Автомойки = АМ.id_Автомойки
JOIN Автомойка_Услуга_13 АУ
ON АМ.id_Автомойки = АУ.id_Автомойки
JOIN Услуга_3 У
ON У.id_Услуги = АУ.id_Услуги
LEFT JOIN Услуга_Косметика_12 УК
ON АУ.id_Автомойки_Услуги = УК.id_Автомойки_Услуги
LEFT JOIN Косметика_4 КМ
ON УК.id_Косметики = КМ.id_Косметики

WHERE К.Номер_телефона = 89081236587 AND UPPER(Б.Название_бокса) LIKE UPPER('Первый') 
AND UPPER(АМ.Название) LIKE UPPER('На Хользунова') AND UPPER(У.Название) LIKE ('Комплексная мойка')
AND UPPER(АВТ.ГосНомер) LIKE UPPER('У549ВЕ') AND UPPER(АВТ.Регион) LIKE UPPER('136')

GO
INSERT INTO Услуга_Заказ_19(id_Услуги, id_Заказа)
SELECT У.id_Услуги, З.id_Заказа
FROM Услуга_3 У, 
Заказ_5 З JOIN Автомобиль_9 А
ON З.id_Автомобиля = А.id_Автомобиля
WHERE UPPER(У.Название) LIKE UPPER('Комплексная мойка') AND UPPER(З.Дата_заказа) LIKE UPPER('2020-10-10')
AND UPPER(А.ГосНомер) LIKE UPPER('У549ВЕ') AND UPPER(А.Регион) LIKE UPPER('136')
	
GO
INSERT INTO Услуга_Заказ_19(id_Услуги, id_Заказа)
SELECT У.id_Услуги, З.id_Заказа
FROM Услуга_3 У, 
Заказ_5 З JOIN Автомобиль_9 А
ON З.id_Автомобиля = А.id_Автомобиля
WHERE UPPER(У.Название) LIKE UPPER('Техническая мойка') AND UPPER(З.Дата_заказа) LIKE UPPER('2020-10-15')
AND UPPER(А.ГосНомер) LIKE UPPER('У549ВЕ') AND UPPER(А.Регион) LIKE UPPER('136')

GO
INSERT INTO Услуга_Заказ_19(id_Услуги, id_Заказа)
SELECT У.id_Услуги, З.id_Заказа
FROM Услуга_3 У, 
Заказ_5 З JOIN Автомобиль_9 А
ON З.id_Автомобиля = А.id_Автомобиля
WHERE UPPER(У.Название) LIKE UPPER('Мойка кузова') AND UPPER(З.Дата_заказа) LIKE UPPER('2020-11-10') 
AND UPPER(А.ГосНомер) LIKE UPPER('О004АР') AND UPPER(А.Регион) LIKE UPPER('5')

GO
INSERT INTO Услуга_Заказ_19(id_Услуги, id_Заказа)
SELECT У.id_Услуги, З.id_Заказа
FROM Услуга_3 У, 
Заказ_5 З JOIN Автомобиль_9 А
ON З.id_Автомобиля = А.id_Автомобиля
WHERE UPPER(У.Название) LIKE UPPER('Комплексная мойка') AND UPPER(З.Дата_заказа) LIKE UPPER('2020-10-10') 
AND UPPER(А.ГосНомер) LIKE UPPER('О004АР') AND UPPER(А.Регион) LIKE UPPER('5')

GO
INSERT INTO Услуга_Заказ_19(id_Услуги, id_Заказа)
SELECT У.id_Услуги, З.id_Заказа
FROM Услуга_3 У, 
Заказ_5 З JOIN Автомобиль_9 А
ON З.id_Автомобиля = А.id_Автомобиля
WHERE UPPER(У.Название) LIKE UPPER('Комплексная мойка') AND UPPER(З.Дата_заказа) LIKE UPPER('2020-11-16') 
AND UPPER(А.ГосНомер) LIKE UPPER('B345MX') AND UPPER(А.Регион) LIKE UPPER('136')

GO
INSERT INTO Услуга_Заказ_19(id_Услуги, id_Заказа)
SELECT У.id_Услуги, З.id_Заказа
FROM Услуга_3 У, 
Заказ_5 З JOIN Автомобиль_9 А
ON З.id_Автомобиля = А.id_Автомобиля
WHERE UPPER(У.Название) LIKE UPPER('Химчистка салона') AND UPPER(З.Дата_заказа) LIKE UPPER('2020-11-15') 
AND UPPER(А.ГосНомер) LIKE UPPER('Р777ОА') AND UPPER(А.Регион) LIKE UPPER('24')

GO
INSERT INTO Услуга_Заказ_19(id_Услуги, id_Заказа)
SELECT У.id_Услуги, З.id_Заказа
FROM Услуга_3 У, 
Заказ_5 З JOIN Автомобиль_9 А
ON З.id_Автомобиля = А.id_Автомобиля
WHERE UPPER(У.Название) LIKE UPPER('Комплексная мойка') AND UPPER(З.Дата_заказа) LIKE UPPER('2020-11-17') 
AND UPPER(А.ГосНомер) LIKE UPPER('Е123ВА') AND UPPER(А.Регион) LIKE UPPER('81')

GO
INSERT INTO Услуга_Заказ_19(id_Услуги, id_Заказа)
SELECT У.id_Услуги, З.id_Заказа
FROM Услуга_3 У, 
Заказ_5 З JOIN Автомобиль_9 А
ON З.id_Автомобиля = А.id_Автомобиля
WHERE UPPER(У.Название) LIKE UPPER('Комплексная мойка') AND UPPER(З.Дата_заказа) LIKE UPPER('2020-11-17') 
AND UPPER(А.ГосНомер) LIKE UPPER('Т345РО') AND UPPER(А.Регион) LIKE UPPER('36')

GO
INSERT INTO Услуга_Заказ_19(id_Услуги, id_Заказа)
SELECT У.id_Услуги, З.id_Заказа
FROM Услуга_3 У, 
Заказ_5 З JOIN Автомобиль_9 А
ON З.id_Автомобиля = А.id_Автомобиля
WHERE UPPER(У.Название) LIKE UPPER('Комплексная мойка') AND UPPER(З.Дата_заказа) LIKE UPPER('2020-11-18') 
AND UPPER(А.ГосНомер) LIKE UPPER('У666ОР') AND UPPER(А.Регион) LIKE UPPER('750')

GO
INSERT INTO Услуга_Заказ_19(id_Услуги, id_Заказа)
SELECT У.id_Услуги, З.id_Заказа
FROM Услуга_3 У, 
Заказ_5 З JOIN Автомобиль_9 А
ON З.id_Автомобиля = А.id_Автомобиля
WHERE UPPER(У.Название) LIKE UPPER('Мойка двигателя') AND UPPER(З.Дата_заказа) LIKE UPPER('2020-11-20') 
AND UPPER(А.ГосНомер) LIKE UPPER('А093ТМ') AND UPPER(А.Регион) LIKE UPPER('50')

GO
INSERT INTO Услуга_Заказ_19(id_Услуги, id_Заказа)
SELECT У.id_Услуги, З.id_Заказа
FROM Услуга_3 У, 
Заказ_5 З JOIN Автомобиль_9 А
ON З.id_Автомобиля = А.id_Автомобиля
WHERE UPPER(У.Название) LIKE UPPER('Комплексная мойка') AND UPPER(З.Дата_заказа) LIKE UPPER('2020-11-28')
AND UPPER(А.ГосНомер) LIKE UPPER('У549ВЕ') AND UPPER(А.Регион) LIKE UPPER('136')

GO
INSERT INTO Жалоба_10 (id_Заказа, Дата_жалобы, Содержание_жалобы, id_Статуса_жалобы)
SELECT З.id_Заказа, '2020-10-10', 'Плохо помыли', С.id_Статуса_жалобы
FROM Заказ_5 З JOIN Клиент_8 К
ON З.id_Клиента = К.id_Клиента, Статус_жалобы_18 С
WHERE З.Дата_заказа = '2020-10-10' AND К.Номер_телефона = 89081236587 AND UPPER(С.Статус) LIKE UPPER('Жалоба обрабатывается')

COMMIT TRANSACTION