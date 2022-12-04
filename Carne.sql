create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categorias (
Codigo bigint auto_increment,
Tipo varchar(255),
refrigeracao bit,
primary key (Codigo)
);

create table tb_produtos(
Codigo_produto bigint auto_increment,
Nome varchar(255),
Corte varchar(255),
peso double,
preco double,
Classificacao bigint,
primary key ( Codigo_produto),
foreign key (Classificacao) references tb_categorias (Codigo)
);

insert into tb_categorias (Tipo, refrigeracao) values ( "Bovina", 1);
insert into tb_categorias (Tipo, refrigeracao) values ( "Bovina", 0);
insert into tb_categorias (Tipo, refrigeracao) values ( "Suina", 1);
insert into tb_categorias (Tipo, refrigeracao) values ( "Suina", 1);
insert into tb_categorias (Tipo, refrigeracao) values ( "Caprino", 1);

select * from tb_categorias;
select * from tb_produtos;

insert into tb_produtos (Nome, Corte, peso, preco, classificacao) values ( "Picanha", "Alcatra", 1.07, 87.34, 1);
insert into tb_produtos (Nome, Corte, peso, preco, classificacao) values ( "Picanha", "Alcatra", 1.07, 87.34, 2);
insert into tb_produtos (Nome, Corte, peso, preco, classificacao) values ( "T-bone", "File-mignon", 1.87, 130.34, 1);
insert into tb_produtos (Nome, Corte, peso, preco, classificacao) values ( "T-bone", "File-mignon", 1.98, 157.21, 2);
insert into tb_produtos (Nome, Corte, peso, preco, classificacao) values ( "Bisteca", "Carré", 2.55, 55.00, 3);
insert into tb_produtos (Nome, Corte, peso, preco, classificacao) values ( "Bisteca", "Carré", 3.22, 97.34, 4);
insert into tb_produtos (Nome, Corte, peso, preco, classificacao) values ( "Pernil", "Largato", 1.02, 75.21, 5);
insert into tb_produtos (Nome, Corte, peso, preco, classificacao) values ( "Pernil", "Largato", 1.29, 78.19, 5);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 50 and 150;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_produtos.classificacao=tb_categorias.codigo;

select * from tb_produtos inner join tb_categorias on tb_produtos.codigo_produto = tb_categorias.codigo where Tipo = "Suina";




