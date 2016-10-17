insert into matricula(numero,aluno,curso,matricula)
values('1111111111', 
        (select id from  aluno  where documento = '12345'),
        (select id from  curso  where numero = '%29001')
);



create view resumo as
select
        aluno.nome as "Nome do aluno",
        curso.nome as "Nome do Curso",
        disciplina.nome as "Nome da Disciplina"
from disciplina
inner join disciplina
on matricula.disciplina = disciplina.nome

select * from resumo;
------------------------------------------------------------------------
insert into matricula(numero,aluno,curso,matricula)
values('1111111111', 
        (select id from  aluno  where documento = '12345'),
        (select id from  curso  where numero = '%29008')
);



create view resumo as
select
        aluno.nome as "Nome do aluno",
        curso.nome as "Nome do Curso",
        disciplina.nome as "Nome da Disciplina"
from disciplina
inner join disciplina
on matricula.disciplina = disciplina.nome

select * from resumo;
--------------------------------------------------------------------------
