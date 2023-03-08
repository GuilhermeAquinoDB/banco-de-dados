CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudante (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    ra INT NOT NULL,
    nota INT NOT NULL,
    data_nascimento DATE NOT NULL
);

ALTER TABLE tb_estudante MODIFY nota float;

DESC tb_estudante;

SELECT * FROM tb_estudante;

-- Insira nesta tabela no mínimo 8 dados (registros) --
INSERT INTO tb_estudante (nome, ra, nota, data_nascimento) VALUES ("João Silva",2951753 ,7.0,'1993-06-25');
INSERT INTO tb_estudante (nome, ra, nota, data_nascimento) VALUES ("Maria Neves",972018 ,4.5,'1994-01-14');
INSERT INTO tb_estudante (nome, ra, nota, data_nascimento) VALUES ("Kezia Pimenta",241609 ,6.2,'1991-03-03');
INSERT INTO tb_estudante (nome, ra, nota, data_nascimento) VALUES ("Arnaldo Gomes",6498067 ,3.9,'1994-02-09');
INSERT INTO tb_estudante (nome, ra, nota, data_nascimento) VALUES ("Dilsinho Novaes",7410982 ,8.5,'1995-12-29');
INSERT INTO tb_estudante (nome, ra, nota, data_nascimento) VALUES ("Alindo Cruz",1951663 ,6.7,'1996-11-22');
INSERT INTO tb_estudante (nome, ra, nota, data_nascimento) VALUES ("Xande de Pilares",2710987 ,8.2,'1997-09-16');
INSERT INTO tb_estudante (nome, ra, nota, data_nascimento) VALUES ("Dudu Nobre",2951753 ,10.0,'1992-10-17');

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0. --
SELECT * FROM tb_estudante WHERE nota > 7.0;

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0. --
SELECT * FROM tb_estudante WHERE nota < 7.0;

-- Ao término atualize um registro desta tabela através de uma query de atualização. --
UPDATE 	tb_estudante SET nota = 4.6 WHERE id = 4;