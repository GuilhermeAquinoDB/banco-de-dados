CREATE DATABASE db_e_commerce;

USE db_e_commerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    peso INT NOT NULL,
    descricao VARCHAR(20) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

ALTER TABLE tb_produtos MODIFY descricao VARCHAR(255);

DESC tb_produtos;
SELECT * FROM tb_produtos;

-- Insira nesta tabela no mínimo 8 dados (registros) --
INSERT INTO tb_produtos (nome, peso, descricao, valor) VALUES ("Placa Mãe",2 ,"Placas para computadores",2500.00);
INSERT INTO tb_produtos (nome, peso, descricao, valor) VALUES ("HD",5 ,"memoria para computadores",700.00);
INSERT INTO tb_produtos (nome, peso, descricao, valor) VALUES ("Fonte de Energia",3 ,"fonte de energia para computadores",500.00);
INSERT INTO tb_produtos (nome, peso, descricao, valor) VALUES ("Memoria Ram",1 ,"Placa de memoria para computadores",1500.00);
INSERT INTO tb_produtos (nome, peso, descricao, valor) VALUES ("Teclado",1 ,"Teclado para computadores",250.50);
INSERT INTO tb_produtos (nome, peso, descricao, valor) VALUES ("Mouse",1 ,"Mouse para computadores",85.70);
INSERT INTO tb_produtos (nome, peso, descricao, valor) VALUES ("Monitor 14P FullScren",6 ,"monito 14 polegas FullHD para computadores",1900.00);
INSERT INTO tb_produtos (nome, peso, descricao, valor) VALUES ("Suporte para Notebook",1 ,"suporte para laptops",25.30);

-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500. --
SELECT * FROM tb_produtos WHERE valor > 500;

-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500. --
SELECT * FROM tb_produtos WHERE valor < 500;

-- Ao término atualize um registro desta tabela através de uma query de atualização. --
UPDATE tb_produtos SET valor = 92.50 WHERE id = "6";