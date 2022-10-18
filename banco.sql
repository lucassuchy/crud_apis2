CREATE SCHEMA biblioteca;

CREATE TABLE biblioteca.usuarios (
  id SERIAL NOT NULL PRIMARY key,
  nome varchar(255) default NULL,
  telefone varchar(100) default NULL,
  email varchar(255) default NULL,
  cidade varchar(50) default NULL,
  estado varchar(100) default NULL
);


CREATE TABLE biblioteca.livros (
  id SERIAL  NOT NULL primary KEY,
  nome varchar(255) default NULL,
  autor varchar(100) default NULL,
  ano varchar(255) default NULL, 
  quantidade varchar(50) default NULL
);

create table biblioteca.emprestimos(
	id serial not null primary key,
	CONSTRAINT id_livro
      FOREIGN KEY(id) 
	  REFERENCES biblioteca.livros(id),
	constraint id_cliente
		foreign key(id)
		references biblioteca.usuarios(id),
	data_emprestimo timestamp not null,
	data_devolucao timestamp
);

