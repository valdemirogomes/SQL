create database db_escola;

use db_escola;

/*
drop database db_escola;
drop table aluno;
*/

create table aluno (
	id_aluno int auto_increment primary key,
    matricula int not null,
    nome_aluno varchar(50),
    data_nascimento date,
    nota decimal(2)
);

insert into aluno (matricula, nome_aluno, data_nascimento, nota) values (123, "Vânia Gomes", "1984-02-16", 6.0);
    
insert into aluno (matricula, nome_aluno, data_nascimento, nota) values (124, "Aline Melo", "1984-11-14", 7.0);

insert into aluno (matricula, nome_aluno, data_nascimento, nota) values (125, "Eder Secco", "1984-03-16", 7.0);

insert into aluno (matricula, nome_aluno, data_nascimento, nota) values (126, "Fernando Tófoli", "1984-12-03", 8.0);

insert into aluno (matricula, nome_aluno, data_nascimento, nota) values (126, "Caroline Ciancaglio", "1984-07-16", 9.0);

insert into aluno (matricula, nome_aluno, data_nascimento, nota) values (125, "Caroline Ferreira", "1984-03-20", 10.0);

insert into aluno (matricula, nome_aluno, data_nascimento, nota) values (125, "Mirian Silvia", "1985-03-16", 6.0);

insert into aluno (matricula, nome_aluno, data_nascimento, nota) values (125, "Rosana Ferrareto", "1984-04-16", 7.5);

select * from aluno;

select * from aluno where nota > 7;

select * from aluno where nota < 7;

update aluno
set nota = 7
where id_aluno = 1;