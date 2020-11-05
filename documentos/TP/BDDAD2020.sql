drop table inscricao;
drop table ingresso;
drop table disciplina;
drop table aluno;
drop table curso;



create table curso(
codigo varchar(8) primary key,
nome varchar(100));

create table disciplina(
codigo varchar(8) primary key,
nome varchar(100));

create table aluno(
numero integer primary key,
nome varchar(100),
mediaAcesso numeric(4,2));

create table ingresso(
numAluno integer references aluno(numero),
anoLetivo char(7),
codCurso varchar(8) references curso(codigo),
constraint pkIngresso primary key (numAluno, anoLetivo));

create table inscricao(
codDisciplina varchar(8) references disciplina(codigo),
numAluno integer references aluno(numero),
anoLetivo char(7),
dataInscricao date,
notaFreq numeric(4,2),
notaExame numeric(4,2),
constraint pkInscricao primary key (codDisciplina, numAluno, anoLetivo),
constraint fkInscricaoIngresso foreign key (numAluno, anoLetivo) references ingresso(numAluno, anoLetivo));



insert into curso values('LEI', 'Licenciatura em Engenharia Informática');
insert into curso values('MEI', 'Mestrado em Engenharia Informatica');
insert into curso values('LECIV', 'Licenciatura em Engenharia Civil');
insert into curso values('LEM', 'Licenciatura em Engenharia Mecanica');
insert into curso values('LEE', 'Licenciatura em Engenharia Electrotecnica e de Computadores');
insert into curso values('MEM', 'Mestrado em Engenharia Mecanica');
insert into curso values('LEQ', 'Licenciatura em Engenharia Quimica');
insert into curso values('MEQ', 'Mestrado em Engenharia Quimica');
insert into curso values('MECIM', 'Mestrado em Engenharia de Computacao e Instrumentacao Medica');

insert into disciplina values('BDDAD', 'Bases de Dados');
insert into disciplina values('EAPLI', 'Engenharia de Aplicaçoes');
insert into disciplina values('ESOFT', 'Engenharia de Software');
insert into disciplina values('PROAV', 'Programacao Avancada');
insert into disciplina values('ESTAT', 'Estatistica');
insert into disciplina values('ELEAPL', 'Eletronica Aplicada');
insert into disciplina values('ELECT-E', 'Electromagnetismo');
insert into disciplina values('APROG', 'ProgramaÁ„o');

insert into aluno values(1165340, 'Joaquim Silva', 14.3);
insert into aluno values(1156341, 'Jorge Dias', 12.6);
insert into aluno values(1156354, 'Ana Guedes', 14.7);
insert into aluno values(1164233, 'Isabel Antonia', 15.5);
insert into aluno values(1164643, 'Pedro Pereira', 12.2);
insert into aluno values(1165456, 'Maria Joaquina',13.2);
insert into aluno values(1156987, 'Rute Silva', 14.5);
insert into aluno values(1156458, 'Bruno Silva', 13.9);
insert into aluno values(1166730, 'Antonio Andrade', 11.8);
insert into aluno values(1156472, 'Fernando Paiva', 12.7);
insert into aluno values(1168777, 'Fernanda Afonso', 14.0);
insert into aluno values(1168987, 'Beatriz Cunha', 13.1);
insert into aluno values(1161123, 'Carla Martins', 13.2);
insert into aluno values(1168019, 'Gustavo Correia', 13.3);

insert into ingresso values(1165340, '2017-18', 'LEI');
insert into ingresso values(1165340, '2016-17', 'LEI');
insert into ingresso values(1156341, '2016-17', 'MECIM');
insert into ingresso values(1156354, '2016-17', 'MECIM');
insert into ingresso values(1164233, '2016-17', 'LEI');
insert into ingresso values(1165456, '2017-18', 'LEI');
insert into ingresso values(1156987, '2017-18', 'MECIM');
insert into ingresso values(1156458, '2017-18', 'LECIV');
insert into ingresso values(1166730, '2017-18', 'LEI');
insert into ingresso values(1156472, '2017-18', 'LECIV');
insert into ingresso values(1168777, '2017-18', 'LEI');
insert into ingresso values(1168987, '2017-18', 'LEI');
insert into ingresso values(1161123, '2016-17', 'LEI');
insert into ingresso values(1168019, '2016-17', 'LEI');
insert into ingresso values(1164643, '2016-17', 'LEI');

insert into inscricao values('BDDAD', 1165340, '2017-18', TO_DATE('2017-09-01','YYYY-MM-DD'), 18.5, 13.4);
insert into inscricao values('ESOFT', 1165340, '2016-17', TO_DATE('2016-07-29','YYYY-MM-DD'), 14.7, 10.2);
insert into inscricao values('BDDAD', 1165340, '2016-17', TO_DATE('2016-07-29','YYYY-MM-DD'), 8.4, 5.7);
insert into inscricao values('EAPLI', 1165340, '2017-18', TO_DATE('2017-09-01','YYYY-MM-DD'), 15.1, 13.8);
insert into inscricao values('PROAV', 1156341, '2016-17', TO_DATE('2016-09-09','YYYY-MM-DD'), 15.2, 14.4);
insert into inscricao values('PROAV', 1156354, '2016-17', TO_DATE('2016-09-03','YYYY-MM-DD'), 10.9, null);
insert into inscricao values('BDDAD', 1164233, '2016-17', TO_DATE('2016-07-28','YYYY-MM-DD'), 15.1, 12.7);
insert into inscricao values('BDDAD', 1164643, '2016-17', TO_DATE('2016-09-12','YYYY-MM-DD'), 12.5, 12.0);
insert into inscricao values('BDDAD', 1165456, '2017-18', TO_DATE('2017-09-13','YYYY-MM-DD'), null, null);
insert into inscricao values('EAPLI', 1164233, '2016-17', TO_DATE('2016-07-28','YYYY-MM-DD'), 14.8, 11.3);
insert into inscricao values('EAPLI', 1164643, '2016-17', TO_DATE('2016-09-12','YYYY-MM-DD'), 16.3, 14.5);
insert into inscricao values('EAPLI', 1165456, '2017-18', TO_DATE('2017-09-12','YYYY-MM-DD'), 10.3, 12.2);
insert into inscricao values('ESOFT', 1164233, '2016-17', TO_DATE('2016-07-28','YYYY-MM-DD'), 3.4, null);
insert into inscricao values('ESOFT', 1164643, '2016-17', TO_DATE('2016-09-12','YYYY-MM-DD'), 8.3, 4.5);
insert into inscricao values('ESOFT', 1165456, '2017-18', TO_DATE('2017-09-12','YYYY-MM-DD'), 12.4, 13.1);
insert into inscricao values('PROAV', 1156987, '2017-18', TO_DATE('2017-09-13','YYYY-MM-DD'), 14.2, 16.6);
insert into inscricao values('APROG', 1156458, '2017-18', TO_DATE('2017-09-05','YYYY-MM-DD'), 12.9, 14.3);
insert into inscricao values('ESTAT', 1156458, '2017-18', TO_DATE('2017-09-15','YYYY-MM-DD'), 10.0, 9.6);
insert into inscricao values('BDDAD', 1166730, '2017-18', TO_DATE('2017-07-24','YYYY-MM-DD'), 14.4, 15.6);
insert into inscricao values('APROG', 1156472, '2017-18', TO_DATE('2017-07-25','YYYY-MM-DD'), 11.4, 15.2);
insert into inscricao values('BDDAD', 1168777, '2017-18', TO_DATE('2017-09-17','YYYY-MM-DD'), 17.9, 14.9);
insert into inscricao values('BDDAD', 1168987, '2017-18', TO_DATE('2017-09-15','YYYY-MM-DD'), 12.5, 12.4);
insert into inscricao values('BDDAD', 1161123, '2016-17', TO_DATE('2016-07-15','YYYY-MM-DD'), 13.3, 10.6);
insert into inscricao values('BDDAD', 1168019, '2016-17', TO_DATE('2016-09-23','YYYY-MM-DD'), 8.1, 6.7);


-- liste a media de acesso de todos os alunos
select mediaacesso from aluno;

-- liste a media de acesso de todos os alunos ( elimine os repetidos)
select distinct mediaacesso from aluno;

-- liste os alunos com media de a acesso igual a 15.5
select mediaacesso from aluno
where mediaacesso =15.5;

-- liste os alunos com media de acesso 13.2 ou com o nome Isabel Antonia.
select mediaacesso from aluno
where mediaacesso =13.2 or nome = 'Isabel Antonia';

-- liste os alunos com media de acesso 13.5 ou com o nome Isabel Antonia.
select mediaacesso from aluno
where mediaacesso =13.5 or nome = 'Isabel Antonia';

-- liste os alunos com media de acesso 13.2 e com o nome Isabel Antonia.
select mediaacesso from aluno
where mediaacesso =13.2 and nome ='Isabel Antonia';

--liste a nota final do aluno 1164233 na disciplina de BDDAD em 2016-17; a nota de frequencao vale 60% e a nota de exame 0 restante
select 0.6*notafreq+0.4*notaexame
from inscricao
where numaluno=1164233 and coddisciplina='BDDAD' and anoletivo='2016-17';

-- dar nome à coluna
select 0.6*notafreq+0.4*notaexame notafinal
from inscricao
where numaluno=1164233 and coddisciplina='BDDAD' and anoletivo='2016-17';

-- Listar o nome dos alunos começados por B e a terceira letra é um u
select * from aluno  where nome like 'B_u%';

-- liste o nome de todos os alunos por ordem crescente
select nome from aluno
order by nome;

-- liste o nome de todos os alunos por ordem descrescente
select nome from aluno
order by nome DESC;

-- liste o nome de todos os alunos por nome e ordenados por ordem  decrescente  de media de acesso
select * from aluno
order by nome, mediaacesso;

-- Liste   o numero total de alunos
select count(*) from aluno;

-- liste a media de acesso mais alta e a mais baixa
select max(mediaacesso), min(mediaacesso) from aluno;

-- Liste   a média das notas de frequência obtidas na disciplina de base de dados
select avg(notafreq) from inscricao where coddisciplina Like 'BDDAD';

-- Liste   a média das notas de frequência obtidas na disciplina de base de dados
select trunc(avg(notafreq),0) MEDIAACESSO from inscricao where coddisciplina Like 'BDDAD';

-- Liste  por ano lectivo a média das notas de frequência obtidas na disciplina de base de dados
select anoletivo,avg(notafreq) 
from inscricao 
where coddisciplina Like 'BDDAD'
group by anoletivo;

-- Liste o nome do aluno com media de acesso mais alta

select nome
from aluno
where mediaacesso = max(mediaacesso);

select nome
from aluno
where mediaacesso = (select max(mediaacesso) from aluno);


