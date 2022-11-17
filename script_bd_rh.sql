create database db_rh;

use db_rh;

/*
drop database rh;
drop table funcionario;
*/

create table funcionario (
	id_funcionario int auto_increment ,
    matricula int not null unique,
    funcao varchar(30),
    setor varchar(30),
    salario double,
    primary key(id_funcionario)
);

insert into funcionario (matricula, funcao, setor, salario) values (12, 'Developer', 'TI' , 6.000);
insert into funcionario (matricula, funcao, setor, salario) values (137896, 'Developer Pleno', 'TI' , 7.000);
insert into funcionario (matricula, funcao, setor, salario) values (14123, 'Developer FullStack Pleno', 'TI' , 10.000);
insert into funcionario (matricula, funcao, setor, salario) values (15, 'Developer Junior', 'TI' , 3.000);
insert into funcionario (matricula, funcao, setor, salario) values (16, 'Developer FullStack Junior', 'TI' , 2.000);

select * from funcionario;

select * from funcionario where salario > 2.000;

select * from funcionario where salario < 2.000;

update funcionario 
set matricula = 15
where id_funcionario = 2;

update funcionario 
set matricula = 13
where id_funcionario = 3;

update funcionario 
set matricula = 14
where id_funcionario = 4;




    