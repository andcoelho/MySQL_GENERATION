create database voo321;
use voo321;

create table aviao(
	id_aviao bigint(11) not null, 
    modelo varchar(50) not null,
    primary key (id_aviao)    
) engine = InnoDB;

desc aviao;

show tables;

create table tripulantes(
	id_tripulacao int(11) not null,
    nome varchar(50) not null,
    genero char(1) not null check (genero in ('F', 'M', 'N')), 
     id_aviao bigint(11) not null,
    foreign key (id_aviao) references aviao(id_aviao),
    primary key (id_tripulacao)
)engine = InnoDB;

desc tripulantes;
show tables;

insert into aviao values (1, 'zoom'), (2, 'boing'),(3, 'excelcior');

INSERT INTO tripulantes VALUES (16,'James Kirk','M',1);
INSERT INTO tripulantes VALUES (86, 'Catherine Janeway', 'F', 2);
INSERT INTO tripulantes VALUES (87, 'Uhura', 'F', 1);
INSERT INTO tripulantes VALUES (48, 'Ikaru Sulu', 'M', 3);
INSERT INTO tripulantes VALUES (52, 'Tuvok', 'M', 2);
INSERT INTO tripulantes VALUES (1,'Jhony','M',1);
INSERT INTO tripulantes VALUES (20, 'Sasha', 'N', 2);
INSERT INTO tripulantes VALUES (30, 'Uhura', 'F', 1);
INSERT INTO tripulantes VALUES (66, 'Price', 'N', 3);
INSERT INTO tripulantes VALUES (55, 'Taira', 'N', 2);


select * from tripulantes;

