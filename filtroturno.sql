drop view if exists filtro_turno

CREATE VIEW filtro_turno AS
SELECT horário.disciplina
  FROM horario
  inner join disciplina
  on horario.disciplina=disciplina.id
  WHERE horario.turno="matutino";
select * from filtro_turno;

DELIMITER $$
CREATE PROCEDURE get_turno(tur varchar) # valor matutino/vespertino/noturno
BEGIN
SELECT horario.disciplina
  FROM horario
  inner join disciplina
  on horario.disciplina = disciplina.id
  WHERE horario.turno = tur;
END$$
DELIMITER ;

CALL ge_turno('matutino');
