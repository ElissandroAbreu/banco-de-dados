CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id int auto_increment,
descricao varchar(100) not null,
PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
id int auto_increment,
nome varchar(100) not null,
ataque int not null,
defesa int not null,
PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD classes_id int;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classes_id) REFERENCES tb_classes(id);

INSERT INTO tb_classes (descricao) values ("Guerreiro(a)");
INSERT INTO tb_classes (descricao) values ("Arqueiro(a)");
INSERT INTO tb_classes (descricao) values ("Caçador(a)");
INSERT INTO tb_classes (descricao) values ("Feiticeiro(a)");
INSERT INTO tb_classes (descricao) values ("Curandeiro(a)");

INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
values ("Kamikaze", 5000, 3000, 1);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
values ("Naviny", 4000, 2000, 2);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
values ("Colins", 3000, 5000, 5);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
values ("Agemon", 4000, 3500, 3);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
values ("Drizy", 6000, 5000, 4);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
values ("Jonteon", 3000, 2000, 2);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
values ("Ranger", 4500, 4000, 1);
INSERT INTO tb_personagens (nome, ataque, defesa, classes_id)
values ("Lars", 6500, 5500, 4);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

SELECT * FROM tb_personagens 
INNER JOIN tb_classes 
ON tb_classes.id = tb_personagens.classes_id 
WHERE descricao = "Arqueiro(a)";












