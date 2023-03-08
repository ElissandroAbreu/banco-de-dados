CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE tb_produtos(
codigo int auto_increment,
nome varchar(100) not null,
quantidade int,
preco decimal(6,2) not null,
cor varchar(100),
PRIMARY KEY (codigo)
);

INSERT INTO tb_produtos(nome, quantidade, preco, cor)
values ("camiseta", 20, 50.00, "branca");
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
values ("calça jeans", 100, 100.00, "azul");
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("perfume", 50, 200.00);
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
values ("relógio", 30, 80.00, "prata");
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
values ("meia", 200, 50.00, "branca");
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
values ("smartphone", 100, 2500.00, "preta");
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
values ("fogão", 20, 1000.00, "branca");
INSERT INTO tb_produtos(nome, quantidade, preco, cor)
values ("geladeira", 10, 4500.00, "cinza");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET cor = "rosa" WHERE codigo = 3;









