-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/09/2024 às 13:17
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
-- Banco de dados: `loja`
--
CREATE DATABASE IF NOT EXISTS `loja` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loja`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `cidade`, `estado`) VALUES
(1, 'Ana Silva', 'ana.silva@email.com', 'Belo Horizonte', 'MG'),
(2, 'Bruno Lima', 'bruno.lima@email.com', 'São Paulo', 'SP'),
(3, 'Carlos Souza', 'carlos.souza@email.com', 'Rio de Janeiro', 'RJ'),
(4, 'Daniela Pereira', 'daniela.pereira@email.com', 'Salvador', 'BA'),
(5, 'Eduardo Costa', 'eduardo.costa@email.com', 'Curitiba', 'PR'),
(6, 'Fernanda Oliveira', 'fernanda.oliveira@email.com', 'Porto Alegre', 'RS'),
(7, 'Gustavo Santos', 'gustavo.santos@email.com', 'Recife', 'PE'),
(8, 'Helena Alves', 'helena.alves@email.com', 'Manaus', 'AM'),
(9, 'Igor Rodrigues', 'igor.rodrigues@email.com', 'Fortaleza', 'CE'),
(10, 'Juliana Ferreira', 'juliana.ferreira@email.com', 'Brasília', 'DF'),
(11, 'Karina Martins', 'karina.martins@email.com', 'Campinas', 'SP'),
(12, 'Leonardo Rocha', 'leonardo.rocha@email.com', 'Florianópolis', 'SC'),
(13, 'Mariana Gomes', 'mariana.gomes@email.com', 'Vitória', 'ES'),
(14, 'Nicolas Barbosa', 'nicolas.barbosa@email.com', 'Goiânia', 'GO'),
(15, 'Olivia Castro', 'olivia.castro@email.com', 'Maceió', 'AL'),
(16, 'Paulo Araujo', 'paulo.araujo@email.com', 'João Pessoa', 'PB'),
(17, 'Renata Nunes', 'renata.nunes@email.com', 'Belém', 'PA'),
(18, 'Sérgio Lopes', 'sergio.lopes@email.com', 'Campo Grande', 'MS'),
(19, 'Tatiana Ribeiro', 'tatiana.ribeiro@email.com', 'Natal', 'RN'),
(20, 'Vinícius Mendes', 'vinicius.mendes@email.com', 'São Luís', 'MA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `data_pedido` date DEFAULT NULL,
  `valortotal` decimal(10,2) DEFAULT NULL,
  `formapagamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `id_cliente`, `data_pedido`, `valortotal`, `formapagamento`) VALUES
(1, 1, '2024-08-15', 120.50, 'Cartão de Crédito'),
(2, 1, '2024-08-20', 85.00, 'Boleto'),
(3, 2, '2024-08-16', 75.30, 'Cartão de Débito'),
(4, 2, '2024-08-22', 150.00, 'Transferência Bancária'),
(5, 3, '2024-08-17', 200.00, 'Cartão de Crédito'),
(6, 3, '2024-08-23', 95.50, 'Boleto'),
(7, 4, '2024-08-18', 50.00, 'Cartão de Débito'),
(8, 4, '2024-08-24', 30.00, 'Dinheiro'),
(9, 5, '2024-08-19', 99.99, 'Transferência Bancária'),
(10, 5, '2024-08-25', 150.75, 'Cartão de Crédito'),
(11, 6, '2024-08-20', 130.00, 'Cartão de Débito'),
(12, 6, '2024-08-26', 60.00, 'Boleto'),
(13, 7, '2024-08-21', 140.50, 'Cartão de Crédito'),
(14, 7, '2024-08-27', 80.00, 'Transferência Bancária'),
(15, 8, '2024-08-22', 90.00, 'Dinheiro'),
(16, 8, '2024-08-28', 170.00, 'Cartão de Débito'),
(17, 9, '2024-08-23', 110.00, 'Boleto'),
(18, 9, '2024-08-29', 120.00, 'Cartão de Crédito'),
(19, 10, '2024-08-24', 250.00, 'Transferência Bancária'),
(20, 10, '2024-08-30', 45.50, 'Dinheiro'),
(21, 11, '2024-08-25', 70.00, 'Cartão de Débito'),
(22, 11, '2024-08-31', 190.00, 'Boleto'),
(23, 12, '2024-08-26', 200.00, 'Cartão de Crédito'),
(24, 12, '2024-09-01', 150.00, 'Transferência Bancária'),
(25, 13, '2024-08-27', 99.99, 'Dinheiro'),
(26, 13, '2024-09-02', 85.50, 'Cartão de Débito'),
(27, 14, '2024-08-28', 120.50, 'Cartão de Crédito'),
(28, 14, '2024-09-03', 60.00, 'Boleto'),
(29, 15, '2024-08-29', 180.00, 'Transferência Bancária'),
(30, 15, '2024-09-04', 75.00, 'Dinheiro'),
(31, 16, '2024-08-30', 130.00, 'Cartão de Débito'),
(32, 16, '2024-09-05', 95.00, 'Cartão de Crédito'),
(33, 17, '2024-08-31', 50.00, 'Boleto'),
(34, 17, '2024-09-06', 115.50, 'Dinheiro'),
(35, 18, '2024-09-01', 220.00, 'Transferência Bancária'),
(36, 18, '2024-09-07', 80.00, 'Cartão de Débito'),
(37, 19, '2024-09-02', 140.00, 'Cartão de Crédito'),
(38, 19, '2024-09-08', 99.99, 'Boleto'),
(39, 20, '2024-09-03', 175.00, 'Dinheiro'),
(40, 20, '2024-09-09', 60.00, 'Transferência Bancária'),
(41, 1, '2024-09-04', 110.00, 'Cartão de Débito'),
(42, 2, '2024-09-05', 150.00, 'Boleto'),
(43, 3, '2024-09-06', 200.00, 'Cartão de Crédito'),
(44, 4, '2024-09-07', 85.50, 'Dinheiro'),
(45, 5, '2024-09-08', 130.00, 'Cartão de Débito'),
(46, 6, '2024-09-09', 75.00, 'Transferência Bancária');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
