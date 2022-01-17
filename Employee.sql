--Database Yarat.
	CREATE DATABASE SmartHomeDB

--Database istifade et
	USE SmartHomeDB

--Emekdas cedveli yarat.
	CREATE table Employees
	(
	FirstName nvarchar(25),
	LastName nvarchar(30),
	Position nvarchar(10),
	Slary float ( 24 ) 
	 )
--Cedveldeki column olcusunu deyis.
 
	ALTER TABLE Employees 
	ALTER COLUMN Position nvarchar(30)

--Cedveldeki column adini duzelt.
	EXEC sp_rename 'Employees.Slary', 'Salary'

--Cedvele datalari elave et
	Insert Into Employees(FirstName,LastName,Position,Slary)
	values ('Ruslan','Muradov','Direktor',1500),
		('Tural','Şəfiyev','Müavin',1200),
		('Səxavət','Əliyev','Baş məsləhətçi',855),
		('Tural','Seyidov','Baş məsləhətçi',855),
		('Vüsal','Əsgərov','Böyük məsləhətçi',845),
		('Seymur','Quliyev','Aparıcı məsləhətçi',835),
		('Elmir','Quliyev','Aparıcı məsləhətçi',835),
		('Nəcəf','Məmmədov','Baş mütəxəsis',550),
		('Bəhruz','Novruzov','Baş mütəxəsis',550),
		('Sadiq','Əliyev','Ştatdan kənar',280),
		('Hüseyn','Məmmədov','Ştatdan kənar',280)

--0.Cedveldeki butun emakdaslari gor.
	Select * from Employees

--1.Ortalama maaşı çıxarmalısınız
	Select AVG(Salary) 'Salary Avarage' from Employees

--2.Ortalama maaşdan yuxarı maaş alan işçilərin ad soyadını və maaşını yazdırmalısız
	
	Select (FirstName+' '+LastName),Salary from Employees
	where Salary>(Select AVG(Salary)from Employees)

--3.Max, Min maaşları çıxarmalı
	
	Select Max(Salary)'Maximum Salary',Min(Salary) 'Minimum Salary' from Employees



	



