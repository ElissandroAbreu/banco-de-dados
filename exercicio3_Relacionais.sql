CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id int auto_increment,
tipo varchar(100) not null,
PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
id int auto_increment,
nome varchar(50) not null,
peso varchar(100) not null,
valor decimal(2,2) not null,
PRIMARY KEY (id)
);

ALTER TABLE tb_produtos ADD categoria_id int;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (tipo) values ("Cosméticos");
INSERT INTO tb_categorias (tipo) values ("Higiene Pessoal");
INSERT INTO tb_categorias (tipo) values ("Remédios");
INSERT INTO tb_categorias (tipo) values ("Perfumes");
INSERT INTO tb_categorias (tipo) values ("Fraldas");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome, peso, valor, categoria_id)
values ("shampoo", "400 ml", 25.00, 1);
INSERT INTO tb_produtos (nome, peso, valor, categoria_id)
values ("cotonete", "25 g", 10.00, 2);
INSERT INTO tb_produtos (nome, peso, valor, categoria_id)
values ("dipirona", "20 ml", 10.00, 3);
INSERT INTO tb_produtos (nome, peso, valor, categoria_id)
values ("Intense", "100 ml", 90.00, 4);
INSERT INTO tb_produtos (nome, peso, valor, categoria_id)
values ("Pampers", "50 uni.", 70.00, 5);
INSERT INTO tb_produtos (nome, peso, valor, categoria_id)
values ("condicionador", "400 ml", 30.00, 1);
INSERT INTO tb_produtos (nome, peso, valor, categoria_id)
values ("sabonete", "10 g", 5.00, 2);
INSERT INTO tb_produtos (nome, peso, valor, categoria_id)
values ("paracetamol", "20 ml", 10.00, 3);

SELECT * FROM tb_produtos;

-- Modificar o parametro do atributo ----------------
ALTER TABLE tb_produtos MODIFY valor decimal;
-- -------------------------------------------------

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categoria_id
WHERE categoria_id = 1;









