CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE rh_colaboradores(
id int auto_increment,
nome varchar(100) not null,
cpf varchar(11) not null,
salario decimal(6,2) not null,
id_genero char(2) not null,
PRIMARY KEY (id)
);

INSERT INTO rh_colaboradores(nome, cpf, salario, id_genero)
values ("Maria Rosa", "67859745609", 2500.00, "FE");
INSERT INTO rh_colaboradores(nome, cpf, salario, id_genero)
values ("Andre Luiz", "45678905686", 2000.00, "MA" );
INSERT INTO rh_colaboradores(nome, cpf, salario, id_genero)
values ("Ariel Sousa", "577856709", 4000.00, "NB");
INSERT INTO rh_colaboradores(nome, cpf, salario, id_genero)
values ("Stefane Silva", "56790834521", 1950.00, "FE");
INSERT INTO rh_colaboradores(nome, cpf, salario, id_genero)
values ("Sandra Borges", "45672300967", 1600.00, "FE");

SELECT * FROM rh_colaboradores WHERE salario > 2000.00;

SELECT * FROM rh_colaboradores WHERE salario < 2000.00;

SET SQL_SAFE_UPDATES = 1;

UPDATE rh_colaboradores SET salario = 2200.00 WHERE id = 5;

SELECT * FROM rh_colaboradores;

UPDATE rh_colaboradores SET cpf = "57785670912" WHERE id = 3;

 
