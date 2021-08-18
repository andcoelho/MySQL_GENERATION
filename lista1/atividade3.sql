create database db_escola1;

use db_escola1;

create table tb_estudantes(
	id bigint(10) auto_increment,
    nome varchar(20) not null,
    serie varchar(20) not null,
    idade bigint(20) not null,
    nota bigint(10),
    primary key (id)    
);

insert into tb_estudantes(nome, serie, idade, nota) values ("Carlos", "Sétima série", "12", "10");
insert into tb_estudantes(nome, serie, idade, nota) values ("Monica", "Quarta série", "9", "8");
insert into tb_estudantes(nome, serie, idade, nota) values ("Felipe", "Sétima série", "12", "5");
insert into tb_estudantes(nome, serie, idade, nota) values ("Marcia", "Segunda série", "7", "10");
insert into tb_estudantes(nome, serie, idade, nota) values ("Claudia", "Sétima série", "12", "4");
insert into tb_estudantes(nome, serie, idade, nota) values ("Marcos", "Sétima série", "12", "9");
insert into tb_estudantes(nome, serie, idade, nota) values ("Luiz", "Sétima série", "12", "6");
insert into tb_estudantes(nome, serie, idade, nota) values ("Vinicius", "Sétima série", "12", "10");


select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;


update tb_estudantes set nota = 9 where id = 1;