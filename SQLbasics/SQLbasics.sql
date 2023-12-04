CREATE DATABASE db_recursoshumanos;

USE db_recursoshumanos;

CREATE TABLE tb_colaboradores (
	CPF CHAR(14),
	pnome VARCHAR(100) NOT NULL,
    unome VARCHAR(100) NOT NULL,
    datanasc DATE NOT NULL,
    email VARCHAR(200) NOT NULL,
    salario DECIMAL(6,2),
    PRIMARY KEY (CPF)
);

INSERT INTO tb_colaboradores(CPF, pnome, unome, datanasc, email, salario)
VALUES ('123.456.789-10', 'Rodrigo', 'Faro', '1998-06-04', 'rodrigofaro@gmail.com', 1000.00);
INSERT INTO tb_colaboradores(CPF, pnome, unome, datanasc, email, salario)
VALUES ('123.456.789-11', 'Jorge', 'Melkor', '1001-10-01', 'jorgemelkor@lotr.com', 2000.00);
INSERT INTO tb_colaboradores(CPF, pnome, unome, datanasc, email, salario)
VALUES ('123.456.789-12', 'Goku', 'da Silva', '2003-09-15', 'kamehameha@outlook.com', 3000.00);
INSERT INTO tb_colaboradores(CPF, pnome, unome, datanasc, email, salario)
VALUES ('123.456.789-13', 'Vitória', 'Oliveira', '1978-12-30', 'vitoria123@gmail.com', 4000.00);
INSERT INTO tb_colaboradores(CPF, pnome, unome, datanasc, email, salario)
VALUES ('123.456.789-14', 'Marina', 'Sena', '1996-09-26', 'marinasena@gmail.com', 5000.00);

SELECT *
FROM tb_colaboradores
WHERE salario > 2000;

SELECT *
FROM tb_colaboradores
WHERE salario < 2000;

UPDATE tb_colaboradores
SET salario = 9999.99
WHERE CPF = '123.456.789-14';
    
