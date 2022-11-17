create database db_rh;
drop database db_RH;
use db_rh;

create table tb_funcionario (
	id_tbfuncionario int auto_increment primary key,
    matricula int not null unique,
    funcao varchar(30),
    setor varchar(30),
    salario double
);

insert into tb_funcionario (matricula, funcao, setor, salario) values (8987675, 'Developer', 'TI' , 6000);
insert into tb_funcionario (matricula, funcao, setor, salario) values (2454345, 'Developer Pleno', 'TI' , 7.000);
insert into tb_funcionario (matricula, funcao, setor, salario) values (9876567, 'Developer FullStack Pleno', 'TI' , 10.000);
insert into tb_funcionario (matricula, funcao, setor, salario) values (1122212, 'Developer Junior', 'TI' , 3.000);
insert into tb_funcionario (matricula, funcao, setor, salario) values (4432090, 'Developer FullStack Junior', 'TI' , 2.000);

select * from tb_funcionario;

select * from tb_funcionario where salario > 2000;

select * from tb_funcionario where salario < 2000;

update tb_funcionario 
set salario = 2000
where matricula = 4432090;

update tb_funcionario 
set salario = 3000
where matricula = 1122212;






    