create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;
create table tb_categorias(
id_categoria bigint auto_increment,
tarja varchar (255) not null,
isGenerico bool,
primary key(id_categoria)
);
create table tb_produtos(
id_produto bigint auto_increment,
nome varchar (255) not null,
valor int not null,
laboratorio varchar (255) not null,
miligramagem varchar (255),
terapeutico bool,
id_foreign bigint,
primary key(id_produto),
foreign key (id_foreign) references tb_categorias(id_categoria) 
);
alter table tb_produtos modify valor decimal (8, 2);
-- Insira 5 registros na tabela tb_categorias.
insert into tb_categorias (tarja, isGenerico) values ("Preta", 0);
insert into tb_categorias (tarja, isGenerico) values ("Vermelha", 1);
insert into tb_categorias (tarja, isGenerico) values ("Sem Tarja", 1);
insert into tb_categorias (tarja, isGenerico) values ("Preta", 1);
insert into tb_categorias (tarja, isGenerico) values ("Vermelha", 0);
select * from tb_categorias;
-- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
insert into tb_produtos(nome, valor, laboratorio, miligramagem, terapeutico, id_foreign)
value("Captopril", 59.99, "Medley", "25mg", 1, 1);
insert into tb_produtos(nome, valor, laboratorio, miligramagem, terapeutico, id_foreign)
value("Paracetamol", 19.99, "Medquimica", "750mg", 0, 3);
insert into tb_produtos(nome, valor, laboratorio, miligramagem, terapeutico, id_foreign)
value("Dipirona", 12.99, "Prati", "1g", 0, 3);
insert into tb_produtos(nome, valor, laboratorio, miligramagem, terapeutico, id_foreign)
value("Rivotril", 39.99, "Geolab", "0,5mg", 1, 4);
insert into tb_produtos(nome, valor, laboratorio, miligramagem, terapeutico, id_foreign)
value("Ritalina", 49.99, "Novartis", "10mg", 1, 1);
insert into tb_produtos(nome, valor, laboratorio, miligramagem, terapeutico, id_foreign)
value("Ivermectina", 79.99, "Vitamedic", "6mg", 1, 5);
insert into tb_produtos(nome, valor, laboratorio, miligramagem, terapeutico, id_foreign)
value("Amoxilina", 15.99, "EMS", "500mg", 0, 2);
insert into tb_produtos(nome, valor, laboratorio, miligramagem, terapeutico, id_foreign)
value("Miracal", 59.99, "Geolab", "250mg", 0, 3);
select * from tb_produtos;
-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
select * from tb_produtos where valor > 50;
-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
select * from tb_produtos where valor between 50 and 60;
-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
select * from tb_produtos where nome like "%c%";
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
select * from tb_produtos inner join tb_categorias on tb_produtos.id_produto = tb_categorias.id_categoria;
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
select * from tb_categorias inner join tb_produtos on tb_produtos.id_foreign = tb_categorias.id_categoria where tarja = "Preta";