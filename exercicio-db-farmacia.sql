CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.--
CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    tipo VARCHAR(64) NOT NULL
);

-- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia. --
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(128) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria_id BIGINT
);

-- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.--
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id);

-- Insira 5 registros na tabela tb_categorias. --
INSERT INTO tb_categorias (nome, tipo) VALUES ("Perfumaria","Beleza");
INSERT INTO tb_categorias (nome, tipo) VALUES ("Cosmetico","Maquiagem");
INSERT INTO tb_categorias (nome, tipo) VALUES ("Remédio","Saúde");
INSERT INTO tb_categorias (nome, tipo) VALUES ("Suplemento","Bem Estar");
INSERT INTO tb_categorias (nome, tipo) VALUES ("Preservativo","Cuidados Pessoais");

-- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias. --
INSERT INTO tb_produtos (nome, preco, categoria_id) VALUES ("Shampoo Palmolive", 19.90 ,1 );
INSERT INTO tb_produtos (nome, preco, categoria_id) VALUES ("Esmalte de Unha", 7.90 ,2 );
INSERT INTO tb_produtos (nome, preco, categoria_id) VALUES ("Rivotril", 17.50 ,3 );
INSERT INTO tb_produtos (nome, preco, categoria_id) VALUES ("Jontex", 9.80, 5 );
INSERT INTO tb_produtos (nome, preco, categoria_id) VALUES ("Whey Intregal Médica", 59.99 ,4 );
INSERT INTO tb_produtos (nome, preco, categoria_id) VALUES ("Creatina Monohidratada", 78.80 ,4 );
INSERT INTO tb_produtos (nome, preco, categoria_id) VALUES ("BCAA", 44.50, 4 );
INSERT INTO tb_produtos (nome, preco, categoria_id) VALUES ("Prudence sabor morango", 8.90 ,5 );
INSERT INTO tb_produtos (nome, preco, categoria_id) VALUES ("Doril em Gotas 15ml", 12.50 ,3 );
INSERT INTO tb_produtos (nome, preco, categoria_id) VALUES ("Doflex 8 comprimidos", 14.90 ,3 );

-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00. --
SELECT * FROM tb_produtos WHERE preco > 50;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 10,00 e R$ 30,00. --
SELECT * FROM tb_produtos WHERE preco BETWEEN 10 AND 30;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome --
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.--
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, --
-- onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).--
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id WHERE tb_categorias.nome = "cosmetico";