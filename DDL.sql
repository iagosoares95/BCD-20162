use bcd;

insert into campus(nome) values ('São José');
select * from campus;

insert INTO disciplina(codigo, nome, CH, CHmin)
values('LOG29001', 'Lógica', '36','0'),
      ('DES29001', 'Desenho Técnico', '36','0');
select * from disciplina;

insert into curso(numero, CHmin, CHmax, nome, campus)
values(
        '290', '216','612','Engenharia de Telecomunicações',
    (select id from campus where nome = 'São José')
);
select * from curso;

insert into curriculo(curso, implantacao, disciplina)
values
        (
                (select id from curso where numero = '290'),
                '2012-03-12',
                (select id from disciplina where codigo = 'LOG29001')
        ),
    (
                (select id from curso where numero = '290'),
                '2012-03-12',
                (select id from disciplina where codigo = 'DES29001')
        );
select * from curriculo;

insert into aluno(nome, documento, telefone, email)
values ('Ederson Torresini', '12345', '3381-2821', 'etorresini@ifsc.edu.br');

insert into matricula(numero, aluno, curso)
values('162000147', 
        (select id from  aluno  where documento = '12345'),
        (select id from  curso  where numero = '290')
);

create view resumo as
select
        curso.numero as "Código do Curso",
        curso.nome as "Nome do Curso",
        curriculo.implantacao as "Data de Implantação",
        disciplina.codigo as "Código da Disciplina",
        disciplina.nome as "Nome da Disciplina"
from curso
inner join curriculo
on curso.id = curriculo.curso
inner join disciplina
on disciplina.id = curriculo.disciplina;

select * from resumo;

