create database db_escola;
use db_escola;

create table tb_aluno (
	id_tbaluno int auto_increment primary key,
    	matricula int not null unique,
    	nome_aluno varchar(50),
    	data_nascimento date,
    	nota decimal(5,2)
);

insert into tb_aluno (matricula, nome_aluno, data_nascimento, nota) values (123, "Vânia Gomes", "1984-02-16", 6.0);
    
insert into tb_aluno (matricula, nome_aluno, data_nascimento, nota) values (124, "Aline Melo", "1984-11-14", 7.0);

insert into tb_aluno (matricula, nome_aluno, data_nascimento, nota) values (125, "Eder Secco", "1984-03-16", 7.0);

insert into tb_aluno (matricula, nome_aluno, data_nascimento, nota) values (126, "Fernando Tófoli", "1984-12-03", 8.0);

insert into tb_aluno (matricula, nome_aluno, data_nascimento, nota) values (127, "Caroline Ciancaglio", "1984-07-16", 9.0);

insert into tb_aluno (matricula, nome_aluno, data_nascimento, nota) values (128, "Caroline Ferreira", "1984-03-20", 10.0);

insert into tb_aluno (matricula, nome_aluno, data_nascimento, nota) values (129, "Mirian Silvia", "1985-03-16", 6.0);

insert into tb_aluno (matricula, nome_aluno, data_nascimento, nota) values (130, "Rosana Ferrareto", "1984-04-16", 7.5);

select * from tb_aluno;

select * from tb_aluno where nota > 7;

select * from tb_aluno where nota < 7;

update tb_aluno
set nota = 7.89
where id_tbaluno = 1;
