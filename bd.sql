-- Criar banco de dados
CREATE DATABASE sistema;

-- Expressão SQL para informar à IDE que este é o banco que estará em uso.
USE sistema;

-- Expressão SQL para criar a tabela de usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Expressão SQL para criar a tabela de formecedores
CREATE TABLE fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- Expressão SQL para criar a tabela de produtos relacionada via FK com a tabela de fornecedores
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fornecedor_id INT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2),
    FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(id)
);

-- Expressão SQL para cadastrar um usuário
INSERT INTO usuarios (usuario, senha) VALUES ('Ignacio', MD5('123'));
INSERT INTO usuarios (usuario, senha) VALUES ('Valmir', MD5('123'));
INSERT INTO usuarios (usuario, senha) VALUES ('Nadja', MD5('123'));
INSERT INTO usuarios (usuario, senha) VALUES ('Denis', MD5('123'));