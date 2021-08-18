create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
	id bigint(10) auto_increment,
    nome varchar(20) not null,
    preco decimal(10,2),
    cor varchar(20) not null,
    estoque bigint(10),
    primary key (id)    
);

insert into tb_produtos(nome, preco, cor, estoque) values ("colar", 34.99, "prata", "10");
insert into tb_produtos(nome, preco, cor, estoque) values ("anel", 44.99, "prata", "10");
insert into tb_produtos(nome, preco, cor, estoque) values ("pulseira", 100.99, "prata", "10");
insert into tb_produtos(nome, preco, cor, estoque) values ("brinco", 34.99, "prata", "10");
insert into tb_produtos(nome, preco, cor, estoque) values ("alianca", 599.99, "prata", "10");
insert into tb_produtos(nome, preco, cor, estoque) values ("pingente", 19.99, "prata", "10");
insert into tb_produtos(nome, preco, cor, estoque) values ("bracelete", 340.99, "prata", "10");
insert into tb_produtos(nome, preco, cor, estoque) values ("relogio", 800.99, "prata", "10");

select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;

update tb_produtos set preco = 40.00 where id = 1;