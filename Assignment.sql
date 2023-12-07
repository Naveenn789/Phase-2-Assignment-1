create database OurExcersiceDb

on primary(name='OurEccercise_Db' ,Filename='C:\Mphasis\phase-2\Day-23\Assignment\OurExercises.mdf',
size=24MB,Maxsize=48MB, filegrowth=4MB)
log on (name= 'OurExerciseDb1_log', Filename='C:\Mphasis\phase-2\Day-23\Assignment\OurExercises.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExcersiceDb

drop table product
create table product
(PId int primary key ,
PName nvarchar(50) not null,
PPrice int not null check (PPrice>=50 and PPrice<=100000 ), 
PCompany nvarchar(50) not null,
PQuantity int not null default 1
)
insert into product values(50,'S23',30000,'Samsung',1)
insert into product values(51,'S12',25000,'Samsung',1)
insert into product values(52,'redmi 10',12000,'Redmi',1)
insert into product values(53,'Iphone',19000,'Apple',1)
insert into product values(54,'Htc 1',6399,'HTC',1)
select * from product