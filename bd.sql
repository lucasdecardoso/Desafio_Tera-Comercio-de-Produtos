create database livraria /*cria o banco de dados na máquina*/

use livraria /*acessa o banco informado*/

create table livros(
	Livro varchar(100),
	Autor varchar(100),
	Sexo char(1),
	Paginas char(5),
	Editora varchar(50),
	Valor float(10,2),
	UF char(2),
	Ano char(4)
	);
	
	
/* Inserindo dados na tabela Livros*/
	
INSERT INTO LIVROS VALUES('Cavaleiro Real','Ana Claudia','F','465','Atlas',49.9,'RJ','2009');
INSERT INTO LIVROS VALUES('SQL para leigos','João Nunes','M','450','Addison',98,'SP','2018');
INSERT INTO LIVROS VALUES('Receitas Caseiras','Celia Tavares','F','210','Atlas',45,'RJ','2008');
INSERT INTO LIVROS VALUES('Pessoas Efetivas','Eduardo Santos','M','390','Beta',78,'RJ','2018');
INSERT INTO LIVROS VALUES('Habitos Saudáveis','Eduardo Santos','M','630','Beta',150,'RJ','2019');
INSERT INTO LIVROS VALUES('A Casa Marrom','Hermes Macedo','M','250','Bubba',60,'MG','2016');
INSERT INTO LIVROS VALUES('Estacio Querido','Geraldo Francisco','M','310','Insignia',100,'ES','2015');
INSERT INTO LIVROS VALUES('Pra sempre amigas','Leda Silva','F','510','Insignia',78,'ES','2011');
INSERT INTO LIVROS VALUES('Copas Inesqueciveis','Marco Alcantara','M','200','Larson',130,'RS','2018');
INSERT INTO LIVROS VALUES('O poder da mente','Clara Mafra','F','120','Continental',56,'SP','2017');


/* Tarefa 1 - Trazer todos os dados*/

select * from livros;

/* Tarefa 2 - Trazer o nome do livro e o nome da editora*/

select Livro, Editora from livros;

/* Tarefa 3 - Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino*/

select Livro, UF from livros where Sexo like 'M';

/* Tarefa 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino*/

select Livro, Paginas from livros where Sexo like 'F';

/* Tarefa 5 - Trazer os valores dos livros das editoras de São Paulo*/

select Livro, Valor from livros where UF like 'SP';

/* Tarefa 6 - Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro*/
 
select * from livros where Sexo like 'M' and UF like 'SP' or Sexo like 'M' and UF like 'RJ';
