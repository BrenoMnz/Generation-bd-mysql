CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produto (
	id BIGINT AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(7,2),
    PRIMARY KEY (id)
);

INSERT INTO tb_produto(modelo, marca, descricao, preco)
VALUES ('Fiesta', 'Ford', 'Carro para andar na cidade', 30000.00);
INSERT INTO tb_produto(modelo, marca, descricao, preco)
VALUES ('Monopoly', 'Hasbro', 'Brinquedo para a família', 200.00);
INSERT INTO tb_produto(modelo, marca, descricao, preco)
VALUES ('Bola de futebol', 'FIFA', 'Bola da copa de 2010', 1000.00);
INSERT INTO tb_produto(modelo, marca, descricao, preco)
VALUES ('Celular', 'Samsung', 'Celular que pode fazer tudo', 2000.00);
INSERT INTO tb_produto(modelo, marca, descricao, preco)
VALUES ('Windows', 'Microsoft', 'Ative seu windows imediatamente', 100.00);
INSERT INTO tb_produto(modelo, marca, descricao, preco)
VALUES ('GTX 750 Ti', 'Nvidia', 'Placa de vídeo fraquinha', 500.00);
INSERT INTO tb_produto(modelo, marca, descricao, preco)
VALUES ('1 Million', 'Paco Rabanne', 'Perfume pra ficar cheiroso', 700.00);
INSERT INTO tb_produto(modelo, marca, descricao, preco)
VALUES ('Battle Royale', 'Alt', 'Livro muito bom que criou o gênero dos jogos atuais', 50.00);

SELECT *
FROM tb_produto
WHERE preco > 500;

SELECT *
FROM tb_produto
WHERE preco < 500;

UPDATE tb_produto
SET preco = 300.00
WHERE id = 2;



    
    
