-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. --
CREATE DATABASE db_recursos_humano;

USE db_recursos_humano;

-- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH. --
CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cpf INT NOT NULL,
    cargo VARCHAR(20) NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);

DESC tb_colaboradores;

-- Insira nesta tabela no mínimo 5 dados (registros). --
INSERT INTO tb_colaboradores (nome, cpf, cargo, salario) VALUES ("Frascisco Silva",9840123,"Analista de Sistemas",5000.00);
INSERT INTO tb_colaboradores (nome, cpf, cargo, salario) VALUES ("Mateus Sousa",12317,"Desenvolvedor",4500.50);
INSERT INTO tb_colaboradores (nome, cpf, cargo, salario) VALUES ("João Santos",57013,"Gerente de DP",8500.70);
INSERT INTO tb_colaboradores (nome, cpf, cargo, salario) VALUES ("José Silveira",53579,"Copeiro",1450.50);
INSERT INTO tb_colaboradores (nome, cpf, cargo, salario) VALUES ("Maria Senna",55910701,"Assistente de RH",2500.00);

SELECT * FROM tb_colaboradores;

-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000. --
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000. --
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Ao término atualize um registro desta tabela através de uma query de atualização. --
UPDATE tb_colaboradores SET cargo = "Garçom" WHERE id = 3;

