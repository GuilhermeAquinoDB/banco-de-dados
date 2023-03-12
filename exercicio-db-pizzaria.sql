CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas. --
CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    tamanho VARCHAR(64) NOT NULL
);

-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria. --
CREATE TABLE tb_pizzas (
	id  BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    sabor VARCHAR(64) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

-- Insira 7 registros na tabela tb_categorias. --
INSERT INTO tb_categorias (nome, tamanho) VALUES ("Doce","Medio");
INSERT INTO tb_categorias (nome, tamanho) VALUES ("Doce","Grande");
INSERT INTO tb_categorias (nome, tamanho) VALUES ("Doce","Pequena");
INSERT INTO tb_categorias (nome, tamanho) VALUES ("Salgado","Grande");
INSERT INTO tb_categorias (nome, tamanho) VALUES ("Salgado","Pequena");
INSERT INTO tb_categorias (nome, tamanho) VALUES ("Vegana","Medio");
INSERT INTO tb_categorias (nome, tamanho) VALUES ("Vegana","Grande");

-- Insira no minimo 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias --
INSERT INTO tb_pizzas (nome, sabor, preco, categoria_id) VALUES ("Calabresa da Casa","Calabresa com Cebola", 28.90, 4);
INSERT INTO tb_pizzas (nome, sabor, preco, categoria_id) VALUES ("Mussarela da Casa","Mussarela com Cebola", 29.90, 5);
INSERT INTO tb_pizzas (nome, sabor, preco, categoria_id) VALUES ("BrigaShow","Choclate 70% ao leite com granulado", 35.50, 3);
INSERT INTO tb_pizzas (nome, sabor, preco, categoria_id) VALUES ("Split","Banana fatiada finalizado com leite condessado e canela", 32.90, 2);
INSERT INTO tb_pizzas (nome, sabor, preco, categoria_id) VALUES ("Floresta Negra","Calda de chocolate branco com morango e Nutella", 37.50, 1);
INSERT INTO tb_pizzas (nome, sabor, preco, categoria_id) VALUES ("Caipira","Frango com Catupiry", 31.50, 4);
INSERT INTO tb_pizzas (nome, sabor, preco, categoria_id) VALUES ("Tropical","Calabresa, Cheddar, Bacon e Cebola", 34.90, 5);
INSERT INTO tb_pizzas (nome, sabor, preco, categoria_id) VALUES ("Explosion","Brocolis refogado no Azeite", 28.99, 6);
INSERT INTO tb_pizzas (nome, sabor, preco, categoria_id) VALUES ("Vegan","Palmito com queijo ralado", 29.20, 7);
INSERT INTO tb_pizzas (nome, sabor, preco, categoria_id) VALUES ("Aliche","Alho poró, Gorgonzola, Azeitona e Milho", 33.40, 6);
INSERT INTO tb_pizzas (nome, sabor, preco, categoria_id) VALUES ("Portuga","Presunto, Queijo Mussarela, Oregano, Azeitona Preta e Pimenta", 46.00, 4);

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 35,00.
SELECT * FROM tb_pizzas WHERE preco > 35;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 40,00 e R$ 50,00.
SELECT * FROM tb_pizzas WHERE preco > 40 AND preco < 50;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.--
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias. --
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, --
-- onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce). --
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id WHERE tb_categorias.nome = "doce";


