create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id_categoria bigint(5) auto_increment,
    tamanho varchar(20) not null,
    tipo varchar(20) not null,
    primary key(id_categoria)
);

create table tb_pizza(
	id_pizza bigint(5) auto_increment,
    nome varchar(50) not null,
    preco bigint(5) not null,
    borda varchar(20) not null,
    categoria_id bigint(5),
    primary key(id_pizza),
    foreign key(categoria_id) references tb_categoria(id_categoria) 
);

select * from tb_categoria;
select * from tb_pizza;

insert into tb_categoria(tamanho, tipo) values ("Pequena", "Salgada");
insert into tb_categoria(tamanho, tipo) values ("Media", "Salgada");
insert into tb_categoria(tamanho, tipo) values ("Grande", "Salgada");
insert into tb_categoria(tamanho, tipo) values ("Pequena", "Doce");
insert into tb_categoria(tamanho, tipo) values ("Media", "Doce");
insert into tb_categoria(tamanho, tipo) values ("Grande", "Doce");

insert into tb_pizza(nome, preco, borda, categoria_id) values ("margherita", 30, "normal", 2);
insert into tb_pizza(nome, preco, borda, categoria_id) values ("brocolis", 45, "cheddar", 3);
insert into tb_pizza(nome, preco, borda, categoria_id) values ("4_queijos", 50, "catupiry", 2);
insert into tb_pizza(nome, preco, borda, categoria_id) values ("mussarela", 28, "normal", 1);
insert into tb_pizza(nome, preco, borda, categoria_id) values ("brigadeiro", 48, "normal", 5);
insert into tb_pizza(nome, preco, borda, categoria_id) values ("chocolate", 40, "normal", 5);
insert into tb_pizza(nome, preco, borda, categoria_id) values ("chocolate_branco", 34, "normal", 4);
insert into tb_pizza(nome, preco, borda, categoria_id) values ("prestigio", 65, "normal", 6);

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco > 29 and preco < 60;
select * from tb_pizza where nome like "%c%";


select * from tb_pizza 
	inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id_categoria;
    
    