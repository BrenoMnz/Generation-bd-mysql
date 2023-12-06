CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id INT NOT NULL AUTO_INCREMENT,
    tamanho VARCHAR(255) NOT NULL,
    sabor VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizza (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    saborBorda VARCHAR(255),
    azeitona BIT NOT NULL,
    preco DECIMAL(5,2),
    categorias_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tamanho, sabor)
VALUES ("broto", "salgada");
INSERT INTO tb_categorias (tamanho, sabor)
VALUES ("broto", "doce");
INSERT INTO tb_categorias (tamanho, sabor)
VALUES ("média", "salgada");
INSERT INTO tb_categorias (tamanho, sabor)
VALUES ("média", "doce");
INSERT INTO tb_categorias (tamanho, sabor)
VALUES ("grande", "salgada");
INSERT INTO tb_categorias (tamanho, sabor)
VALUES ("grande", "doce");

INSERT INTO tb_pizza (nome, saborBorda, azeitona, preco, categorias_id)
VALUES ("Queijo", NULL, 1, 5.00, 3);
INSERT INTO tb_pizza (nome, saborBorda, azeitona, preco, categorias_id)
VALUES ("Frango c/ catupiry", "catupiry", 1, 10.00, 3);
INSERT INTO tb_pizza (nome, saborBorda, azeitona, preco, categorias_id)
VALUES ("Strogonoff", NULL, 1, 15.00, 5);
INSERT INTO tb_pizza (nome, saborBorda, azeitona, preco, categorias_id)
VALUES ("Mortadela", "cheddar", 1, 20.00, 3);
INSERT INTO tb_pizza (nome, saborBorda, azeitona, preco, categorias_id)
VALUES ("Calabresa", "catupiry", 1, 25.00, 1);
INSERT INTO tb_pizza (nome, saborBorda, azeitona, preco, categorias_id)
VALUES ("Chocolate", "chocolate", 0, 30.00, 6);
INSERT INTO tb_pizza (nome, saborBorda, azeitona, preco, categorias_id)
VALUES ("Banana c/ leite condensado", "leite condensado", 0, 35.00, 2);
INSERT INTO tb_pizza (nome, saborBorda, azeitona, preco, categorias_id)
VALUES ("Chocolate c/ morango", NULL, 0, 40.00, 4);

SELECT *
FROM tb_pizza
WHERE preco < 45;

SELECT *
FROM tb_pizza
WHERE preco BETWEEN 50 AND 100;

SELECT *
FROM tb_pizza
WHERE nome LIKE '%m%';

SELECT *
FROM tb_pizza P INNER JOIN tb_categorias C
ON P.categorias_id = C.id;

SELECT *
FROM tb_pizza P INNER JOIN tb_categorias C
ON P.categorias_id = C.id
WHERE C.id = 5;