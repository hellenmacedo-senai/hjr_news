-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 20-Out-2022 às 16:34
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hjr`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(100) NOT NULL,
  `email_cliente` varchar(140) NOT NULL,
  `senha_cliente` varchar(16) NOT NULL,
  `nasc_cliente` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id_cliente`, `nome_cliente`, `email_cliente`, `senha_cliente`, `nasc_cliente`) VALUES
(1, 'Julia Dahnert', 'Dahnert@gmail.com', 'Senha1', '2004-08-09'),
(2, 'juliaa', 'jula@gmail.com', '####', '0000-00-00'),
(3, 'Juliette Freire', 'julliete.freire@gmail.com', 'juju123', '1999-03-12'),
(4, 'Maria', 'maria@gmail.com', '123', '2001-04-10'),
(5, 'RAFAELA CRISTINA DA MAIA', 'rafaeelacrisrina.maia@gmail.com', '23323232', '2005-03-22'),
(6, 'Ricardo Blablabla', 'ricardo@gmail.com', 'ricardo1', '2004-09-14'),
(7, 'Rafaela Maia', 'rafaela_c_maia@estudante.sc.senai.br', '2123233', '0000-00-00'),
(8, 'Hellen Macedo', 'hellen@gmail.com', 'hellen123', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `experiencia` varchar(100) NOT NULL,
  `melhoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `feedback`
--

INSERT INTO `feedback` (`id`, `id_cliente`, `experiencia`, `melhoria`) VALUES
(1, 5, 'O site é muito bom', 'não tem nada pra melhorar, tudo perfeito.'),
(2, 4, 'mt ruim', 'mt coisa'),
(3, 4, 'mt ruim', 'mt coisa'),
(4, 4, 'não consigo avaliar as noticia', 'quero meu dinheiro de volta');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `id` int(11) NOT NULL,
  `nome_cliente` varchar(30) NOT NULL,
  `sobrenome_cliente` varchar(30) NOT NULL,
  `cartao_cliente` int(50) NOT NULL,
  `validade_cartao` date NOT NULL,
  `cvv_cartao` int(3) NOT NULL,
  `cpf_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
