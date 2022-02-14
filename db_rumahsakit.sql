drop database if exists rumahsakit; 
create database rumahsakit;
use rumahsakit;

create table user(
	id int primary key auto_increment,
	username varchar(64) not null,
    password varchar(64) not null
);

create table patient(
	id int primary key auto_increment,
	nik varchar(32) not null,
    nama varchar(64) not null,
    umur varchar(4) not null,
    gender varchar(16) not null,
	penyakit varchar(512)
);

insert into user values (null,'admin','admin');
insert into user values (null,'anita','anita');
insert into user values (null,'leo','leo');
insert into user values (null,'hotma','hotma');

insert into patient values (null,'1212012606010000','Jhon Sirait','20','laki-laki','-');
insert into patient values (null,'1212012606010001','Desmon Pardede','19','laki-laki','Diabetes');
insert into patient values (null,'1212012606010002','Mikha Napitupulu','20','perempuan','Diare');