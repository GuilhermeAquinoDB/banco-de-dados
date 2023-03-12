CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    pontuacao INT NOT NULL,
    habilidade VARCHAR(64) NOT NULL
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(64) NOT NULL,
	nivel INT, 
	ataque INT, 
	defesa INT, 
	classe_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

-- Insira 5 registros na tabela tb_classes --
INSERT INTO tb_classes(nome, habilidade, pontuacao)
VALUES ("Feiticerio", "Bola de Fogo", 1000);

INSERT INTO tb_classes (nome, habilidade, pontuacao)
VALUES ("Arqueiro", "Chuva de Flechas", 2500);

INSERT INTO tb_classes (nome, habilidade, pontuacao)
VALUES ("Druida", "Gelo", 4000);

INSERT INTO tb_classes (nome, habilidade, pontuacao)
VALUES ("Guerreiro", "Excalibur", 4700);

INSERT INTO tb_classes (nome, habilidade, pontuacao)
VALUES ("Curandeiro", "Ressureição", 3600);

-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes. --
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Mokona", 100, 300, 100, 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Minseok", 100, 3000, 2800, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Junmyeon", 100, 2000, 2000, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Baekhyun", 10, 1000, 1500, 3);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Jongdae", 1000, 1300, 1110, 4);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Chanyeol", 500, 2300, 3000, 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Kyungsoo", 400, 1800, 2200, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Jongin", 300, 1300, 850, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Sehun", 150, 2100, 900, 3);

SELECT * FROM tb_personagens;

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000 --
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000. --
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome. --
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes. --
SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros). --
SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id
WHERE tb_classes.id = 2;

