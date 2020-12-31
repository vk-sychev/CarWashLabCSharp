CREATE TABLE Автомобиль_9
( 
	id_Автомобиля		 integer IDENTITY (1,1) NOT NULL ,
	Регион               integer  NULL ,
	id_Модели            integer  NULL ,
	id_Клиента           integer  NULL ,
	ГосНомер             varchar(20)  NULL 
)
go



ALTER TABLE Автомобиль_9
	ADD CONSTRAINT XPKАвтомобиль_9 PRIMARY KEY  CLUSTERED (id_Автомобиля ASC)
go




CREATE TABLE Автомойка_1
( 
	id_Автомойки         integer IDENTITY (1,1) NOT NULL ,
	Название             varchar(20)  NOT NULL ,
	Адрес                varchar(40)  NOT NULL 
)
go



ALTER TABLE Автомойка_1
	ADD CONSTRAINT XPKАвтомойка_1 PRIMARY KEY  CLUSTERED (id_Автомойки ASC)
go



CREATE TABLE Автомойка_Услуга_13
( 
	id_Автомойки         integer  NOT NULL ,
	id_Услуги            integer  NOT NULL ,
	id_Автомойки_Услуги  integer IDENTITY (1,1) NOT NULL, 
	Стоимость            integer  NULL 
)
go



ALTER TABLE Автомойка_Услуга_13
	ADD CONSTRAINT XPKАвтомойка_Услуга_13 PRIMARY KEY  CLUSTERED (id_Автомойки_Услуги ASC)
go



CREATE TABLE Акция_7
( 
	id_Акции             integer IDENTITY (1,1) NOT NULL ,
	Название_акции       varchar(20)  NULL ,
	Размер_скидки        decimal(5,2)  NOT NULL 
)
go



ALTER TABLE Акция_7
	ADD CONSTRAINT XPKАкция_7 PRIMARY KEY  CLUSTERED (id_Акции ASC)
go



ALTER TABLE Акция_7
	ADD CONSTRAINT UNIQАкция_7 UNIQUE(Название_акции)
go



CREATE TABLE Бокс_2
( 
	id_Бокса             integer IDENTITY (1,1) NOT NULL ,
	Название_бокса       varchar(20)  NULL ,
	id_Автомойки         integer  NULL 
)
go



ALTER TABLE Бокс_2
	ADD CONSTRAINT XPKБокс_2 PRIMARY KEY  CLUSTERED (id_Бокса ASC)
go



CREATE TABLE Жалоба_10
( 
	id_Заказа            integer  NOT NULL ,
	Дата_жалобы          datetime  NOT NULL ,
	Содержание_жалобы    varchar(20)  NULL ,
	id_Статуса_жалобы    integer  NULL 
)
go



ALTER TABLE Жалоба_10
	ADD CONSTRAINT XPKЖалоба_10 PRIMARY KEY  CLUSTERED (id_Заказа ASC)
go



CREATE TABLE Заказ_5
( 
	id_Заказа            integer IDENTITY (1,1) NOT NULL ,
	Дата_заказа          date  NOT NULL ,
	Время_начала_работ    time  NULL ,
	Время_окончания_работ time  NULL , /* CHECK*/
	id_Клиента           integer  NULL ,
	id_Акции             integer  NULL ,
	id_Бокса             integer  NULL ,
	id_Автомобиля		 integer NOT NULL,
	Стоимость            decimal(6,2)  NULL 
)
go



ALTER TABLE Заказ_5
	ADD CONSTRAINT XPKЗаказ_5 PRIMARY KEY  CLUSTERED (id_Заказа ASC)
go



ALTER TABLE Заказ_5
	ADD CONSTRAINT CHECKЗаказ_5 CHECK(Время_окончания_работ>=Время_начала_работ)
go




CREATE TABLE Клиент_8
( 
	id_Клиента           integer IDENTITY (1,1) NOT NULL ,
	Фамилия              varchar(20)  NOT NULL ,
	Имя                  varchar(20)  NOT NULL ,
	Отчество             varchar(20)  NULL ,
	Номер_телефона       bigint  NOT NULL ,
	id_Скидки            integer  NULL 
)
go



ALTER TABLE Клиент_8
	ADD CONSTRAINT XPKКлиент_8 PRIMARY KEY  CLUSTERED (id_Клиента ASC)
go



ALTER TABLE Клиент_8
	ADD CONSTRAINT UNIQ_Клиент_8 UNIQUE(Номер_телефона)
go



CREATE TABLE Косметика_4
( 
	id_Косметики         integer IDENTITY (1,1) NOT NULL ,
	Название             varchar(30) NOT NULL 
)
go



ALTER TABLE Косметика_4
	ADD CONSTRAINT XPKКосметика_4 PRIMARY KEY  CLUSTERED (id_Косметики ASC)
go



CREATE TABLE Марка_16
( 
	id_Марки             integer IDENTITY (1,1) NOT NULL ,
	Название             varchar(20) NOT NULL ,
	id_Страны            integer  NULL 
)
go



ALTER TABLE Марка_16
	ADD CONSTRAINT XPKМарка_16 PRIMARY KEY  CLUSTERED (id_Марки ASC)
go



CREATE TABLE Модель_15
( 
	id_Модели            integer IDENTITY (1,1) NOT NULL ,
	Название             char(18) NOT NULL ,
	id_Марки             integer  NULL ,
	id_Категории         integer  NULL 
)
go



ALTER TABLE Модель_15
	ADD CONSTRAINT XPKМодель_15 PRIMARY KEY  CLUSTERED (id_Модели ASC)
go



CREATE TABLE Категория_21
(
	id_Категории         integer IDENTITY (1,1) NOT NULL ,
	Категория			 varchar(2) NOT NULL
)
go



ALTER TABLE Категория_21
	ADD CONSTRAINT XPKКатегория_21 PRIMARY KEY  CLUSTERED (id_Категории ASC)
go



CREATE TABLE Скидка_17
( 
	id_Скидки            integer IDENTITY (1,1) NOT NULL ,
	Размер_скидки        decimal(5,2)  NOT NULL /*check*/
)
go



ALTER TABLE Скидка_17
	ADD CONSTRAINT XPKСкидка_17 PRIMARY KEY  CLUSTERED (id_Скидки ASC)
go



ALTER TABLE Скидка_17
	ADD CONSTRAINT CHECKСкидка_17 CHECK(Размер_скидки>0)
go



CREATE TABLE Сотрудник_11
( 
	id_Сотрудника        integer IDENTITY (1,1) NOT NULL ,
	Фамилия              varchar(20)  NOT NULL ,
	Имя                  varchar(20)  NOT NULL ,
	Отчество             varchar(20)  NULL ,
	Дата_Рождения        date  NOT NULL ,
	Телефон              bigint  NULL ,
	id_Автомойки         integer  NOT NULL ,
	id_Бокса             integer  NULL 
)
go



ALTER TABLE Сотрудник_11
	ADD CONSTRAINT XPKСотрудник_11 PRIMARY KEY  CLUSTERED (id_Сотрудника ASC)
go



ALTER TABLE Сотрудник_11
	ADD CONSTRAINT UNIQ_Сотрудник_11 UNIQUE(Телефон)
go




CREATE TABLE Статус_жалобы_18
( 
	id_Статуса_жалобы    integer IDENTITY (1,1) NOT NULL ,
	Статус               varchar(40)  NOT NULL 
)
go



ALTER TABLE Статус_жалобы_18
	ADD CONSTRAINT XPKСтатус_жалобы_18 PRIMARY KEY  CLUSTERED (id_Статуса_жалобы ASC)
go



CREATE TABLE Страна_производитель_14
( 
	id_Страны            integer IDENTITY (1,1) NOT NULL ,
	Название             varchar(20)  NOT NULL 
)
go



ALTER TABLE Страна_производитель_14
	ADD CONSTRAINT XPKСтрана_производитель_14 PRIMARY KEY  CLUSTERED (id_Страны ASC)
go



ALTER TABLE Страна_производитель_14
	ADD CONSTRAINT UNIQСтрана_производитель_14 UNIQUE(Название)
go



CREATE TABLE Услуга_3
( 
	id_Услуги            integer IDENTITY (1,1) NOT NULL ,
	Название             varchar(20)  NOT NULL ,
)
go



ALTER TABLE Услуга_3
	ADD CONSTRAINT XPKУслуга_3 PRIMARY KEY  CLUSTERED (id_Услуги ASC)
go



ALTER TABLE Услуга_3
	ADD CONSTRAINT UNIQ_Услуга_3 UNIQUE(Название)
go



CREATE TABLE Услуга_Заказ_19
( 
	id_Услуги            integer  NOT NULL ,
	id_Заказа            integer  NOT NULL ,
	id_Услуги_заказ      integer IDENTITY (1,1) NOT NULL 
)
go



ALTER TABLE Услуга_Заказ_19
	ADD CONSTRAINT XPKУслуга_Заказ_19 PRIMARY KEY  CLUSTERED (id_Услуги_заказ ASC)
go



CREATE TABLE Услуга_Косметика_12
(
	id_Автомойки_Услуги  integer NULL , 
	id_Косметики         integer  NOT NULL ,
	id_Услуги_Косметики  integer IDENTITY (1,1) NOT NULL ,
	Количество_на_складе integer  NOT NULL ,
	Стоимость            integer  NULL ,
	Объем                decimal(1,1)  NULL 
)
go



ALTER TABLE Услуга_Косметика_12
	ADD CONSTRAINT XPKУслуга_Косметика_12 PRIMARY KEY  CLUSTERED (id_Услуги_Косметики ASC)
go




ALTER TABLE Автомобиль_9
	ADD CONSTRAINT R_10 FOREIGN KEY (id_Модели) REFERENCES Модель_15(id_Модели)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Автомобиль_9
	ADD CONSTRAINT R_11 FOREIGN KEY (id_Клиента) REFERENCES Клиент_8(id_Клиента)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Автомойка_Услуга_13
	ADD CONSTRAINT R_2 FOREIGN KEY (id_Автомойки) REFERENCES Автомойка_1(id_Автомойки)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Автомойка_Услуга_13
	ADD CONSTRAINT R_7 FOREIGN KEY (id_Услуги) REFERENCES Услуга_3(id_Услуги)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Бокс_2
	ADD CONSTRAINT R_1 FOREIGN KEY (id_Автомойки) REFERENCES Автомойка_1(id_Автомойки)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Жалоба_10
	ADD CONSTRAINT R_17 FOREIGN KEY (id_Заказа) REFERENCES Заказ_5(id_Заказа)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Жалоба_10
	ADD CONSTRAINT R_18 FOREIGN KEY (id_Статуса_жалобы) REFERENCES Статус_жалобы_18(id_Статуса_жалобы)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Заказ_5
	ADD CONSTRAINT R_12 FOREIGN KEY (id_Клиента) REFERENCES Клиент_8(id_Клиента)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Заказ_5
	ADD CONSTRAINT R_14 FOREIGN KEY (id_Акции) REFERENCES Акция_7(id_Акции)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Заказ_5
	ADD CONSTRAINT R_15 FOREIGN KEY (id_Бокса) REFERENCES Бокс_2(id_Бокса)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



ALTER TABLE Заказ_5
	ADD CONSTRAINT R_26 FOREIGN KEY (id_Автомобиля) REFERENCES Автомобиль_9(id_Автомобиля)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



ALTER TABLE Клиент_8
	ADD CONSTRAINT R_16 FOREIGN KEY (id_Скидки) REFERENCES Скидка_17(id_Скидки)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Марка_16
	ADD CONSTRAINT R_8 FOREIGN KEY (id_Страны) REFERENCES Страна_производитель_14(id_Страны)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Модель_15
	ADD CONSTRAINT R_9 FOREIGN KEY (id_Марки) REFERENCES Марка_16(id_Марки)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Модель_15
	ADD CONSTRAINT R_Модель_Категория FOREIGN KEY (id_Категории) REFERENCES Категория_21(id_Категории)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Сотрудник_11
	ADD CONSTRAINT R_19 FOREIGN KEY (id_Автомойки) REFERENCES Автомойка_1(id_Автомойки)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Сотрудник_11
	ADD CONSTRAINT R_22 FOREIGN KEY (id_Бокса) REFERENCES Бокс_2(id_Бокса)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Услуга_Заказ_19
	ADD CONSTRAINT R_23 FOREIGN KEY (id_Услуги) REFERENCES Услуга_3(id_Услуги)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Услуга_Заказ_19
	ADD CONSTRAINT R_25 FOREIGN KEY (id_Заказа) REFERENCES Заказ_5(id_Заказа)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Услуга_Косметика_12
	ADD CONSTRAINT R_3 FOREIGN KEY (id_Автомойки_Услуги) REFERENCES Автомойка_Услуга_13(id_Автомойки_Услуги)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Услуга_Косметика_12
	ADD CONSTRAINT R_5 FOREIGN KEY (id_Косметики) REFERENCES Косметика_4(id_Косметики)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go
