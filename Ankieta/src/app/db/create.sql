create database Ankieta;

use Ankieta;

create table loginy(
    email varchar(100) primary key,
    imie varchar(50),
    nazwisko varchar(50),
    gurpa varchar(50),
    pass varchar(20)
);

create table zakresy(
	zakres varchar(10) primary key,
    opis_zakresu varchar(50)
);

create table pytania(
	idp integer primary key,
    zakres varchar(10),
    pytanie varchar(100),
    odp1 varchar(100),
    odp2 varchar(100),
    odp3 varchar(100),
    odp4 varchar(100),
    odppopr integer,
    foreign key (zakres) references zakresy(zakres)
);

create table testy(
	idt integer,
    kursant varchar(100),
    foreign key (kursant) references loginy(email)
);

create table odpowiedzi(
	ido integer primary key,
	pytanie integer,
    odpowiedz integer,
    foreign key (pytanie) references pytania(idp)
);

drop table odpowiedzi;
drop table testy;
drop table kursanci;