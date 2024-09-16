-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2024 às 14:08
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codLugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codLugar`, `capacidade`, `andar`) VALUES
(1, 100, 'Térreo'),
(2, 150, 'Primeiro Andar'),
(3, 200, 'Segundo Andar'),
(4, 100, 'Subsolo'),
(5, 50, 'Terceiro Andar'),
(6, 75, 'Quarto Andar'),
(7, 80, 'Quinto Andar'),
(8, 60, 'Estacionamento VIP'),
(9, 120, 'Garagem'),
(10, 100, 'Subsolo 2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `dtNasc` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dtNasc`, `nome`) VALUES
('12345678901', '1985-07-15 00:00:00', 'Mario'),
('15975348601', '1987-03-27 00:00:00', 'Ryu'),
('32165498701', '1992-09-30 00:00:00', 'Samus'),
('36925814701', '1982-10-13 00:00:00', 'Sonic'),
('45612378901', '1980-12-09 00:00:00', 'Link'),
('65478932101', '1989-04-04 00:00:00', 'Chun-Li'),
('74185296301', '1994-06-22 00:00:00', 'Zelda'),
('85274196301', '1996-02-21 00:00:00', 'Pikachu'),
('96325874101', '1976-08-17 00:00:00', 'Bowser'),
('98765432101', '1990-11-03 00:00:00', 'Luigi');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod` int(11) NOT NULL,
  `horSaida` datetime DEFAULT NULL,
  `dtEntrada` datetime DEFAULT NULL,
  `horEntrada` datetime DEFAULT NULL,
  `dtSaida` datetime DEFAULT NULL,
  `placa` varchar(20) DEFAULT NULL,
  `codLugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`cod`, `horSaida`, `dtEntrada`, `horEntrada`, `dtSaida`, `placa`, `codLugar`) VALUES
(1, '2024-09-15 15:30:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 'ABC1234', 1),
(2, '2024-09-15 17:00:00', '2024-09-15 00:00:00', '0000-00-00 00:00:00', '2024-09-15 00:00:00', 'XYZ5678', 2),
(3, '2024-09-14 16:45:00', '2024-09-14 00:00:00', '0000-00-00 00:00:00', '2024-09-14 00:00:00', 'JKL9876', 3),
(4, '2024-09-14 18:30:00', '2024-09-14 00:00:00', '0000-00-00 00:00:00', '2024-09-14 00:00:00', 'QWE3456', 4),
(5, '2024-09-13 19:00:00', '2024-09-13 00:00:00', '0000-00-00 00:00:00', '2024-09-13 00:00:00', 'RTY7890', 5),
(6, '2024-09-13 15:45:00', '2024-09-13 00:00:00', '0000-00-00 00:00:00', '2024-09-13 00:00:00', 'UOP1234', 6),
(7, '2024-09-12 14:30:00', '2024-09-12 00:00:00', '0000-00-00 00:00:00', '2024-09-12 00:00:00', 'BNM6789', 7),
(8, '2024-09-12 13:45:00', '2024-09-12 00:00:00', '0000-00-00 00:00:00', '2024-09-12 00:00:00', 'POI4321', 8),
(9, '2024-09-11 16:15:00', '2024-09-11 00:00:00', '0000-00-00 00:00:00', '2024-09-11 00:00:00', 'MNB6543', 9),
(10, '2024-09-11 15:00:00', '2024-09-11 00:00:00', '0000-00-00 00:00:00', '2024-09-11 00:00:00', 'VCX9870', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`) VALUES
(1, 'Sedan'),
(2, 'Hatchback'),
(3, 'SUV'),
(4, 'Crossover'),
(5, 'Caminhonete'),
(6, 'Conversível'),
(7, 'Esportivo'),
(8, 'Van'),
(9, 'Minivan'),
(10, 'Sedan Luxo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(20) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `codModelo` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codModelo`, `ano`) VALUES
('ABC1234', 'Vermelho', '12345678901', 1, 2010),
('BNM6789', 'Amarelo', '85274196301', 7, 2015),
('JKL9876', 'Azul', '45612378901', 3, 2005),
('MNB6543', 'Verde', '65478932101', 9, 2020),
('POI4321', 'Laranja', '15975348601', 8, 2008),
('QWE3456', 'Branco', '74185296301', 4, 2012),
('RTY7890', 'Preto', '96325874101', 5, 2019),
('UOP1234', 'Cinza', '32165498701', 6, 2000),
('VCX9870', 'Prata', '36925814701', 10, 2018),
('XYZ5678', 'Verde', '98765432101', 2, 2011);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codLugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codLugar` (`codLugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codModelo` (`codModelo`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codLugar`) REFERENCES `andar` (`codLugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
