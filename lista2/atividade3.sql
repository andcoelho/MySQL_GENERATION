create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id_categoria bigint(5) auto_increment,
    validade varchar(20),
    primary key(id_categoria)
);

create table tb_produtos(
	id_produto bigint(5) auto_increment,
    nome varchar(50) not null,
    valor bigint(5),
    peso_mg bigint(5),    
    categoria_id bigint(5),    
    primary key(id_produto),
    foreign key(categoria_id) references tb_categoria(id_categoria)    
);

insert into tb_categoria(validade) value("Ok");
insert into tb_categoria(validade) value("Vencido");

select * from tb_categoria;
select * from tb_produtos;

insert into tb_produtos(nome, valor, peso_mg, categoria_id)
	values ("Paracetamol", 5, 200, 1);
insert into tb_produtos(nome, valor, peso_mg, categoria_id)
	values ("Paracetamol", 5, 200, 2);
insert into tb_produtos(nome, valor, peso_mg, categoria_id)
	values ("Dipirona", 2, 100, 1);
insert into tb_produtos(nome, valor, peso_mg, categoria_id)
	values ("Dipirona", 2, 100, 2);
insert into tb_produtos(nome, valor, peso_mg, categoria_id)
	values ("Omeprazol", 40, 500, 1);
insert into tb_produtos(nome, valor, peso_mg, categoria_id)
	values ("Omeprazol", 40, 500, 2);
insert into tb_produtos(nome, valor, peso_mg, categoria_id)
	values ("Protetor Solar", 120, 2000, 1);
insert into tb_produtos(nome, valor, peso_mg, categoria_id)
	values ("Protetor Solar", 120, 2000, 2);
    
select * from tb_produtos where valor > 50;
select * from tb_produtos where valor > 3 and valor < 60;

select * from tb_produtos
	inner join tb_categoria on tb_produtos.categoria_id = tb_categoria.id_categoria;
    
select * from tb_produtos where nome like "%d%";

