drop view if exists cargahorariaminima

CREATE VIEW cargahorariaminima AS
SELECT DisciplinasCursadas.disciplina
  FROM DisciplinaCursada
  inner join disciplina
  on DisciplinaCursadas.disciplina=disciplina.id
  WHERE disciplina.CH=valor;
select * from cargahorariaminima;
select *, SUM(valor) as total_valor from teste group by cliente
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
