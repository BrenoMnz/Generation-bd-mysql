CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_aluno (
	CPF char(14),
    pnome VARCHAR(100),
    unome VARCHAR(100),
    datanasc DATE,
    mediaGeral DECIMAL(3,1),
    PRIMARY KEY (CPF)
);

INSERT INTO tb_aluno (CPF, pnome, unome, datanasc, mediaGeral)
VALUES ('123.456.789-01', 'João', 'Silva', '1995-05-15', 8.5);
INSERT INTO tb_aluno (CPF, pnome, unome, datanasc, mediaGeral)
VALUES ('987.654.321-02', 'Maria', 'Santos', '1998-10-22', 9.2);
INSERT INTO tb_aluno (CPF, pnome, unome, datanasc, mediaGeral)
VALUES ('111.222.333-03', 'Pedro', 'Oliveira', '1997-03-08', 7.8);
INSERT INTO tb_aluno (CPF, pnome, unome, datanasc, mediaGeral)
VALUES ('444.555.666-04', 'Ana', 'Rocha', '1996-12-01', 8.9);
INSERT INTO tb_aluno (CPF, pnome, unome, datanasc, mediaGeral)
VALUES ('777.888.999-05', 'Lucas', 'Pereira', '1999-06-25', 7.0);
INSERT INTO tb_aluno (CPF, pnome, unome, datanasc, mediaGeral)
VALUES ('222.333.444-06', 'Isabela', 'Martins', '1994-09-14', 9.5);
INSERT INTO tb_aluno (CPF, pnome, unome, datanasc, mediaGeral)
VALUES ('555.666.777-07', 'Ricardo', 'Lima', '1996-02-18', 8.2);
INSERT INTO tb_aluno (CPF, pnome, unome, datanasc, mediaGeral)
VALUES ('999.000.111-08', 'Fernanda', 'Almeida', '1998-07-30', 8.0);

SELECT *
FROM tb_aluno
WHERE mediaGeral > 7.0;

SELECT *
FROM tb_aluno
WHERE mediaGeral < 7.0;

UPDATE tb_aluno
SET mediaGeral = 9
WHERE CPF > '777.888.999-05';