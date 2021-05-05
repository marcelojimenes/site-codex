-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 05-Maio-2021 às 23:05
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `codex`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alternativa`
--

CREATE TABLE `alternativa` (
  `id_alternativa` int(11) NOT NULL,
  `id_exercicio` int(11) NOT NULL,
  `ds_alternativa` varchar(255) NOT NULL,
  `tp_alternativa` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alternativa`
--

INSERT INTO `alternativa` (`id_alternativa`, `id_exercicio`, `ds_alternativa`, `tp_alternativa`) VALUES
(1, 1, 'Linguagens interpretadas pelo usuário final, onde as informações são\nprocessadas pelo navegador', '2'),
(2, 1, 'Linguagens que atuam do lado do usuário, de modo que ele possua total\nacesso', '2'),
(3, 1, 'Linguagens que atuam do lado do servidor, de modo que o usuário final não\ntenha acesso', '1'),
(4, 1, 'Linguagens que apenas o navegador interpreta, onde as informações são\nprocessadas pelo servidor.', '2'),
(5, 2, 'Linguagem de estilização em cascata, utilizada na estruturação de páginas\nweb', '2'),
(6, 2, 'Linguagem de marcação de hipertexto, utilizada na estruturação de páginas\nweb', '1'),
(7, 2, 'Folhas de estilização em cascata, utilizada para adicionar estilos à páginas\nweb', '2'),
(8, 2, 'Linguagem de programação, utilizada na criação e estilização de páginas\nweb', '2'),
(9, 3, 'Linguagem de estilização de folhas, utilizada para estilizar páginas web', '2'),
(10, 3, 'Folhas de estilização em cascata, utilizada para estruturação de páginas\nweb', '2'),
(11, 3, 'Linguagem de programação, utilizada para dar um estilo à páginas web', '2'),
(12, 3, 'Folhas de estilização em cascata, utilizada para dar um estilo à páginas\nweb', '1'),
(13, 4, 'São nomes diferentes para uma mesma linguagem que executa uma\nmesma função', '2'),
(14, 4, 'Embora possuam nomes semelhantes, não existe nenhuma relação entre\nelas', '1'),
(15, 4, 'São linguagens orientadas a objetos', '2'),
(16, 4, 'São linguagens criadas pela mesma empresa', '2'),
(17, 5, 'ações interpretadas por uma máquina', '2'),
(18, 5, 'Sequências infinitas de ações executáveis que visam obter soluções para\nproblemas', '2'),
(19, 5, 'Sequências finitas de ações executáveis que visam obter soluções para\nproblemas', '1'),
(20, 5, 'Procedimentos resumidos e ambíguos de como realizar uma ação', '2'),
(21, 6, 'linguagem que consiste no que o usuário pode concluir a partir da leitura do\ncódigo', '2'),
(22, 6, 'linguagem onde não há necessidade de conhecer a sintaxe de nenhuma\nlinguagem de programação', '2'),
(23, 6, 'inguagem que não possui sintaxe fixa, onde o usuário executa as ações de\nacordo com sua interpretação da teoria', '2'),
(24, 6, 'linguagem de programação em que o código fonte nessa linguagem é\nexecutado por um programa de computador.', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id_conteudo` int(11) NOT NULL,
  `id_linguagem` int(11) NOT NULL,
  `ds_conteudo` text NOT NULL,
  `tt_aula` varchar(30) NOT NULL,
  `tt_conteudo` varchar(30) NOT NULL,
  `ds_aula` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `conteudo`
--

INSERT INTO `conteudo` (`id_conteudo`, `id_linguagem`, `ds_conteudo`, `tt_aula`, `tt_conteudo`, `ds_aula`) VALUES
(1, 1, 'Nesta aula teremos o primeiro contato com PHP, o\nque é e qual sua finalidade.', 'Aula 1', 'Server-side e Client-side', 'Introdução à PHP'),
(2, 5, 'Nesta aula teremos o primeiro contato com HTML, o\nque é e qual sua finalidade.', 'Aula 1', 'Linguagens de marcação', 'Introdução à HTML-5'),
(3, 4, 'Nesta aula teremos o primeiro contato com CSS, o\nque é e qual sua finalidade.', 'Aula 1', 'Folhas de estilização em casca', 'Introdução à CSS'),
(4, 2, 'Nesta aula teremos o primeiro contato com JS, o\nque é e qual sua finalidade.', 'Aula 1', 'Linguagens interpretadas', 'Introdução à JavaScript'),
(5, 3, 'Nesta aula teremos o primeiro contato com Java, o\nque é e qual sua finalidade.', 'Aula 1', 'Algoritmos', 'Introdução à Java'),
(6, 6, 'Nesta aula teremos o primeiro contato com Java, o\nque é e qual sua finalidade.', 'Aula 1', 'Linguagens interpretadas', 'Introdução à Python');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicios`
--

CREATE TABLE `exercicios` (
  `id_exercicio` int(11) NOT NULL,
  `id_conteudo` int(11) NOT NULL,
  `ds_exercicio` text NOT NULL,
  `tp_exercicio` char(1) NOT NULL,
  `tt_exercicio` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `exercicios`
--

INSERT INTO `exercicios` (`id_exercicio`, `id_conteudo`, `ds_exercicio`, `tp_exercicio`, `tt_exercicio`) VALUES
(1, 1, 'As linguagens de programação server-side são...', 's', 'conceitos'),
(2, 2, 'Qual das alternativas abaixo descreve melhor o que é HTML?', 's', 'o que é HTML'),
(3, 3, 'Qual das alternativas abaixo descreve melhor o que é CSS?', 'p', 'o que é css ?'),
(4, 4, 'Qual a relação entre JavaScript e Java?', 's', 'Java x JavaScript'),
(5, 5, 'Falando de programação, algoritmos são...', 's', 'definição de algoritmos'),
(6, 6, 'Qual das alternativas abaixo descreve melhor o que é uma\nlinguagem interpretada?', 's', 'linguagem interpretada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `linguagens`
--

CREATE TABLE `linguagens` (
  `nome` varchar(30) NOT NULL,
  `tipo` char(1) NOT NULL,
  `descricao` varchar(30) NOT NULL,
  `id_linguagem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `linguagens`
--

INSERT INTO `linguagens` (`nome`, `tipo`, `descricao`, `id_linguagem`) VALUES
('PHP', 'h', 'Linguagem server side', 1),
('JavaScript', 'h', 'Linguagem de script', 2),
('Java', 'h', 'Linguagem forte em OOP', 3),
('CSS', 'f', 'linguagem de estilização', 4),
('HTML', 'f', 'Linguagem de programação', 5),
('Python', 'b', 'Linguagem forte para A.I.', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pontos`
--

CREATE TABLE `pontos` (
  `id_pontos` int(11) NOT NULL,
  `id_exercicio` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `qt_pontos` int(11) NOT NULL,
  `dt_pontos` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `progresso`
--

CREATE TABLE `progresso` (
  `id_usuario` int(11) NOT NULL,
  `id_conteudo` int(11) NOT NULL,
  `avanco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

CREATE TABLE `resposta` (
  `id_resposta` int(11) NOT NULL,
  `id_exercicio` int(11) NOT NULL,
  `id_alternativa` int(11) NOT NULL,
  `dt_resposta` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `tipo_usuario` char(1) NOT NULL,
  `nick` varchar(30) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `origem` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `tipo_usuario`, `nick`, `senha`, `nome`, `email`, `origem`) VALUES
(1, '2', 'henriquecardoso-dev', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Henrique Cardoso', 'henrique@gmail.com', 'c'),
(2, '0', 'kauassilva', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Tchawãn', 'kauassilva@gmail.com', 'c'),
(3, '0', 'marcelo', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'MarcelãoDaMassa', 'marcelo@gmail.com', 'c');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alternativa`
--
ALTER TABLE `alternativa`
  ADD PRIMARY KEY (`id_alternativa`);

--
-- Índices para tabela `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id_conteudo`);

--
-- Índices para tabela `exercicios`
--
ALTER TABLE `exercicios`
  ADD PRIMARY KEY (`id_exercicio`);

--
-- Índices para tabela `linguagens`
--
ALTER TABLE `linguagens`
  ADD PRIMARY KEY (`id_linguagem`);

--
-- Índices para tabela `pontos`
--
ALTER TABLE `pontos`
  ADD PRIMARY KEY (`id_pontos`);

--
-- Índices para tabela `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`id_resposta`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alternativa`
--
ALTER TABLE `alternativa`
  MODIFY `id_alternativa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id_conteudo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `exercicios`
--
ALTER TABLE `exercicios`
  MODIFY `id_exercicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `linguagens`
--
ALTER TABLE `linguagens`
  MODIFY `id_linguagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `pontos`
--
ALTER TABLE `pontos`
  MODIFY `id_pontos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `resposta`
--
ALTER TABLE `resposta`
  MODIFY `id_resposta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
