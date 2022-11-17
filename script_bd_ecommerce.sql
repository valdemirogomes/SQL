create database db_ecommerce;

use db_ecommerce;

create table tb_produto (
	id_tbproduto int auto_increment primary key,
    nome_produto varchar(50),
    descricao varchar(50),
    preco double
);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 199.99);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 299.99);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 399.99);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 499.99);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 599.99);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 699.99);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 799.99);

insert into tb_produto (nome_produto, descricao, preco) values
("Tênis Adidas Coreracer Masculino - Preto+Branco", "Tênis masulino", 899.99);

select * from tb_produto;

select * from tb_produto where preco > 500;

select * from tb_produto where preco < 500;

update tb_produto
set descricao = "Tênis"
where id_tbproduto = 4;
