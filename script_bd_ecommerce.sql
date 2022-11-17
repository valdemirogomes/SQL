create database db_ecommerce;

use db_ecommerce;

create table tb_produto (
	id_tbproduto int auto_increment primary key,
	nome_produto varchar(50),
    	descricao varchar(50),
    	preco double
);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 199);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 299);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 399);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 499);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 599);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 699);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 799);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 899);

select * from tb_produto;

select * from tb_produto where preco > 500;

select * from tb_produto where preco < 500;

update tb_produto
set descricao = "Tênis"
where id_tbproduto = 4;
