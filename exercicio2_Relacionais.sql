CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id int auto_increment,
tipo varchar(100) not null,
PRIMARY KEY(id)
);

-- Modificar o parametro do atributo, antes de usar o DROP TABLE
-- ALTER TABLE tb_categorias MODIFY tipo varchar(100);
-- ---------------------------------------------------

CREATE TABLE tb_pizzas(
id int auto_increment,
nome varchar(50) not null,
fermento_natural boolean not null,
valor decimal(4,2) not null,
PRIMARY KEY (id)
);
-- Modifiquei o nome do atributo e o parametro, antes do DROP TABLE
-- ALTER TABLE tb_pizzas CHANGE tamanho fermento_natural boolean;
-- ----------------------------------------------------------

-- Modificar o parametro do atributo ----------------
-- ALTER TABLE tb_pizzas MODIFY valor decimal;
-- ------------------------------------------------

ALTER TABLE tb_pizzas ADD categoria_id int;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (tipo) values ("Italiana"); 
INSERT INTO tb_categorias (tipo) values ("Portuguesa");
INSERT INTO tb_categorias (tipo) values ("Tradicional");
INSERT INTO tb_categorias (tipo) values ("Chinesa");
INSERT INTO tb_categorias (tipo) values ("Germanica");

SELECT * FROM tb_categorias;

-- Comando apagar a tabela
-- DROP TABLE tb_categorias;

INSERT INTO tb_pizzas (nome, fermento_natural, valor, categoria_id)
values ("Portuguesa", 1, 30, 1);
INSERT INTO tb_pizzas (nome, fermento_natural, valor, categoria_id)
values ("Calabresa", 0, 46, 2);
INSERT INTO tb_pizzas (nome, fermento_natural, valor, categoria_id)
values ("Mussarela", 1, 50, 5);
INSERT INTO tb_pizzas (nome, fermento_natural, valor, categoria_id)
values ("Quatro Queijos", 1, 65, 3);
INSERT INTO tb_pizzas (nome, fermento_natural, valor, categoria_id)
values ("Baiana", 0, 35, 4);
INSERT INTO tb_pizzas (nome, fermento_natural, valor, categoria_id)
values ("Brocolis", 1, 40, 2);
INSERT INTO tb_pizzas (nome, fermento_natural, valor, categoria_id)
values ("Frango Crocante", 0, 45, 1);
INSERT INTO tb_pizzas (nome, fermento_natural, valor, categoria_id)
values ("Atum", 1, 55, 4);

SELECT * FROM tb_pizzas;

-- Por ter duplicado os valores na tb_pizzas, apaguei as tabelas, 
-- primeiro da pizza e depois categorias, por conta da relação da chave estrangeiro
-- --DROP TABLE tb_pizzas;

-- Alterei o valor da pizza----------------
-- UPDATE tb_pizzas SET valor = 35 WHERE id = 1;
-- -----------------------------------------

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias 
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias 
ON tb_categorias.id = tb_pizzas.categoria_id
WHERE categoria_id = 2;


