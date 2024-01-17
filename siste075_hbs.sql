-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 30/06/2017 às 09:23
-- Versão do servidor: 5.5.51-38.2
-- Versão do PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `siste075_hbs`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `associacao`
--

CREATE TABLE IF NOT EXISTS `associacao` (
  `id_associacao` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código da Associação',
  `nome_associacao` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT ' da Associação',
  `situacao_associacao` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Situação do Fiel (A/I)',
  PRIMARY KEY (`id_associacao`) COMMENT 'Código da Associação'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `associacao`
--

INSERT INTO `associacao` (`id_associacao`, `nome_associacao`, `situacao_associacao`) VALUES
(1, 'Senenkai', 'A'),
(2, 'Komodokai', 'A'),
(3, 'Fujinkai', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `associacao_fiel`
--

CREATE TABLE IF NOT EXISTS `associacao_fiel` (
  `id_fiel` int(11) NOT NULL COMMENT 'Código do Fiel',
  `id_templo` int(11) NOT NULL COMMENT 'Código do Templo do Fiel',
  `id_regiao` int(11) NOT NULL COMMENT 'Código da Região do Fiel',
  `id_grupo` int(11) NOT NULL COMMENT 'Código do Grupo do Fiel',
  `id_templo_anterior_associacao` int(11) NOT NULL COMMENT 'Código do Templo Anterior do Fiel',
  `id_grupo_anterior_associacao` int(11) NOT NULL COMMENT 'Código do Grupo Anterior do Fiel',
  `data_ingresso_associacao` datetime NOT NULL COMMENT 'Data de Ingresso do Fiel',
  `data_desligamento_associacao` datetime NOT NULL COMMENT 'Data de Desligamento do Fiel',
  PRIMARY KEY (`id_fiel`,`id_templo`,`id_regiao`,`id_grupo`) COMMENT 'Código do Fiel'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargo`
--

CREATE TABLE IF NOT EXISTS `cargo` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Campo Código do Cargo, Auto Incremento',
  `nome_cargo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nome do Cargo para Membros da HBS',
  `situacao_cargo` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Situação do Cargo para HBS',
  PRIMARY KEY (`id_cargo`) COMMENT 'Chave Primária'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Fazendo dump de dados para tabela `cargo`
--

INSERT INTO `cargo` (`id_cargo`, `nome_cargo`, `situacao_cargo`) VALUES
(1, 'Sacerdote', 'A'),
(2, 'Chefe de Grupo', 'A'),
(3, 'Bispo', 'A'),
(4, 'Bispo Superior', 'A'),
(5, 'Gakuto', 'A'),
(6, 'Okusan', 'A'),
(7, 'Presidente do Templo', 'A'),
(8, 'Arcebispo', 'A'),
(9, 'Minarai', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `culto`
--

CREATE TABLE IF NOT EXISTS `culto` (
  `id_culto` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código do Culto',
  `id_tipo_culto` int(11) NOT NULL COMMENT 'Código do Culto',
  `id_sacerdote` int(11) DEFAULT NULL COMMENT 'Código do Fiel/Sacerdote',
  `id_templo` int(11) DEFAULT NULL COMMENT 'Código do Templo',
  `id_regiao` int(11) DEFAULT NULL COMMENT 'Código da Região do Culto',
  `id_associacao` int(11) DEFAULT NULL COMMENT 'Código da Associação Promotora do Culto',
  `id_grupo` int(11) DEFAULT NULL COMMENT 'Código do Grupo',
  `id_fiel` int(11) DEFAULT NULL COMMENT 'Código do Fiel',
  `data_culto` datetime DEFAULT NULL COMMENT 'Data do culto',
  `hora_culto` datetime DEFAULT NULL COMMENT 'Hora do culto',
  `localizacao_culto` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Localização do Culto',
  `situacao_culto` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Situação do Culto (A)tivo (I)nativo',
  PRIMARY KEY (`id_culto`) COMMENT 'id_culto'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `culto`
--

INSERT INTO `culto` (`id_culto`, `id_tipo_culto`, `id_sacerdote`, `id_templo`, `id_regiao`, `id_associacao`, `id_grupo`, `id_fiel`, `data_culto`, `hora_culto`, `localizacao_culto`, `situacao_culto`) VALUES
(1, 2, 3, 4, 0, 0, 0, 0, '2017-06-04 00:00:00', '0000-00-00 00:00:00', 'Mogi Moderno', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `doacao`
--

CREATE TABLE IF NOT EXISTS `doacao` (
  `id_doacao` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código da Doação',
  `id_templo_doacao` int(11) NOT NULL COMMENT 'Código do Templo Doação',
  `id_templo_fiel` int(11) NOT NULL COMMENT 'Código do Templo do Fiel',
  `id_tipo_doacao` int(11) NOT NULL COMMENT 'Código da Doação',
  `id_fiel` int(11) NOT NULL COMMENT 'Código do Fiel',
  `valor_doacao_fiel` decimal(15,2) NOT NULL COMMENT 'valor recebido Templo Doação',
  `data_doacao` datetime NOT NULL COMMENT 'Data de Doacao',
  `situacao_doacao` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Situação da Doação (A)tivo (I)nativo',
  PRIMARY KEY (`id_doacao`) COMMENT 'id_doacao'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Fazendo dump de dados para tabela `doacao`
--

INSERT INTO `doacao` (`id_doacao`, `id_templo_doacao`, `id_templo_fiel`, `id_tipo_doacao`, `id_fiel`, `valor_doacao_fiel`, `data_doacao`, `situacao_doacao`) VALUES
(1, 4, 4, 1, 7, '150.00', '2017-06-21 00:00:00', 'A'),
(2, 3, 4, 1, 10, '50.00', '2017-06-23 00:00:00', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT COMMENT 'código do Estado',
  `nome_estado` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nome do Estado',
  `estado` char(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Sigla do Estado',
  `situacao_estado` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Situação do Estado',
  PRIMARY KEY (`id_estado`) COMMENT 'id_estado'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Fazendo dump de dados para tabela `estado`
--

INSERT INTO `estado` (`id_estado`, `nome_estado`, `estado`, `situacao_estado`) VALUES
(1, 'Acre', 'AC', 'A'),
(2, 'Alagoas', 'AL', 'A'),
(3, 'AmapÃ¡', 'AP', 'A'),
(4, 'Amazonas', 'AM', 'A'),
(5, 'Bahia', 'BA', 'A'),
(6, 'CearÃ¡', 'CE', 'A'),
(7, 'Distrito Federal', 'DF', 'A'),
(8, 'EspÃ­rito Santo', 'ES', 'A'),
(9, 'Goiais', 'GO', 'A'),
(10, 'MaranhÃ£o', 'MA', 'A'),
(11, 'Mato Grosso', 'MT', 'A'),
(12, 'Mato Grosso do Sul', 'MS', 'A'),
(13, 'Minas Gerais', 'MG', 'A'),
(14, 'ParÃ¡', 'PA', 'A'),
(15, 'ParaÃ­ba', 'PB', 'A'),
(16, 'ParanÃ¡', 'PR', 'A'),
(17, 'Pernambuco', 'PE', 'A'),
(18, 'PiauÃ­', 'PI', 'A'),
(19, 'Rio de Janeiro', 'RJ', 'A'),
(20, 'Rio Grande do Norte', 'RN', 'A'),
(21, 'Rio Grande do Sul', 'RS', 'A'),
(22, 'RondÃ´nia', 'RO', 'A'),
(23, 'Roraima', 'RR', 'A'),
(24, 'Santa Catarina', 'SC', 'A'),
(25, 'SÃ£o Paulo', 'SP', 'A'),
(26, 'Sergipe', 'SE', 'A'),
(27, 'Tocantins', 'TO', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `familia`
--

CREATE TABLE IF NOT EXISTS `familia` (
  `id_familia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código da Família',
  `id_responsavel` int(11) NOT NULL COMMENT 'Código do Responsável da Família',
  `nome_familia` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT ' da Associação',
  `data_inicio_familia` datetime DEFAULT NULL COMMENT 'Data de Início da Familia',
  `data_termino_familia` datetime DEFAULT NULL COMMENT 'Data de Término da Família',
  `situacao_familia` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Situação da Família (A/I)',
  PRIMARY KEY (`id_familia`) COMMENT 'Código da Família'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `familia`
--

INSERT INTO `familia` (`id_familia`, `id_responsavel`, `nome_familia`, `data_inicio_familia`, `data_termino_familia`, `situacao_familia`) VALUES
(1, 9, 'Yoahikawa', '2005-06-08 00:00:00', '1969-12-31 00:00:00', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fiel`
--

CREATE TABLE IF NOT EXISTS `fiel` (
  `id_fiel` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código do Fiel',
  `id_templo` int(11) NOT NULL COMMENT 'Código do Templo',
  `id_cargo` int(11) DEFAULT NULL COMMENT 'Código do Cargo no Templo',
  `nome_fiel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nome do Fiel',
  `sobrenome_fiel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Sobrenome do Fiel',
  `data_nascimento_fiel` datetime NOT NULL COMMENT 'Data de Nascimento do Fiel',
  `genero_fiel` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Genero do Fiel (M/F)',
  `rg_fiel` int(11) DEFAULT NULL COMMENT 'RG do Fiel',
  `data_emissao_rg_fiel` datetime DEFAULT NULL COMMENT 'Data de Emissão RG do Fiel',
  `orgao_emissor_rg` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Orgão Emissor do RG do Fiel',
  `cpf_fiel` int(11) DEFAULT NULL COMMENT 'CPF do Fiel',
  `tel_residencial_fiel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Telefone Residencial do Fiel',
  `tel_comercial_fiel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Telefone Comercial do Fiel',
  `ramal_fiel` int(11) DEFAULT NULL COMMENT 'Ramal do Fiel',
  `tel_celular_fiel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Telefone Celular do Fiel',
  `data_falecimento_fiel` datetime DEFAULT NULL COMMENT 'Data de Falecimento do Fiel',
  `id_profissao_fiel` int(11) DEFAULT NULL COMMENT 'Código da Frofissao do Fiel',
  `email_fiel` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'E-mail do Fiel',
  `data_conversao_fiel` datetime DEFAULT NULL COMMENT 'Data de Conversão do Fiel',
  `padrinho_madrinha_fiel` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Padrinho ou Madrinha do Fiel',
  `data_desligamento_fiel` datetime DEFAULT NULL COMMENT 'Data de Desligamento do Fiel',
  `observacao_fiel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Observação do Fiel',
  `situacao_fiel` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Situação do Fiel (A/I)',
  PRIMARY KEY (`id_fiel`) COMMENT 'Código do Fiel'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Fazendo dump de dados para tabela `fiel`
--

INSERT INTO `fiel` (`id_fiel`, `id_templo`, `id_cargo`, `nome_fiel`, `sobrenome_fiel`, `data_nascimento_fiel`, `genero_fiel`, `rg_fiel`, `data_emissao_rg_fiel`, `orgao_emissor_rg`, `cpf_fiel`, `tel_residencial_fiel`, `tel_comercial_fiel`, `ramal_fiel`, `tel_celular_fiel`, `data_falecimento_fiel`, `id_profissao_fiel`, `email_fiel`, `data_conversao_fiel`, `padrinho_madrinha_fiel`, `data_desligamento_fiel`, `observacao_fiel`, `situacao_fiel`) VALUES
(1, 1, 8, 'Sentyu Takassaky', NULL, '0000-00-00 00:00:00', 'M', 0, '0000-00-00 00:00:00', ',', 0, '0', '0', 0, '0', '0000-00-00 00:00:00', 8, '.', '0000-00-00 00:00:00', '.', NULL, 'Preencher dados que estão em branco', 'A'),
(2, 5, 4, 'Hoomei Saito', NULL, '0000-00-00 00:00:00', 'M', 0, '0000-00-00 00:00:00', ',', 0, '0', '0', 0, '0', '0000-00-00 00:00:00', 4, '.', '0000-00-00 00:00:00', '.', NULL, 'Preencher dados que estão em branco', 'A'),
(3, 4, 4, 'Kyohaku Correia', NULL, '0000-00-00 00:00:00', 'M', 0, '0000-00-00 00:00:00', ',', 0, '0', '0', 0, '0', '0000-00-00 00:00:00', 4, '.', '0000-00-00 00:00:00', '.', NULL, 'Preencher dados que estão em branco', 'A'),
(4, 2, 3, 'Sentoku Haikawa', NULL, '0000-00-00 00:00:00', 'M', 0, '0000-00-00 00:00:00', ',', 0, '0', '0', 0, '0', '0000-00-00 00:00:00', 3, '.', '0000-00-00 00:00:00', '.', NULL, 'Preencher dados que estão em branco', 'A'),
(5, 4, 1, 'Ryukou Saito', NULL, '0000-00-00 00:00:00', 'M', 0, '0000-00-00 00:00:00', ',', 0, '0', '0', 0, '0', '0000-00-00 00:00:00', 1, '.', '0000-00-00 00:00:00', '.', NULL, 'Preencher dados que estão em branco', 'A'),
(6, 3, 1, 'Gyouen Campos', NULL, '0000-00-00 00:00:00', 'M', 0, '0000-00-00 00:00:00', ',', 0, '0', '0', 0, '0', '0000-00-00 00:00:00', 1, '.', '0000-00-00 00:00:00', '.', NULL, 'Preencher dados que estão em branco', 'A'),
(7, 4, 1, 'Gyouan Assis', NULL, '0000-00-00 00:00:00', 'M', 0, '0000-00-00 00:00:00', ',', 0, '0', '0', 0, '0', '0000-00-00 00:00:00', 1, '.', '0000-00-00 00:00:00', '.', NULL, 'Preencher dados que estão em branco', 'A'),
(8, 1, 1, 'Gyouun Vieira', NULL, '0000-00-00 00:00:00', 'M', 0, '0000-00-00 00:00:00', ',', 0, '0', '0', 0, '0', '0000-00-00 00:00:00', 1, '.', '0000-00-00 00:00:00', '.', NULL, 'Preencher dados que estão em branco', 'A'),
(9, 1, 1, 'Myouyou Yoshikawa', NULL, '0000-00-00 00:00:00', 'M', 0, '0000-00-00 00:00:00', ',', 0, '0', '0', 0, '0', '0000-00-00 00:00:00', 1, '.', '0000-00-00 00:00:00', '.', NULL, 'Preencher dados que estão em branco', 'A'),
(10, 4, NULL, 'Washington Vale', NULL, '0000-00-00 00:00:00', 'M', 0, '0000-00-00 00:00:00', ',', 0, '0', '0', 0, '0', '0000-00-00 00:00:00', 0, '.', '0000-00-00 00:00:00', '.', NULL, 'Preencher dados que estão em branco', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `gohonzon`
--

CREATE TABLE IF NOT EXISTS `gohonzon` (
  `id_gohonzon` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código do Tipo de Gohozon',
  `nome_gohonzon` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Gohozon',
  `situacao_gohonzon` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Situação do Gohozon (A)tivo (I)nativo',
  PRIMARY KEY (`id_gohonzon`) COMMENT 'Código do Tipo de Gohozon'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `gohonzon`
--

INSERT INTO `gohonzon` (`id_gohonzon`, `nome_gohonzon`, `situacao_gohonzon`) VALUES
(1, 'DomÃ©stico', 'A'),
(2, 'Empresa', 'A'),
(3, 'Templo', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `grau`
--

CREATE TABLE IF NOT EXISTS `grau` (
  `id_grau` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código do Grau',
  `nome_grau` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'nome_grau',
  `situacao_grau` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'situacao_grau',
  PRIMARY KEY (`id_grau`) COMMENT 'Código do Grau'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `grau`
--

INSERT INTO `grau` (`id_grau`, `nome_grau`, `situacao_grau`) VALUES
(1, '10', 'A'),
(2, '25', 'I'),
(3, '50', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `id_grupo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código do Grupo',
  `id_templo` int(11) NOT NULL COMMENT 'Código do Templo',
  `id_regiao` int(11) NOT NULL COMMENT 'Código da Região do Templo',
  `nome_grupo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Nome do Grupo',
  `situacao_grupo` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Situacao do Grupo',
  PRIMARY KEY (`id_grupo`) COMMENT 'Código do Grupo',
  KEY `idx_idgrupo_idtemplo` (`id_templo`) COMMENT 'id_grupo x id_templo'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `grupo`
--

INSERT INTO `grupo` (`id_grupo`, `id_templo`, `id_regiao`, `nome_grupo`, `situacao_grupo`) VALUES
(1, 4, 4, 'Ipiranga-Alto', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `parentesco`
--

CREATE TABLE IF NOT EXISTS `parentesco` (
  `id_parentesco` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código do Parentesco',
  `parentesco` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo do Parentesco',
  `situacao_parentesco` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Situação Tipo de Parentesco',
  PRIMARY KEY (`id_parentesco`) COMMENT 'idParentesco'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Fazendo dump de dados para tabela `parentesco`
--

INSERT INTO `parentesco` (`id_parentesco`, `parentesco`, `situacao_parentesco`) VALUES
(1, 'Pai', 'A'),
(2, 'MÃ£e', 'A'),
(3, 'Filho(a)', 'A'),
(4, 'Tio(a)', 'A'),
(5, 'AvÃ´', 'A'),
(6, 'AvÃ³', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pontuacao`
--

CREATE TABLE IF NOT EXISTS `pontuacao` (
  `id_fiel` int(11) DEFAULT NULL COMMENT 'Código do Fiel',
  `id_templo` int(11) DEFAULT NULL COMMENT 'Código do Templo',
  `id_grau` int(11) DEFAULT NULL COMMENT 'Código da Pontuação',
  `id_cargo` int(11) DEFAULT NULL COMMENT 'Cargo do Fiel/Sacerdote',
  `pontuacao_fiel` int(11) DEFAULT NULL COMMENT 'Pontuação do Fiel',
  `pontuacao_cargo` int(11) DEFAULT NULL COMMENT 'Pontuação do Cargo',
  `data_pontuacao` date DEFAULT NULL COMMENT 'Data da Pontuação do Fiel',
  `situacao_pontuacao` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Situação da Pontuação'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pontuacao_cargo`
--

CREATE TABLE IF NOT EXISTS `pontuacao_cargo` (
  `id_pontuacao_cargo` int(11) DEFAULT NULL COMMENT 'Código do Fiel',
  `id_cargo` int(11) DEFAULT NULL COMMENT 'Cargo do Fiel/Sacerdote',
  `tempo` int(11) DEFAULT NULL COMMENT 'tempo mínimo do exercício do cargo',
  `pontuacao_cargo` int(11) DEFAULT NULL COMMENT 'Pontuação do Fiel',
  `situacao_pontuacao_cargo` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Situação da Pontuação'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `presenca`
--

CREATE TABLE IF NOT EXISTS `presenca` (
  `id_presenca` int(11) NOT NULL DEFAULT '0' COMMENT 'Código da Presenca',
  `id_fiel` int(11) DEFAULT NULL COMMENT 'Código do Fiel',
  `id_templo` int(11) DEFAULT NULL COMMENT 'Código do templo',
  `id_culto` int(11) DEFAULT NULL COMMENT 'Código do Culto',
  `id_grupo` int(11) DEFAULT NULL COMMENT 'Código do Grupo',
  `data_presenca` date DEFAULT NULL COMMENT 'Data de Comparecimento',
  `situacao_presenca` int(11) NOT NULL,
  PRIMARY KEY (`id_presenca`) COMMENT 'Chave Primário'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `profissao_fiel`
--

CREATE TABLE IF NOT EXISTS `profissao_fiel` (
  `id_profissao_fiel` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código Profissão Fiel',
  `nome_profissao_fiel` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nome da Profissão do Fiel',
  `situacao_fiel` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Situação do Fiel',
  PRIMARY KEY (`id_profissao_fiel`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Fazendo dump de dados para tabela `profissao_fiel`
--

INSERT INTO `profissao_fiel` (`id_profissao_fiel`, `nome_profissao_fiel`, `situacao_fiel`) VALUES
(1, 'Sacerdote', 'A'),
(2, 'Contador', 'A'),
(3, 'Analista', 'A'),
(4, 'Professor(a)', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `regiao`
--

CREATE TABLE IF NOT EXISTS `regiao` (
  `id_regiao` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código da Região',
  `id_templo` int(11) NOT NULL COMMENT 'Código do Templo do Fiel',
  `nome_regiao` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nome da Região',
  `situacao_regiao` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Situação da Região',
  PRIMARY KEY (`id_regiao`) COMMENT 'Código da Região'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Fazendo dump de dados para tabela `regiao`
--

INSERT INTO `regiao` (`id_regiao`, `id_templo`, `nome_regiao`, `situacao_regiao`) VALUES
(1, 4, 'Mogi Centro', 'A'),
(2, 4, 'Filial de Suzano', 'A'),
(3, 4, 'Cocuera', 'A'),
(4, 4, 'Ipiranga', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `templo`
--

CREATE TABLE IF NOT EXISTS `templo` (
  `id_templo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código do Templo',
  `nome_templo` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nome do Templo',
  `situacao_templo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A' COMMENT 'Situação do Templo (A/I)',
  `cnpj_templo` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CNPJ do Templo',
  `email_templo` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email do Templo',
  `telefone_templo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Telefone do Templo',
  `ramal_templo` int(11) DEFAULT NULL COMMENT 'Ramal do Templo',
  `fax_templo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Fax do Templo',
  `matriz_templo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M' COMMENT 'Situação do Templo (M/F)',
  `endereco_templo` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Endereco do Templo',
  `numero_templo` int(11) DEFAULT NULL COMMENT 'Número do Templo',
  `complemento_templo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Complemento do Templo',
  `bairro_templo` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bairro do Templo',
  `cidade_templo` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cidade do Templo',
  `uf_templo` char(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado do Templo',
  `cep_templo` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'CEP do Templo',
  `cx_postal_templo` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Caixa Postal do Templo',
  PRIMARY KEY (`id_templo`) COMMENT 'Código do Templo',
  KEY `idx_nm_templo` (`nome_templo`) COMMENT 'Nome do Templo'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Fazendo dump de dados para tabela `templo`
--

INSERT INTO `templo` (`id_templo`, `nome_templo`, `situacao_templo`, `cnpj_templo`, `email_templo`, `telefone_templo`, `ramal_templo`, `fax_templo`, `matriz_templo`, `endereco_templo`, `numero_templo`, `complemento_templo`, `bairro_templo`, `cidade_templo`, `uf_templo`, `cep_templo`, `cx_postal_templo`) VALUES
(1, 'Nikkyoji', 'A', '0', '.', '0', 0, NULL, 'M', '.', 0, '.', '.', '.', 'SP', '', '.0'),
(2, 'Taissenji', 'A', '0', '.', '0', 0, NULL, 'M', '.', 0, '.', '.', '.', 'SP', '', '.0'),
(3, 'Hompoji', 'A', '0', '.', '0', 0, NULL, 'M', '.', 0, '.', '.', '.', 'PR', '', '.0'),
(4, 'Ryushoji', 'A', '0', '.', '0', 0, NULL, 'M', '.', 0, '.', '.', '.', 'SP', '', '.0'),
(5, 'Nissenji', 'A', '0', '.', '0', 0, NULL, 'M', '.', 0, '.', '.', '.', 'SP', '', '.0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_culto`
--

CREATE TABLE IF NOT EXISTS `tipo_culto` (
  `id_culto` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código do Culto',
  `nome_culto` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo do Culto',
  `especial` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Culto Especial (S/N)',
  `situacao_culto` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Situação do Culto',
  PRIMARY KEY (`id_culto`) COMMENT 'id_culto'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Fazendo dump de dados para tabela `tipo_culto`
--

INSERT INTO `tipo_culto` (`id_culto`, `nome_culto`, `especial`, `situacao_culto`) VALUES
(2, 'Culto Mensal', 'S', 'A'),
(3, 'Assamairi', 'N', 'I'),
(4, 'Omairi', 'N', 'A'),
(5, 'Culto 4 Grandes Mestres', 'S', 'A'),
(6, 'Komioko (Grupo)', 'N', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_doacao`
--

CREATE TABLE IF NOT EXISTS `tipo_doacao` (
  `id_tipo_doacao` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código da Doação',
  `nome_tipo_doacao` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Doação',
  `centro_custo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Centro de Custo',
  `situacao_doacao` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Situação da Doação',
  PRIMARY KEY (`id_tipo_doacao`) COMMENT 'id_Doacao'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Fazendo dump de dados para tabela `tipo_doacao`
--

INSERT INTO `tipo_doacao` (`id_tipo_doacao`, `nome_tipo_doacao`, `centro_custo`, `situacao_doacao`) VALUES
(1, 'Goyushi', '1.1.11.1.', 'A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_pontuacao`
--

CREATE TABLE IF NOT EXISTS `tipo_pontuacao` (
  `id_tipo_pontuacao` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Código da Pontuação',
  `pontuacao_fiel` int(11) DEFAULT NULL COMMENT 'Pontuação do Fiel',
  `situacao_pontuacao_fiel` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Situação da Pontuação',
  PRIMARY KEY (`id_tipo_pontuacao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_usuario` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `senha_usuario` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `situacao_usuario` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_usuario` datetime DEFAULT NULL,
  `nivel_usuario` int(11) NOT NULL DEFAULT '1',
  `foto_usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_usuario`) COMMENT 'Código do Usuário',
  KEY `idx_nm_usuaropo` (`nome_usuario`) COMMENT 'Nome do Usuário'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `email_usuario`, `senha_usuario`, `situacao_usuario`, `data_usuario`, `nivel_usuario`, `foto_usuario`) VALUES
(1, 'admin', NULL, 'zcx#21', '1', NULL, 1, ''),
(2, 'gyoen', NULL, '123456', '1', NULL, 1, ''),
(3, 'wvale', NULL, 'vale2000', '1', NULL, 1, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
