CREATE TABLE ����������_9
( 
	id_����������		 integer IDENTITY (1,1) NOT NULL ,
	������               integer  NULL ,
	id_������            integer  NULL ,
	id_�������           integer  NULL ,
	��������             varchar(20)  NULL 
)
go



ALTER TABLE ����������_9
	ADD CONSTRAINT XPK����������_9 PRIMARY KEY  CLUSTERED (id_���������� ASC)
go




CREATE TABLE ���������_1
( 
	id_���������         integer IDENTITY (1,1) NOT NULL ,
	��������             varchar(20)  NOT NULL ,
	�����                varchar(40)  NOT NULL 
)
go



ALTER TABLE ���������_1
	ADD CONSTRAINT XPK���������_1 PRIMARY KEY  CLUSTERED (id_��������� ASC)
go



CREATE TABLE ���������_������_13
( 
	id_���������         integer  NOT NULL ,
	id_������            integer  NOT NULL ,
	id_���������_������  integer IDENTITY (1,1) NOT NULL, 
	���������            integer  NULL 
)
go



ALTER TABLE ���������_������_13
	ADD CONSTRAINT XPK���������_������_13 PRIMARY KEY  CLUSTERED (id_���������_������ ASC)
go



CREATE TABLE �����_7
( 
	id_�����             integer IDENTITY (1,1) NOT NULL ,
	��������_�����       varchar(20)  NULL ,
	������_������        decimal(5,2)  NOT NULL 
)
go



ALTER TABLE �����_7
	ADD CONSTRAINT XPK�����_7 PRIMARY KEY  CLUSTERED (id_����� ASC)
go



ALTER TABLE �����_7
	ADD CONSTRAINT UNIQ�����_7 UNIQUE(��������_�����)
go



CREATE TABLE ����_2
( 
	id_�����             integer IDENTITY (1,1) NOT NULL ,
	��������_�����       varchar(20)  NULL ,
	id_���������         integer  NULL 
)
go



ALTER TABLE ����_2
	ADD CONSTRAINT XPK����_2 PRIMARY KEY  CLUSTERED (id_����� ASC)
go



CREATE TABLE ������_10
( 
	id_������            integer  NOT NULL ,
	����_������          datetime  NOT NULL ,
	����������_������    varchar(20)  NULL ,
	id_�������_������    integer  NULL 
)
go



ALTER TABLE ������_10
	ADD CONSTRAINT XPK������_10 PRIMARY KEY  CLUSTERED (id_������ ASC)
go



CREATE TABLE �����_5
( 
	id_������            integer IDENTITY (1,1) NOT NULL ,
	����_������          date  NOT NULL ,
	�����_������_�����    time  NULL ,
	�����_���������_����� time  NULL , /* CHECK*/
	id_�������           integer  NULL ,
	id_�����             integer  NULL ,
	id_�����             integer  NULL ,
	id_����������		 integer NOT NULL,
	���������            decimal(6,2)  NULL 
)
go



ALTER TABLE �����_5
	ADD CONSTRAINT XPK�����_5 PRIMARY KEY  CLUSTERED (id_������ ASC)
go



ALTER TABLE �����_5
	ADD CONSTRAINT CHECK�����_5 CHECK(�����_���������_�����>=�����_������_�����)
go




CREATE TABLE ������_8
( 
	id_�������           integer IDENTITY (1,1) NOT NULL ,
	�������              varchar(20)  NOT NULL ,
	���                  varchar(20)  NOT NULL ,
	��������             varchar(20)  NULL ,
	�����_��������       bigint  NOT NULL ,
	id_������            integer  NULL 
)
go



ALTER TABLE ������_8
	ADD CONSTRAINT XPK������_8 PRIMARY KEY  CLUSTERED (id_������� ASC)
go



ALTER TABLE ������_8
	ADD CONSTRAINT UNIQ_������_8 UNIQUE(�����_��������)
go



CREATE TABLE ���������_4
( 
	id_���������         integer IDENTITY (1,1) NOT NULL ,
	��������             varchar(30) NOT NULL 
)
go



ALTER TABLE ���������_4
	ADD CONSTRAINT XPK���������_4 PRIMARY KEY  CLUSTERED (id_��������� ASC)
go



CREATE TABLE �����_16
( 
	id_�����             integer IDENTITY (1,1) NOT NULL ,
	��������             varchar(20) NOT NULL ,
	id_������            integer  NULL 
)
go



ALTER TABLE �����_16
	ADD CONSTRAINT XPK�����_16 PRIMARY KEY  CLUSTERED (id_����� ASC)
go



CREATE TABLE ������_15
( 
	id_������            integer IDENTITY (1,1) NOT NULL ,
	��������             char(18) NOT NULL ,
	id_�����             integer  NULL ,
	id_���������         integer  NULL 
)
go



ALTER TABLE ������_15
	ADD CONSTRAINT XPK������_15 PRIMARY KEY  CLUSTERED (id_������ ASC)
go



CREATE TABLE ���������_21
(
	id_���������         integer IDENTITY (1,1) NOT NULL ,
	���������			 varchar(2) NOT NULL
)
go



ALTER TABLE ���������_21
	ADD CONSTRAINT XPK���������_21 PRIMARY KEY  CLUSTERED (id_��������� ASC)
go



CREATE TABLE ������_17
( 
	id_������            integer IDENTITY (1,1) NOT NULL ,
	������_������        decimal(5,2)  NOT NULL /*check*/
)
go



ALTER TABLE ������_17
	ADD CONSTRAINT XPK������_17 PRIMARY KEY  CLUSTERED (id_������ ASC)
go



ALTER TABLE ������_17
	ADD CONSTRAINT CHECK������_17 CHECK(������_������>0)
go



CREATE TABLE ���������_11
( 
	id_����������        integer IDENTITY (1,1) NOT NULL ,
	�������              varchar(20)  NOT NULL ,
	���                  varchar(20)  NOT NULL ,
	��������             varchar(20)  NULL ,
	����_��������        date  NOT NULL ,
	�������              bigint  NULL ,
	id_���������         integer  NOT NULL ,
	id_�����             integer  NULL 
)
go



ALTER TABLE ���������_11
	ADD CONSTRAINT XPK���������_11 PRIMARY KEY  CLUSTERED (id_���������� ASC)
go



ALTER TABLE ���������_11
	ADD CONSTRAINT UNIQ_���������_11 UNIQUE(�������)
go




CREATE TABLE ������_������_18
( 
	id_�������_������    integer IDENTITY (1,1) NOT NULL ,
	������               varchar(40)  NOT NULL 
)
go



ALTER TABLE ������_������_18
	ADD CONSTRAINT XPK������_������_18 PRIMARY KEY  CLUSTERED (id_�������_������ ASC)
go



CREATE TABLE ������_�������������_14
( 
	id_������            integer IDENTITY (1,1) NOT NULL ,
	��������             varchar(20)  NOT NULL 
)
go



ALTER TABLE ������_�������������_14
	ADD CONSTRAINT XPK������_�������������_14 PRIMARY KEY  CLUSTERED (id_������ ASC)
go



ALTER TABLE ������_�������������_14
	ADD CONSTRAINT UNIQ������_�������������_14 UNIQUE(��������)
go



CREATE TABLE ������_3
( 
	id_������            integer IDENTITY (1,1) NOT NULL ,
	��������             varchar(20)  NOT NULL ,
)
go



ALTER TABLE ������_3
	ADD CONSTRAINT XPK������_3 PRIMARY KEY  CLUSTERED (id_������ ASC)
go



ALTER TABLE ������_3
	ADD CONSTRAINT UNIQ_������_3 UNIQUE(��������)
go



CREATE TABLE ������_�����_19
( 
	id_������            integer  NOT NULL ,
	id_������            integer  NOT NULL ,
	id_������_�����      integer IDENTITY (1,1) NOT NULL 
)
go



ALTER TABLE ������_�����_19
	ADD CONSTRAINT XPK������_�����_19 PRIMARY KEY  CLUSTERED (id_������_����� ASC)
go



CREATE TABLE ������_���������_12
(
	id_���������_������  integer NULL , 
	id_���������         integer  NOT NULL ,
	id_������_���������  integer IDENTITY (1,1) NOT NULL ,
	����������_��_������ integer  NOT NULL ,
	���������            integer  NULL ,
	�����                decimal(1,1)  NULL 
)
go



ALTER TABLE ������_���������_12
	ADD CONSTRAINT XPK������_���������_12 PRIMARY KEY  CLUSTERED (id_������_��������� ASC)
go




ALTER TABLE ����������_9
	ADD CONSTRAINT R_10 FOREIGN KEY (id_������) REFERENCES ������_15(id_������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ����������_9
	ADD CONSTRAINT R_11 FOREIGN KEY (id_�������) REFERENCES ������_8(id_�������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ���������_������_13
	ADD CONSTRAINT R_2 FOREIGN KEY (id_���������) REFERENCES ���������_1(id_���������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ���������_������_13
	ADD CONSTRAINT R_7 FOREIGN KEY (id_������) REFERENCES ������_3(id_������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ����_2
	ADD CONSTRAINT R_1 FOREIGN KEY (id_���������) REFERENCES ���������_1(id_���������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ������_10
	ADD CONSTRAINT R_17 FOREIGN KEY (id_������) REFERENCES �����_5(id_������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ������_10
	ADD CONSTRAINT R_18 FOREIGN KEY (id_�������_������) REFERENCES ������_������_18(id_�������_������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE �����_5
	ADD CONSTRAINT R_12 FOREIGN KEY (id_�������) REFERENCES ������_8(id_�������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE �����_5
	ADD CONSTRAINT R_14 FOREIGN KEY (id_�����) REFERENCES �����_7(id_�����)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE �����_5
	ADD CONSTRAINT R_15 FOREIGN KEY (id_�����) REFERENCES ����_2(id_�����)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



ALTER TABLE �����_5
	ADD CONSTRAINT R_26 FOREIGN KEY (id_����������) REFERENCES ����������_9(id_����������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go



ALTER TABLE ������_8
	ADD CONSTRAINT R_16 FOREIGN KEY (id_������) REFERENCES ������_17(id_������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE �����_16
	ADD CONSTRAINT R_8 FOREIGN KEY (id_������) REFERENCES ������_�������������_14(id_������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ������_15
	ADD CONSTRAINT R_9 FOREIGN KEY (id_�����) REFERENCES �����_16(id_�����)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ������_15
	ADD CONSTRAINT R_������_��������� FOREIGN KEY (id_���������) REFERENCES ���������_21(id_���������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ���������_11
	ADD CONSTRAINT R_19 FOREIGN KEY (id_���������) REFERENCES ���������_1(id_���������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ���������_11
	ADD CONSTRAINT R_22 FOREIGN KEY (id_�����) REFERENCES ����_2(id_�����)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ������_�����_19
	ADD CONSTRAINT R_23 FOREIGN KEY (id_������) REFERENCES ������_3(id_������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ������_�����_19
	ADD CONSTRAINT R_25 FOREIGN KEY (id_������) REFERENCES �����_5(id_������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ������_���������_12
	ADD CONSTRAINT R_3 FOREIGN KEY (id_���������_������) REFERENCES ���������_������_13(id_���������_������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE ������_���������_12
	ADD CONSTRAINT R_5 FOREIGN KEY (id_���������) REFERENCES ���������_4(id_���������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go
