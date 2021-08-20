use db_estoque;
select * from tb_produtos
	inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id;
    
select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
	inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id;

select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id
where tb_marcas.nome = "Nike";

select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id
where tb_marcas.nome = "Nike"
and tb_produtos.preco <50;
    
