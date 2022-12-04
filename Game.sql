create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id_class bigint auto_increment,
Especie varchar(255) not null,
Tipo varchar(255) not null,
Primary Key (id_class)
);


create table tb_personagens(
id_personagem bigint auto_increment,
id_biologico bigint, 
Nome varchar(255) not null,
ataque int not null,
defesa int not null,
sexo varchar (255) not null,
Primary key (id_personagem),
Foreign key (id_biologico) references tb_classe (id_class)
);


insert into tb_classe ( especie, tipo) values ( "Orc", "lutador");
insert into tb_classe ( especie, tipo) values ( "Orc", "Mago");
insert into tb_classe ( especie, tipo) values ( "Elfo", "Assasino");
insert into tb_classe ( especie, tipo) values ( "Elfo", "lutador");
insert into tb_classe ( especie, tipo) values ( "Anão", "tanque");


insert into tb_personagens (Nome, ataque, defesa, sexo, id_biologico) values ( "Taric", 1500, 1300, "Masculino", 1 );
insert into tb_personagens (Nome, ataque, defesa, sexo, id_biologico) values ( "Kung-loo", 2377, 1000, "Feminino", 2);
insert into tb_personagens (Nome, ataque, defesa, sexo, id_biologico) values ( "Laertic", 2100, 1400, "Masculino", 3);
insert into tb_personagens (Nome, ataque, defesa, sexo, id_biologico) values ( "Katic", 3000, 1900, "Feminino", 4);
insert into tb_personagens (Nome, ataque, defesa, sexo, id_biologico) values ( "Carec", 1900, 4500, "Masculino", 5);
insert into tb_personagens (Nome, ataque, defesa, sexo, id_biologico) values ( "Kwai", 2300, 1900, "Masculino", 4);
insert into tb_personagens (Nome, ataque, defesa, sexo, id_biologico) values ( "Nubotic", 4100, 400, "Masculino", 2);
insert into tb_personagens (Nome, ataque, defesa, sexo, id_biologico) values ( "Joarbotic", 2900, 3000, "Feminino", 2);

Select * From tb_personagens;

select * From tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between  1000 and 2000;

select * from tb_personagens where nome like "%C%";

select * from tb_personagens inner join tb_classe on tb_personagens.id_biologico = tb_classe.id_class; 

select * from tb_classe inner join tb_personagens on tb_personagens.id_biologico = tb_classe.id_class where especie = "Orc"; 





