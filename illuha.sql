create database bdATS;
use bdATS;
CREATE TABLE car (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	GovNumber varchar(10) NOT NULL,#гос номер машины
    OwnerName varchar(40) NOT NULL,#ФИО владельца
    OwnerPhoneNumber BIGINT UNSIGNED NOT NULL,#мобильный номер владельца
	Brand varchar(18) NOT NULL,#марка
    Power INT UNSIGNED NOT NULL,#лошадиные силы
    dateOfIssue Date,#дата выпуска
    color varchar(18) NOT NULL,#цвет машины
	PRIMARY KEY (id)
);
CREATE TABLE master (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	IndNumber varchar(20) NOT NULL,#табельный номер мастера
    MasterName varchar(40) NOT NULL,#ФИО мастера
	class INT UNSIGNED NOT NULL,#разряд
	PRIMARY KEY (id)
) ;

CREATE TABLE orders (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,#id заказа
    IndNumber INT UNSIGNED NOT NULL,#id мастера
    CarIndex INT UNSIGNED NOT NULL,#id машины
    Adress varchar(30) NOT NULL,#адрес мастерской
    RepairType varchar(18) NOT NULL,#вид ремонта
    DetailName varchar(18),#название детали
	DetailPrice INT UNSIGNED ,#цена детали
    RepairCost INT UNSIGNED NOT NULL,#цена ремонта(услуги)
    OrderDate Date NOT NULL,#дата заказа
    ApproxRepDate Date NOT NULL,#расчетная дата завершения работы
    ActualRepDate Date NOT NULL,#фактическая дата завершения работы
	PRIMARY KEY (id)
) ;

insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
	values('C009CT98', "Романов Дмитрий Генадьевич", 89526604219, 'Toyota', 114,"1998-10-23","Red");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
	values('T056YM100', "Леонтьев Валерий Игоревич", 89529802317, 'Mazda', 130,"2008-10-24","Silver");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
	values('E219KB98', "Шализин Павел Дмитриевич", 89526604219, 'Nissan', 120,"2008-10-26","White");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
	values('А139ВВ98', "Леонтьев Игорь Михайлович", 89743678965, 'Opel', 133,"1999-11-01 ","Green");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
	values('Р748КА98', "Валуев Евгений Андреевич", 89464578237, 'Toyota', 280,"2009-11-02 ","Black");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
	values('А777АА777', "Радеонов Денис Евгеньевич", 86434325464, 'BMW', 340,"2011-11-02 ","Silver");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
	values('В734ВО', "Тарасов Валерий Альбертович", 89544633443, 'Mercedes-Benz', 320,"2012-11-02 ","Black");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
	values('О524АЕ98', "Колотушкина Анастасия Владимировна", 88003543567, 'Volkswagen', 107,"2006-11-02 ","Pink");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
	values('Т838АТ198', "Суботин Никита Дмитриевич", 89097652314, 'Subaru', 180,"2005-11-06 ","Blue");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
	values('А743ЕЕ98', "Денисенка Марина Олеговна", 893446758734, 'BMW', 189,"1996-11-06 ","Red");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('А894НО777', "Миронова Алиса Дмитриевна", 89367857677, 'Skoda', 106,"2000-03-12 ","Silver");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('В556ВВ198', "Алексеев Даниил Иванович", 83957689483, 'Renault', 86,"2007-06-25 ","Whyte");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('А666АА777', "Некрасова Алина Андреевна", 87564568378, 'Ford', 113,"2006-07-14 ","Blue");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('В511ВВ198', "Воронин Константин Николаевич", 87487773893, 'Lada', 46,"2007-06-25 ","Purple");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('А999АА777', "Медведев Денис Викторович", 864873659888, 'Lamborghini', 700,"2013-01-01 ","Red");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('А999АА777', "Соколова Анастасия Никитина", 87587889803, 'Porshe', 539,"2016-04-21 ","Black");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('С837СО198', "Ткачевский Михаил Андреевич", 89375624234, 'Mazda', 539,"2009-11-11 ","Red");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('К123СС198', "Суботин Дмитрий Анатоьевич", 88735556748, 'Mitsubishi', 229,"2003-04-17 ","Silver");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('В519ВО198', "Ларин Илья Дмитриевич", 88005553612, 'Nissan', 107,"2007-07-09 ","Black");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('Н234НН198', "Карасева Татьяна Николаевна", 8999345876, 'Jaguar', 330,"2015-01-28 ","Whyte");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('Е938АР198', "Городецкий Глеб Романович", 87748395246, 'Land Rover', 197,"2016-06-25 ","Black");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('А228АЕ98', "Махровский Илья Евгеньевич", 874825647766, 'Toyota', 223,"1988-03-18 ","Black");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('Е938АР198', "Краснова ", 88364668273, 'Toyota', 133,"1994-12-15 ","Yellow");
insert into car (GovNumber, OwnerName, OwnerPhoneNumber, Brand,Power,dateOfIssue,color)
values('А754ОО98', "Корниенко Дмитрий Николаевич", 89566678341, 'Nissan', 268,"2012-09-23 ","Silver");
    
insert into master (IndNumber,MasterName,class)
	values("FFX235CMD2","Совков Олег Николаевич",4);
insert into master (IndNumber,MasterName,class)
	values("fBknBiye","Краснов Денис Романович",3);
insert into master (IndNumber,MasterName,class)
	values("ZCkSaZk7","Лихорадов Кирилл Антонович",3);
insert into master (IndNumber,MasterName,class)
	values("HWLJPXaZ","Краснов Антон Михайлович",3);
insert into master (IndNumber,MasterName,class)
	values("9b84qSln","Медведев Андрей Павлович",2);
insert into master (IndNumber,MasterName,class)
	values("qGvHzO6N","Попов Константин Вадимович",2);
insert into master (IndNumber,MasterName,class)
	values("UPwJdXJb","Лихорадов Денис Константинович",3);
insert into master (IndNumber,MasterName,class)
	values("6Kj4ImlV","Кабанов Никита Двитриевич",3);
insert into master (IndNumber,MasterName,class)
	values("MrPs1IYg","Енисенко Арсений Романович",2);
insert into master (IndNumber,MasterName,class)
	values("kCpx5su0","Ульянов Дмитрий Андреевич",3);
insert into master (IndNumber,MasterName,class)
	values("rpFjpqDJ","Лебедев Денис Антонович",3);

insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(2,14,"1450 Ramsey Junction","средний","корбка передач",31279,77882,"2013-01-05 ","2013-01-05 ","2013-01-04 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(2,0,"5 Colorado Place","текущий","стекло",42003,74222,"2007-01-04 ","2007-02-04 ","2007-02-01 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(4,13,"1450 Ramsey Junction","текущий","корбка передач",28336,89288,"2016-07-01 ","2016-08-01 ","2016-07-01 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(4,3,"1 Dorton Avenue","средний","крыло",30403,81800,"2016-07-01 ","2016-08-01 ","2016-08-06 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(5,23,"5 Colorado Place","текущий","крыло",31279,74222,"2007-01-04 ","2007-02-04 ","2007-02-05 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(9,1,"1450 Ramsey Junction","средний","корбка передач",30554,60588,"2015-02-02 ","2015-02-02 ","2015-02-06 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(7,17,"4672 Maryland Hill","средний","колесо",30294,89288,"2007-03-03 ","2007-04-03 ","2007-03-01 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(5,0,"943 Mayfield Avenue","текущий","корбка передач",16116,26588,"2012-06-03 ","2012-06-03 ","2012-06-03 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(3,2,"1450 Ramsey Junction","текущий","колесо",24474,79244,"2007-02-02 ","2007-03-02 ","2007-02-03 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(10,11,"4672 Maryland Hill","средний","крыло",9544,74222,"2008-10-04 ","2008-11-04 ","2008-11-01 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(5,13,"50 Hayes Alley","текущий","двигатель",36002,40812,"2002-06-04 ","2002-07-04 ","2002-06-02 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(5,19,"50 Hayes Alley","средний","двигатель",24362,76398,"2006-11-02 ","2006-11-03 ","2006-11-03 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(3,20,"5 Colorado Place","средний","колесо",30311,82472,"2018-06-03 ","2018-06-03 ","2018-06-05 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(7,6,"1450 Ramsey Junction","текущий","крыло",37111,50956,"2009-06-05 ","2009-07-05 ","2009-07-06 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(2,2,"7 Mallard Center","средний","стекло",30554,76398,"2005-10-04 ","2005-11-04 ","2005-10-04 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(0,22,"1450 Ramsey Junction","средний","колесо",24474,1588,"2007-02-02 ","2007-03-02 ","2007-02-05 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(1,9,"1 Dorton Avenue","средний","шасси",23571,56672,"2010-03-03 ","2010-03-03 ","2010-03-06 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(4,11,"50 Hayes Alley","текущий","двигатель",30554,81800,"2006-11-02 ","2006-11-02 ","2006-11-04 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(2,14,"1 Dorton Avenue","текущий","двигатель",38199,82302,"2013-01-05 ","2013-01-05 ","2013-01-02 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(7,20,"1 Dorton Avenue","средний","шасси",28336,59906,"2010-03-03 ","2010-03-03 ","2010-03-04 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(10,6,"50 Hayes Alley","текущий","корбка передач",23686,91176,"2007-01-04 ","2007-02-04 ","2007-02-00 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(9,2,"7 Mallard Center","средний","двигатель",32480,46024,"2014-03-03 ","2014-04-03 ","2014-04-06 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(3,20,"1 Dorton Avenue","средний","крыло",30403,6888,"2018-07-04 ","2018-08-04 ","2018-08-06 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(6,21,"50 Hayes Alley","средний","колесо",3121,76398,"2008-08-06 ","2008-09-06 ","2008-08-01 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(3,13,"5 Colorado Place","средний","крыша",12532,89288,"2014-04-06 ","2014-05-06 ","2014-05-02 ");
insert into orders (IndNumber,CarIndex,Adress,RepairType,DetailName,DetailPrice,RepairCost,OrderDate,ApproxRepDate,ActualRepDate)
	values(8,6,"5 Colorado Place","средний","крыло",23686,40812,"2001-08-01 ","2001-09-01 ","2001-09-04 ");

