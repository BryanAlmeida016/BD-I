-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Set-2024 às 22:44
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `codaluguel` int(10) NOT NULL,
  `datafim` date NOT NULL,
  `datainicio` date NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  `vencimento` date NOT NULL,
  `idinquilino` int(11) DEFAULT NULL,
  `idcorretor` int(11) DEFAULT NULL,
  `idimovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `aluguel`
--

INSERT INTO `aluguel` (`codaluguel`, `datafim`, `datainicio`, `descricao`, `valor`, `vencimento`, `idinquilino`, `idcorretor`, `idimovel`) VALUES
(1, '2024-12-13', '2024-01-01', 'Aluguel do apartamento 101', 2090.00, '2024-01-05', 1, 1, 1),
(2, '2024-09-30', '2024-02-01', 'Aluguel da casa 202', 1500.00, '2024-02-05', 2, 2, 2),
(3, '2024-11-16', '2024-03-01', 'Aluguel do apartamento 303', 975.00, '2024-03-05', 3, 3, 3),
(4, '2024-12-31', '2024-04-01', 'Aluguel da casa 404', 5150.00, '2024-04-05', 4, 4, 4),
(5, '2024-11-20', '2024-05-01', 'Aluguel da cobertura 505', 3430.00, '2024-05-05', 5, 5, 5),
(6, '2025-02-17', '2024-06-01', 'Aluguel da sala comercial 606', 2300.00, '2024-06-05', 6, 6, 6),
(7, '2024-10-23', '2024-07-01', 'Aluguel da chácara 707', 1810.00, '2024-07-05', 7, 7, 7),
(8, '2025-01-20', '2024-08-01', 'Aluguel do sobrado 808', 1999.00, '2024-08-05', 8, 8, 8),
(9, '2025-05-22', '2024-09-01', 'Aluguel do loft 909', 4009.00, '2024-09-05', 9, 9, 9),
(10, '2024-11-10', '2024-10-01', 'Aluguel do duplex 010', 1280.00, '2024-10-05', 10, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `idCorretor` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `corretor`
--

INSERT INTO `corretor` (`idCorretor`, `email`, `telefone`, `nome`) VALUES
(1, 'm4l3n1a@email.com', '11987654321', 'Malenia'),
(2, 'rannidasmeialua@email.com', '21987654321', 'Ranni'),
(3, 'carmo.araujo@gmail.com', '31987654321', 'radahn'),
(4, 'paiexemplar@email.com', '41987654321', 'Radagon'),
(5, 'oprimeiroanel@email.com', '51987654321', 'Godfrey'),
(6, 'agourod3l4s@email.com', '61987654321', 'Margit'),
(7, 'etudom3u@email.com', '71987654321', 'Godrick'),
(8, 'm1quel1nhadograu@email.com', '81987654321', 'Miquela'),
(9, 'copiamasnfazigual@email.com', '91987654321', 'Rellana'),
(10, 'vobrilhaoxente@email.com', '02987654321', 'Midra');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idendereco` int(11) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `numero` int(11) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idendereco`, `cidade`, `cep`, `numero`, `rua`, `bairro`, `complemento`, `estado`) VALUES
(1, 'Ribeirâo Pires', '09454-230', 12, 'Palmital', 'Jardim Verão', 'Casa', 'São Paulo'),
(2, 'Ribeirâo Peres', '53564-752', 164, 'Azeitonos', 'Quintal Outono', 'Casa', 'São Paulo'),
(3, 'Ribeirâo Pines', '98534-213', 45, 'Pepinoses', 'Garagem Inverno', 'Casa', 'São Paulo'),
(4, 'Ribeirâo Cires', '24541-761', 98, 'Calabresos', 'Calçada Primavera', 'Casa', 'São Paulo'),
(5, 'Ribeirâo Ceris', '43898-647', 340, 'Tomatos', 'Riacho de Fevereiro', 'Apartamento', 'São Paulo'),
(6, 'Ribeirâo Ripes', '73654-588', 720, 'Ceboloide', 'Marés de Abril', 'Casa', 'São Paulo'),
(7, 'Ribeirâo Renes', '28764-124', 86, 'Couveiros', 'Ondas de Março', 'Casa', 'Minas Gerais'),
(8, 'Ribeirâo Sires', '92235-432', 699, 'Pierão', 'Aquifero de Maio', 'Casa', 'São Paulo'),
(9, 'Ribeirâo Cines', '54323-987', 236, 'Salamenses', 'Lagoa de Junho', 'Casa', 'Paraná'),
(10, 'Ribeirâo Penis', '09434-580', 33, 'Dragonaits', 'Poça de Julho', 'Casa', 'São Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereço`
--

CREATE TABLE `endereço` (
  `idendereço` int(30) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `CEP` varchar(255) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `numero` int(10) NOT NULL,
  `idproprietario` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `endereço`
--

INSERT INTO `endereço` (`idendereço`, `cidade`, `bairro`, `CEP`, `rua`, `estado`, `complemento`, `numero`, `idproprietario`) VALUES
(1, 'São Paulo', 'Centro', '01000-000', 'Rua A', 'SP', 'Apto 101', 123, 1),
(2, 'Rio de Janeiro', 'Copacabana', '22000-000', 'Avenida Atlântica', 'RJ', NULL, 456, 2),
(3, 'Belo Horizonte', 'Savassi', '30100-000', 'Rua B', 'MG', 'Cobertura', 789, 3),
(4, 'Curitiba', 'Batel', '80200-000', 'Rua C', 'PR', NULL, 321, 4),
(5, 'Porto Alegre', 'Moinhos de Vento', '90500-000', 'Avenida D', 'RS', 'Casa 2', 654, 5),
(6, 'Salvador', 'Barra', '40100-000', 'Rua E', 'BA', 'Edifício Solaris', 987, 6),
(7, 'Brasília', 'Asa Sul', '70200-000', 'SQN 102', 'DF', 'Bloco C', 147, 7),
(8, 'Fortaleza', 'Meireles', '60100-000', 'Rua F', 'CE', NULL, 258, 8),
(9, 'Recife', 'Boa Viagem', '51000-000', 'Avenida G', 'PE', 'Apto 901', 369, 9),
(10, 'Manaus', 'Ponta Negra', '69000-000', 'Rua H', 'AM', 'Casa 1', 741, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiador`
--

CREATE TABLE `fiador` (
  `idfiador` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `idendereco` int(11) DEFAULT NULL,
  `idinquilino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `fiador`
--

INSERT INTO `fiador` (`idfiador`, `email`, `telefone`, `rg`, `cpf`, `nome`, `idendereco`, `idinquilino`) VALUES
(1, 'jose.silva@example.com', '111223344', 'RG12345678', 'CPF12345678901', 'José Silva', 1, 2),
(2, 'maria.souza@example.com', '222334455', 'RG23456789', 'CPF23456789012', 'Maria Souza', 2, 3),
(3, 'pedro.almeida@example.com', '333445566', 'RG34567890', 'CPF34567890123', 'Pedro Almeida', 3, 4),
(4, 'ana.pereira@example.com', '444556677', 'RG45678901', 'CPF45678901234', 'Ana Pereira', 4, 5),
(5, 'lucas.oliveira@example.com', '555667788', 'RG56789012', 'CPF56789012345', 'Lucas Oliveira', 5, 6),
(6, 'juliana.martins@example.com', '666778899', 'RG67890123', 'CPF67890123456', 'Juliana Martins', 6, 7),
(7, 'roberto.santos@example.com', '777889900', 'RG78901234', 'CPF78901234567', 'Roberto Santos', 7, 8),
(8, 'carla.lima@example.com', '888990011', 'RG89012345', 'CPF89012345678', 'Carla Lima', 8, 9),
(9, 'rafael.goncalves@example.com', '999001122', 'RG90123456', 'CPF90123456789', 'Rafael Gonçalves', 9, 10),
(10, 'luana.mendes@example.com', '000112233', 'RG01234567', 'CPF01234567890', 'Luana Mendes', 10, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `idfoto` int(100) NOT NULL,
  `midias` varchar(255) DEFAULT NULL,
  `idimovel` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `fotos`
--

INSERT INTO `fotos` (`idfoto`, `midias`, `idimovel`) VALUES
(1, 'foto1_apartamento.jpg', 1),
(2, 'foto2_apartamento.jpg', 1),
(3, 'foto1_casa_piscina.jpg', 2),
(4, 'foto2_casa_piscina.jpg', 2),
(5, 'foto1_kitnet.jpg', 3),
(6, 'foto2_kitnet.jpg', 3),
(7, 'foto1_cobertura.jpg', 4),
(8, 'foto2_cobertura.jpg', 4),
(9, 'foto1_sobrado.jpg', 5),
(10, 'foto2_sobrado.jpg', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `idimovel` int(10) NOT NULL,
  `disponivel` bit(1) NOT NULL,
  `area` varchar(255) NOT NULL,
  `suite` bit(1) NOT NULL,
  `banheiros` int(11) NOT NULL,
  `complemento` varchar(255) NOT NULL,
  `garagem` bit(1) NOT NULL,
  `lavanderia` bit(1) NOT NULL,
  `piscina` bit(1) NOT NULL,
  `comodos` bit(1) NOT NULL,
  `idmidida` int(11) DEFAULT NULL,
  `idproprietario` int(11) DEFAULT NULL,
  `idendereco` int(11) DEFAULT NULL,
  `quintal` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`idimovel`, `disponivel`, `area`, `suite`, `banheiros`, `complemento`, `garagem`, `lavanderia`, `piscina`, `comodos`, `idmidida`, `idproprietario`, `idendereco`, `quintal`) VALUES
(1, b'1', '120m²', b'1', 2, 'Apto 101', b'1', b'1', b'0', b'1', 1, 1, 1, b'0'),
(2, b'0', '80m²', b'0', 1, 'Casa 202', b'0', b'1', b'1', b'1', 2, 2, 2, b'1'),
(3, b'1', '150m²', b'1', 3, 'Casa 303', b'1', b'1', b'1', b'1', 3, 3, 3, b'1'),
(4, b'0', '200m²', b'1', 4, 'Apartamento 404', b'1', b'1', b'0', b'1', 4, 4, 4, b'0'),
(5, b'1', '95m²', b'1', 2, 'Cobertura 505', b'1', b'0', b'1', b'1', 5, 5, 5, b'0'),
(6, b'1', '110m²', b'0', 1, 'Sala Comercial 606', b'0', b'0', b'0', b'1', 6, 6, 6, b'1'),
(7, b'0', '175m²', b'1', 3, 'Chácara 707', b'1', b'1', b'1', b'1', 7, 7, 7, b'0'),
(8, b'1', '130m²', b'1', 2, 'Sobrado 808', b'1', b'1', b'0', b'1', 8, 8, 8, b'1'),
(9, b'1', '140m²', b'1', 2, 'Loft 909', b'0', b'1', b'1', b'1', 9, 9, 9, b'0'),
(10, b'0', '160m²', b'1', 3, 'Duplex 010', b'1', b'0', b'1', b'1', 10, 10, 10, b'1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `idinquilino` int(10) NOT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `fiador` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `salario` decimal(7,2) DEFAULT NULL,
  `datanasc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `inquilino`
--

INSERT INTO `inquilino` (`idinquilino`, `rg`, `fiador`, `telefone`, `nome`, `email`, `cpf`, `salario`, `datanasc`) VALUES
(1, '34.423.762-4', 'Pedro Almeida', '(11)98432-0385', 'Enzo Krabbs', 'enzinhorei4@gmail.com', '273.856.356-56', 2100.00, '2000-04-06'),
(2, '75.586.678-6', 'Juliana Martins', '(11)95478-4820', 'Sem Gramas', 'noflorestas12345678@outlook.com', '256.285.684-45', 1990.00, '1995-06-13'),
(3, '83.674.134-9', 'Carla Lima', '(11)23456-9837', 'Kelly Santos', 'chatadopovao@gmail.com', '678.629.052-03', 2460.00, '1992-11-23'),
(4, '58.347.723-1', 'Ana Pereira', '(11)24383-8731', 'Small Paulin', 'opequenopaulo@gmail.com', '763.498.235-49', 3200.00, '1999-02-05'),
(5, '92.432.673-3', 'Luana Mendes', 'Luana', 'Pedrinho Gameplays', 'pedr0j0g4@hotmail.com', '189.745.285-88', 5100.00, '2002-05-17'),
(6, '93.524.452-5', 'Rafael Gonçalves', '(11)27685-8552', 'Espirro Gabrieloson', 'wolkv1b3s@gmail.com', '523.560.274-32', 1500.00, '2005-07-06'),
(7, '72.364.921-2', 'Lucas Oliveira', '(11)24658-7328', 'Mariana Danada', 'tosolteir4@etec.sp.gov.br', '262.369.734-69', 4620.00, '1996-01-03'),
(8, '37.254.912-7', 'Maria Souza', '(11)90813-5272', 'Paranorman Movie', 'euvejoc01s4s@gmail,com', '666.350.730-27', 2050.00, '1989-12-25'),
(9, '82.649.134-6', 'José Silva', '(11)94264-7242', 'Michel de Tokyo', 'deliquentestbmchoram@gmail.com', '236.502.760-94', 2050.00, '1988-10-10'),
(10, '57.234.815-8', 'Roberto Santos', '(11)96420-6735', 'Evellyn Trairas', 'evellyn5@etec.sp.gov.br', '436.859.306-48', 2050.00, '2000-08-28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `midias`
--

CREATE TABLE `midias` (
  `idmidida` int(11) NOT NULL,
  `midia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `midias`
--

INSERT INTO `midias` (`idmidida`, `midia`) VALUES
(1, 'foto_local_001.jpeg'),
(2, 'foto_local_002.png'),
(3, 'foto_local_003.jpeg'),
(4, 'foto_local_004.png'),
(5, 'foto_local_005.jpeg'),
(6, 'foto_local_006.png'),
(7, 'foto_local_007.jpeg'),
(8, 'foto_local_008.png'),
(9, 'foto_local_009.jpeg'),
(10, 'foto_local_010.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `idproprietario` int(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `pix` varchar(255) DEFAULT NULL,
  `banco` varchar(255) DEFAULT NULL,
  `agencia` varchar(255) NOT NULL,
  `idendereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`idproprietario`, `email`, `telefone`, `nome`, `pix`, `banco`, `agencia`, `idendereco`) VALUES
(1, 'jackson@example.com', '111223344', 'Jack Fuller', 'pixjack123', 'Banco do Brasil', '1234', 1),
(2, 'maria.luiza@example.com', '222334455', 'Maria Luiza', 'pixmarialuiza456', 'Itaú', '5678', 2),
(3, 'keithalmeida.31@example.com', '333445566', 'Keith de Almeida', 'keithania789', 'Bradesco', '9101', 3),
(4, 'nataliaregina@example.com', '444556677', 'Natalia Regina', 'regisdasneves012', 'Santander', '1122', 4),
(5, 'valdirbarbosa@example.com', '555667788', 'Valdir Barbosa', 'valdirbarbosa345', 'Caixa Econômica', '3344', 5),
(6, 'alexandremoraes@example.com', '666778899', 'Alexandre de Moraes', 'xandinho678', 'Banrisul', '5566', 6),
(7, 'andrezagomez@example.com', '777889900', 'Andreza Gomez', 'dedezania901', 'HSBC', '7788', 7),
(8, 'stevenuniverso@example.com', '888990011', 'Steven Universo', 'diamond234', 'Banco Inter', '9900', 8),
(9, 'gumballwatterson@example.com', '999001122', 'Gumball Watterson', 'chicletao567', 'Banco Original', '1122', 9),
(10, 'finndetudo@example.com', '000112233', 'Finn Murtens', 'thehero890', 'Sicoob', '3344', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`codaluguel`),
  ADD KEY `idinquilino` (`idinquilino`),
  ADD KEY `idcorretor` (`idcorretor`),
  ADD KEY `idimovel` (`idimovel`);

--
-- Índices para tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`idCorretor`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idendereco`),
  ADD UNIQUE KEY `cep` (`cep`);

--
-- Índices para tabela `endereço`
--
ALTER TABLE `endereço`
  ADD PRIMARY KEY (`idendereço`),
  ADD KEY `idproprietario` (`idproprietario`);

--
-- Índices para tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`idfiador`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD KEY `idendereco` (`idendereco`),
  ADD KEY `idinquilino` (`idinquilino`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`idfoto`),
  ADD KEY `idimovel` (`idimovel`);

--
-- Índices para tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`idimovel`),
  ADD KEY `idproprietario` (`idproprietario`),
  ADD KEY `idendereco` (`idendereco`),
  ADD KEY `idmidida` (`idmidida`);

--
-- Índices para tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`idinquilino`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `rg` (`rg`);

--
-- Índices para tabela `midias`
--
ALTER TABLE `midias`
  ADD PRIMARY KEY (`idmidida`);

--
-- Índices para tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`idproprietario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `pix` (`pix`),
  ADD KEY `idendereco` (`idendereco`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `codaluguel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `idCorretor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereço`
--
ALTER TABLE `endereço`
  MODIFY `idendereço` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `idfiador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `idfoto` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `idimovel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `idinquilino` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `midias`
--
ALTER TABLE `midias`
  MODIFY `idmidida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `idproprietario` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`idinquilino`) REFERENCES `inquilino` (`idinquilino`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`idcorretor`) REFERENCES `corretor` (`idcorretor`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`idimovel`) REFERENCES `imovel` (`idimovel`);

--
-- Limitadores para a tabela `endereço`
--
ALTER TABLE `endereço`
  ADD CONSTRAINT `endereço_ibfk_1` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`);

--
-- Limitadores para a tabela `fiador`
--
ALTER TABLE `fiador`
  ADD CONSTRAINT `fiador_ibfk_1` FOREIGN KEY (`idendereco`) REFERENCES `endereco` (`idendereco`),
  ADD CONSTRAINT `fiador_ibfk_2` FOREIGN KEY (`idinquilino`) REFERENCES `inquilino` (`idinquilino`);

--
-- Limitadores para a tabela `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`idimovel`) REFERENCES `imovel` (`idimovel`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`),
  ADD CONSTRAINT `imovel_ibfk_2` FOREIGN KEY (`idendereco`) REFERENCES `endereco` (`idendereco`),
  ADD CONSTRAINT `imovel_ibfk_3` FOREIGN KEY (`idmidida`) REFERENCES `midias` (`idmidida`);

--
-- Limitadores para a tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD CONSTRAINT `proprietario_ibfk_1` FOREIGN KEY (`idendereco`) REFERENCES `endereco` (`idendereco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
