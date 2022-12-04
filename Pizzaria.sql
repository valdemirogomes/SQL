create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categorias(
id_categoria bigint auto_increment,
tamanho varchar (255) not null,
tipo varchar (255)not null,
primary key (id_categoria)
);
create table tb_pizzas(
id_pizza bigint auto_increment,
sabor varchar(255)not null,
quantidade int,
massa varchar(255) not null,
valor decimal,
id_secundario bigint,
primary key (id_pizza),
foreign key (id_secundario) references tb_categorias(id_categoria)
);
alter table tb_pizzas modify valor decimal (8, 2);
-- inserindo na tb_categoria
insert into tb_categorias(tamanho, tipo) values ("Pequena", "Gourmet");
insert into tb_categorias(tamanho, tipo) values ("Pequena", "Comum");
insert into tb_categorias(tamanho, tipo) values ("Média", "Gourmet");
insert into tb_categorias(tamanho, tipo) values ("Média", "Comum");
insert into tb_categorias(tamanho, tipo) values ("Grande", "Gourmet");
select * from tb_categorias;
# inserindo na tb_pizzas
insert into tb_pizzas (sabor, quantidade, massa, valor, id_secundario) values ("Portuguesa", 10, "Fina", 45.99, 5);
insert into tb_pizzas (sabor, quantidade, massa, valor, id_secundario) values ("Mussarela", 10, "PAN", 29.99, 1);
insert into tb_pizzas (sabor, quantidade, massa, valor, id_secundario) values ("Catubresa", 30, "Grossa", 34.99, 3);
insert into tb_pizzas (sabor, quantidade, massa, valor, id_secundario) values ("Quatro queijos", 20, "Normal", 27.99, 2);
insert into tb_pizzas (sabor, quantidade, massa, valor, id_secundario) values ("FramBacon", 11, "PAN", 46.99, 5);
insert into tb_pizzas (sabor, quantidade, massa, valor, id_secundario) values ("Calabresa", 11, "Comum", 48.99, 1);
insert into tb_pizzas (sabor, quantidade, massa, valor, id_secundario) values ("Napolitano", 11, "Grossa", 56.99, 3);
insert into tb_pizzas (sabor, quantidade, massa, valor, id_secundario) values ("Chocolate", 11, "PAN", 39.99, 4);
select * from tb_pizzas;
-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00..
select * from tb_pizzas where valor > 45;
-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
select * from tb_pizzas where valor between 50 and 100;
-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
select * from tb_pizzas where sabor like "%m%";
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
select * from tb_pizzas inner join tb_categorias on tb_pizzas.id_secundario = tb_categorias.id_categoria;
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, 
-- onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce)
select * from tb_categorias inner join tb_pizzas on tb_pizzas.id_secundario = tb_categorias.id_categoria where tipo = "Gourmet";