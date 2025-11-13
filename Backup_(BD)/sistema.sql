-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/09/2024 às 18:56
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `nome`, `email`, `telefone`, `imagem`) VALUES
(1, 'Ferrari', 'ferrari@gmail.com', '(11) 3087-0199', 'img/66e0284ad8b7f_ferrari.png'),
(2, 'Lamborghini', 'lamborghini@gmail.com', '(11) 3061-3300', 'img/66e028876cd9d_lamborghini.jpg'),
(3, 'BMW', 'bmw@gmail.com', '(11) 4122-8222', 'img/66e028bd28221_bmw.jpg'),
(4, 'Porsche', 'porsche@gmail.com', '(11) 5644-6700', 'img/66e028f6a49bf_porsche.jpg'),
(5, 'Maserati', 'maserati@gmail.com', '(11) 3065-7474', 'img/66e029329925c_maserati.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `fornecedor_id` int(11) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `fornecedor_id`, `nome`, `descricao`, `preco`, `imagem`) VALUES
(1, 1, 'LaFerrari', 'A LaFerrari é o primeiro Híbrido feito pela Ferrari, proporcionando a mais alta potência.', 4500000.00, 'img/66e029d9abe23_laferrari.jpg'),
(2, 2, 'Urus', 'O Lamborghini Urus é um SUV produzido pela marca italiana Lamborghini.', 4000000.00, 'img/66e02a73db138_urus.jpg'),
(3, 3, 'X5', 'Motor: O modelo 2025 tem um motor 3.0 I6 turbo de 313 cv e 45,9 kgfm, além de um motor elétrico de 197 cv e 28,5 kgfm.', 800000.00, 'img/66e02ae4e4534_x5.jpg'),
(4, 4, 'Porsche 911', 'É um carro desportivo produzido pela alemã Porsche AG de Stuttgart, Alemanha desde 1964.', 1000000.00, 'img/66e02b5b3ecf3_porsche911.jpg'),
(5, 5, 'Maserati MC20', 'Motor V6 3.0 biturbo, batizado de Nettuno, que produz 630 cavalos de potência e 74,5 kgfm de torque.', 2500000.00, 'img/66e02c2d7e98f_mc20.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `senha`) VALUES
(1, 'Ignacio', '202cb962ac59075b964b07152d234b70'),
(2, 'Valmir', '202cb962ac59075b964b07152d234b70'),
(3, 'Nadja', '202cb962ac59075b964b07152d234b70'),
(4, 'Denis', '202cb962ac59075b964b07152d234b70');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fornecedor_id` (`fornecedor_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
