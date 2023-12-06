CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagem (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    ataque INT,
    defesa INT,
    idade INT,
    classe_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_classe(nome, descricao)
VALUES ("Guitarrista", "Toca guitarra");
INSERT INTO tb_classe(nome, descricao)
VALUES ("Ogro", "Vive no pântano");
INSERT INTO tb_classe(nome, descricao)
VALUES ("Deus", "Equilibra o mundo");
INSERT INTO tb_classe(nome, descricao)
VALUES ("Alien", "Não sabe o que tá fazendo");
INSERT INTO tb_classe(nome, descricao)
VALUES ("DBA", "Administra esse banco de dados");

INSERT INTO tb_personagem(nome, ataque, defesa, idade, classe_id)
VALUES ("Roberto", 1000, 1000, 25, 1);
INSERT INTO tb_personagem(nome, ataque, defesa, idade, classe_id)
VALUES ("Shrek", 2000, 2000, 40, 2);
INSERT INTO tb_personagem(nome, ataque, defesa, idade, classe_id)
VALUES ("Diógenes", 3000, 3000, 1000000, 3);
INSERT INTO tb_personagem(nome, ataque, defesa, idade, classe_id)
VALUES ("Vilgax", 4000, 4000, 240, 4);
INSERT INTO tb_personagem(nome, ataque, defesa, idade, classe_id)
VALUES ("Thiago", 5000, 5000, 45, 5);
INSERT INTO tb_personagem(nome, ataque, defesa, idade, classe_id)
VALUES ("Leonardo", 6000, 6000, 18, 5);
INSERT INTO tb_personagem(nome, ataque, defesa, idade, classe_id)
VALUES ("Fiona", 7000, 7000, 80, 2);
INSERT INTO tb_personagem(nome, ataque, defesa, idade, classe_id)
VALUES ("Skallagrim", 8000, 8000, 548, 4);
INSERT INTO tb_personagem(nome, ataque, defesa, idade, classe_id)
VALUES ("Enzo", 9000, 9000, 10, 1);
INSERT INTO tb_personagem(nome, ataque, defesa, idade, classe_id)
VALUES ("Whatsappc", 10000, 10000, 20, 4);

SELECT *
FROM tb_personagem
WHERE ataque > 2000;

SELECT *
FROM tb_personagem
WHERE defesa BETWEEN 1000 AND 2000;

SELECT *
FROM tb_personagem
WHERE nome LIKE '%c%';

SELECT *
FROM tb_personagem P INNER JOIN tb_classe C
ON P.classe_id = C.id;

SELECT *
FROM tb_personagem P INNER JOIN tb_classe C
ON P.classe_id = C.id
WHERE C.id = 5;