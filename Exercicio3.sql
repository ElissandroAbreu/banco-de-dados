CREATE DATABASE db_escolar;

USE db_escolar;

CREATE TABLE tb_alunos(
id int auto_increment,
nome varchar(100) not null,
endereco varchar(100) not null,
numero int not null,
media_final decimal(2,1) not null,
PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, endereco, numero, media_final)
values ("Maria Luiza", "Rua das Flores", 34, 6.5);
INSERT INTO tb_alunos(nome, endereco, numero, media_final)
values ("Ana Sofia", "Rua Setembro", 40, 7.5);
INSERT INTO tb_alunos(nome, endereco, numero, media_final)
values ("Eduardo Costa", "Rua Pamonha", 700, 8.0);
INSERT INTO tb_alunos(nome, endereco, numero, media_final)
values ("Luã Silva", "Rua Vinte e Um", 200, 5.5);
INSERT INTO tb_alunos(nome, endereco, numero, media_final)
values ("João Santos", "Avenida Cocaia", 5, 9.5);
INSERT INTO tb_alunos(nome, endereco, numero, media_final)
values ("Luiz Henrique", "Rua Direita", 55, 7.0);
INSERT INTO tb_alunos(nome, endereco, numero, media_final)
values ("Sara Aline", "Rua Abril ", 90, 8.6);
INSERT INTO tb_alunos(nome, endereco, numero, media_final)
values ("Ygor Silva", "Avenida dos Funcionarios", 21, 5.0);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE media_final > 7.0;

SELECT * FROM tb_alunos WHERE media_final < 7.0;

-- modificar dois campos ao mesmo tempo  
UPDATE tb_alunos SET endereco = "Rua F", numero = 40 WHERE id = 4;






