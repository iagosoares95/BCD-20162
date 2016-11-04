drop view if exists filtro_turno

CREATE VIEW filtro_turno AS
SELECT horário.disciplina
  FROM horario
  inner join disciplina
  on horario.disciplina=disciplina.id
  WHERE horario.turno="manhã";
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
--------------------------------------------------------------
drop view if exists filtro_turno

CREATE VIEW filtro_turno AS
SELECT horario.disciplina
  FROM horario
  inner join disciplina
  on horario.disciplina=disciplina.id
  WHERE horario.inicio='7:30/13:30' and termino='8:25/14:25',
  WHERE horario.inicio='8:25/14:25' and termino='9:20/15:20',
  WHERE horario.inicio='9:40/15:40' and termino='10:35/16:35',
  WHERE horario.inicio='10:35/16:35' and termino='11:30/17:30';
select * from filtro_turno; 

DELIMITER $$
CREATE PROCEDURE get_horario(beg time,fin time) # valor 7:30/13:30 a 11:30/17:30
BEGIN
SELECT horario.disciplina
  FROM horario
  inner join disciplina
  on horario.disciplina = disciplina.id
  WHERE horario.inicio = beg and termino = fin;
END$$
DELIMITER ;

CALL get_horario('7:30','8:25');
CALL get_horario('8:25','9:20');
CALL get_horario('9:40','10:35');
CALL get_horario('10:35','11:30');
