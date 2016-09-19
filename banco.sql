create table aluno(
  nome varchar(128) not null,
  documento char(11) primary key,
  telefone unsigned bigint,
  email varchar(128)
);

create table curso(
  numero smallint primary key,
  nome varchar(128) not null,
  campus varchar(32) not null,
  chminima unsigned smallint,
  chmaxima unsigned smallint,
  constraint fk_curso_campus_campus_nome
  foreign key (campus) references campus(nome) 
);

create table campus(
  nome varchar(128) primary key
);

create table matricula(
  aluno char(11),
  curso unsigned tinyint  not null,
  numero char(10) primary key,
  constraint fk_matricula_aluno_aluno_documento
  foreign key (aluno) references aluno(documento),
  constraint fk_matricula_curso_curso_numero
  foreign key (curso) references curso(numero)
);
