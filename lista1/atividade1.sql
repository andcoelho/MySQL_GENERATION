create database db_rh;

use db_rh;

create table tb_funcionaries(
	id bigint(10) auto_increment,
    nome varchar(20) not null,
    idade bigint(10),
    salario decimal(10,2),
    turno varchar(20) not null,
    primary key(id)
);

select * from tb_funcionaries;

insert into tb_funcionaries(nome, idade, salario, turno) values ("Joao", 34, "1000.00", "diurno");
insert into tb_funcionaries(nome, idade, salario, turno) values ("Felipe", 22, "1500.00", "diurno");
insert into tb_funcionaries(nome, idade, salario, turno) values ("Clarice", 48, "2000.00", "noturno");
insert into tb_funcionaries(nome, idade, salario, turno) values ("Fernanda", 27, "2400.00", "diurno");
insert into tb_funcionaries(nome, idade, salario, turno) values ("Marcos", 30, "3000.00", "noturno");

select * from tb_funcionaries where salario > 2000.00;
select * from tb_funcionaries where salario < 2000.00;

update tb_funcionaries set salario = 2000.00 where id = 1;




