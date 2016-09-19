create table aluno(
  id unsigned int auto_increment primary key,
  nome varchar(128) not null,
  documento char(11),
  telefone unsigned bigint,
  email varchar(128)
);

create table curso(
  id unsigned smallint auto_increment primary key,
  numero smallint,
  nome varchar(128) not null,
  campus varchar(32) not null,
  chminima unsigned smallint,
  chmaxima unsigned smallint,
  curriculo varchar(64),
  constraint fk_curso_campus_campus_id
  foreign key (campus) references campus(id),
  constraint fk_curso_curriculo_curriculo_implantacao
  foreign key (curriculo) references curriculo(implantacao),
  constraint fk_curso_curriculo_curriculo_disciplina 
  foreign key(curriculo) references curriculo(disciplina)
);

create table campus(
  id unsigned tinyint auto_increment primary key,
  nome varchar(128)
);

create table matricula(
  id unsigned int auto_increment primary key,
  aluno char(11),
  curso unsigned tinyint  not null,
  numero char(10),
  constraint fk_matricula_aluno_aluno_id
  foreign key (aluno) references aluno(id),
  constraint fk_matricula_curso_curso_id
  foreign key (curso) references curso(id)
);
