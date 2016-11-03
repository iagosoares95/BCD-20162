drop view if exists filtro_disciplinas_horario;

CREATE VIEW filtro_disciplinas_horario AS
SELECT horario.disciplina
  FROM horario
  inner join disciplina
  on horario.disciplina = disciplina.id
  WHERE horario.inicio = '7:30' and termino = '9:20';

select * from filtro_disciplinas_horario;
--------------------------------------------------------------
drop view if exists filtro_disciplinas_professores;

CREATE VIEW filtro_disciplinas_professores AS
SELECT  MinistradoresDasDisciplinas.professor
  FROM MinistradoresDasDisciplinas
  inner join Professor
  on MinistradoresDasDisciplinas.professor = Professor.id
  WHERE Professor.nome = 'Roberto Nobrega';

select * from filtro_disciplinas_professores;
-------------------------------------------------------------
drop view if exists filtro_turno

CREATE VIEW filtro_turno AS
SELECT horário.turno
  FROM horario
  inner join disciplina
  on horario.turno=disciplina.id
  WHERE horario.turno="x";
select * from filtro_turno;
--------------------------------------------------------------
drop view if exists filtro_turno

CREATE VIEW
