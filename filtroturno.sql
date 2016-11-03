drop view if exists filtro_turno

CREATE VIEW filtro_turno AS
SELECT horário.turno
  FROM horario
  inner join disciplina
  on horario.turno=disciplina.id
  WHERE horario.turno="manhã";
select * from filtro_turno;
--------------------------------------------------------------
drop view if exists filtro_turno

CREATE VIEW filtro_turno AS
SELECT horario.disciplina
  FROM horario
  inner join disciplina
  on horario.disciplina=disciplina.id
  WHERE horario.inicio='7:30/13:30' and termino='9:20/15:20',
  WHERE horario.inicio='9:40/15:40' and termino='11:30/17:30'
select * from filtro_turno; 
