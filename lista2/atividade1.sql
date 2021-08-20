create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
	id_classe bigint(5) auto_increment,
    tipo varchar(30) not null,
    nivel varchar(30) not null,
    primary key(id_classe)
);

create table tb_personagem(
	id_personagem bigint(5) auto_increment,
    poder_ataque bigint(5) not null,
    poder_defesa bigint(5) not null,
    forca bigint(5) not null,
    vidas bigint(5) not null,
    classe_id bigint(5) not null,
    primary key(id_personagem),
    foreign key(classe_id) references tb_classes(id_classe)
);

insert into tb_classes(tipo, nivel) values ("Vanguarda", "Aprendiz");
insert into tb_classes(tipo, nivel) values ("Cavaleiro", "Iniciante");
insert into tb_classes(tipo, nivel) values ("Guerreiro", "Intermediário"); 
insert into tb_classes(tipo, nivel) values ("Arqueiro", "Avançado");
insert into tb_classes(tipo, nivel) values ("Mago", "Senior");

select * from tb_classes;

insert into tb_personagem(poder_ataque, poder_defesa, forca, vidas, classe_id)
	values (1300, 1800, 20, 5, 1);
insert into tb_personagem(poder_ataque, poder_defesa, forca, vidas, classe_id)
	values (1500, 1800, 20, 5, 1);
insert into tb_personagem(poder_ataque, poder_defesa, forca, vidas, classe_id)
	values (1500, 1800, 20, 5, 2);
insert into tb_personagem(poder_ataque, poder_defesa, forca, vidas, classe_id)
	values (1800, 2800, 20, 5, 2);
insert into tb_personagem(poder_ataque, poder_defesa, forca, vidas, classe_id)
	values (2300, 1800, 20, 5, 3);
insert into tb_personagem(poder_ataque, poder_defesa, forca, vidas, classe_id)
	values (2500, 3000, 20, 5, 3);
insert into tb_personagem(poder_ataque, poder_defesa, forca, vidas, classe_id)
	values (3000, 3000, 20, 5, 4);
insert into tb_personagem(poder_ataque, poder_defesa, forca, vidas, classe_id)
	values (4000, 4000, 20, 5, 5);
    
select * from tb_personagem where poder_ataque > 2000;

select * from tb_personagem where poder_defesa > 1000 and poder_defesa < 2000;

select tipo from tb_classes where tipo like "%c%";

select * from tb_personagem
	inner join tb_classes on tb_personagem.classe_id = id_classe;
    
