-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/11/2024 às 21:23
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
-- Banco de dados: `lojinha`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `cpf` varchar(9) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `ativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `cpf`, `nome`, `ativo`) VALUES
(1, '123456789', 'João Silva', 1),
(2, '987654321', 'Maria Souza', 0),
(3, '456789123', 'Carlos Oliveira', 1),
(4, '789123456', 'Ana Pereira', 1),
(5, '321654987', 'Bruno Santos', 0),
(6, '654987321', 'Paulo Henrique', 1),
(7, '789654123', 'Cláudia Martins', 1),
(8, '987321654', 'Rodrigo Freitas', 0),
(9, '123789456', 'Luciana Gomes', 1),
(10, '456123789', 'Gustavo Faria', 1),
(11, '321987654', 'Beatriz Alves', 0),
(12, '654321987', 'Diego Carvalho', 1),
(13, '987654987', 'Aline Costa', 0),
(14, '123456987', 'Rafael Souza', 1),
(15, '456987123', 'Juliana Matos', 0),
(16, '789123789', 'Henrique Oliveira', 1),
(17, '987654654', 'Sérgio Melo', 0),
(18, '321789456', 'Fernanda Ramos', 1),
(19, '456123456', 'Camila Lopes', 1),
(20, '789654321', 'Marcelo Ferreira', 1),
(21, '654987654', 'Patrícia Duarte', 0),
(22, '987321987', 'Renata Lima', 1),
(23, '123789123', 'Felipe Barbosa', 1),
(24, '321654321', 'Carolina Braga', 0),
(25, '456987456', 'André Silva', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `cpf` varchar(9) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `ativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `cpf`, `nome`, `email`, `cargo`, `salario`, `endereco`, `ativo`) VALUES
(1, '112233445', 'Lucas Almeida', 'lucas.almeida@email.com', 'Gerente', 4500.00, 'Rua A, 123', 1),
(2, '223344556', 'Fernanda Lima', 'fernanda.lima@email.com', 'Vendedora', 3500.00, 'Rua B, 456', 1),
(3, '334455667', 'Pedro Costa', 'pedro.costa@email.com', 'Assistente', 2800.00, 'Rua C, 789', 0),
(4, '445566778', 'Juliana Mendes', 'juliana.mendes@email.com', 'Analista', 5200.00, 'Rua D, 101', 1),
(5, '556677889', 'Rafael Rodrigues', 'rafael.rodrigues@email.com', 'Estagiário', 1200.00, 'Rua E, 202', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` decimal(38,2) DEFAULT NULL,
  `estoque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `descricao`, `valor`, `estoque`) VALUES
(1, 'Produto A', 50.00, 100),
(2, 'Produto B', 75.50, 200),
(3, 'Produto C', 120.99, 150),
(4, 'Produto D', 250.00, 50),
(5, 'Produto E', 10.99, 500),
(6, 'Produto F', 35.00, 120),
(7, 'Produto G', 99.99, 80),
(8, 'Produto H', 15.49, 300),
(9, 'Produto I', 89.99, 60),
(10, 'Produto J', 20.00, 500),
(11, 'Produto K', 150.00, 40),
(12, 'Produto L', 12.00, 180),
(13, 'Produto M', 299.99, 25),
(14, 'Produto N', 45.00, 75),
(15, 'Produto O', 75.00, 50),
(16, 'Produto P', 130.99, 90),
(17, 'Produto Q', 15.00, 210),
(18, 'Produto R', 55.50, 160),
(19, 'Produto S', 85.00, 70),
(20, 'Produto T', 19.99, 220),
(21, 'Produto U', 99.00, 45),
(22, 'Produto V', 199.00, 30),
(23, 'Produto W', 5.99, 600),
(24, 'Produto X', 350.00, 20),
(25, 'Produto Y', 149.99, 85),
(26, 'Produto Z', 49.99, 125),
(27, 'Produto AA', 109.50, 100),
(28, 'Produto BB', 17.89, 210),
(29, 'Produto CC', 229.00, 65),
(30, 'Produto DD', 450.00, 15),
(31, 'Produto EE', 89.00, 70),
(32, 'Produto FF', 69.99, 50),
(33, 'Produto GG', 39.90, 200),
(34, 'Produto HH', 55.00, 40),
(35, 'Produto II', 22.50, 250),
(36, 'Produto JJ', 199.99, 35),
(37, 'Produto KK', 18.49, 400),
(38, 'Produto LL', 299.00, 25),
(39, 'Produto MM', 79.00, 95),
(40, 'Produto NN', 9.99, 500),
(41, 'Produto OO', 149.00, 55),
(42, 'Produto PP', 33.00, 300),
(43, 'Produto QQ', 67.50, 80),
(44, 'Produto RR', 99.99, 60),
(45, 'Produto SS', 24.00, 275),
(46, 'Produto TT', 199.50, 45),
(47, 'Produto UU', 349.99, 20),
(48, 'Produto VV', 20.99, 390),
(49, 'Produto WW', 60.00, 110),
(50, 'Produto XX', 44.50, 160),
(51, 'Produto YY', 210.00, 35),
(52, 'Produto ZZ', 89.00, 100),
(53, 'Produto AAA', 5.99, 500),
(54, 'Produto BBB', 125.00, 55),
(55, 'Produto CCC', 79.99, 75);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf_unico` (`cpf`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf_unico` (`cpf`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
