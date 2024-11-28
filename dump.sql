/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: tcc
-- ------------------------------------------------------
-- Server version	11.4.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Current Database: `tcc`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tcc` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;

USE `tcc`;

--
-- Table structure for table `Doacoes`
--

DROP TABLE IF EXISTS `Doacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Doacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_instituicao` int(11) DEFAULT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `tipo_pagamento` varchar(255) DEFAULT NULL,
  `data` date DEFAULT curdate(),
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_instituicao` (`id_instituicao`),
  CONSTRAINT `Doacoes_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id`),
  CONSTRAINT `Doacoes_ibfk_2` FOREIGN KEY (`id_instituicao`) REFERENCES `Instituicao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doacoes`
--

LOCK TABLES `Doacoes` WRITE;
/*!40000 ALTER TABLE `Doacoes` DISABLE KEYS */;
INSERT INTO `Doacoes` VALUES
(1,1,1,'100','Cartão de Crédito','2024-11-28'),
(2,1,1,'100','PayPal','2024-11-28');
/*!40000 ALTER TABLE `Doacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Instituicao`
--

DROP TABLE IF EXISTS `Instituicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Instituicao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `area_atuacao` varchar(100) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `Instituicao_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Instituicao`
--

LOCK TABLES `Instituicao` WRITE;
/*!40000 ALTER TABLE `Instituicao` DISABLE KEYS */;
INSERT INTO `Instituicao` VALUES
(1,1,'Educação Infantil','Rua das Flores, 123, Salvador, BA','Caminhando juntos rumo a grandes mudanças.'),
(2,2,'Proteção Animal','Avenida dos Animais, 456, Salvador, BA','Protegendo vidas, cultivando amor por nossos amigos de quatro patas.'),
(3,3,'Saúde Comunitária','Rua da Saúde, 789, Salvador, BA','Unindo pessoas para transformar histórias.'),
(4,4,'Cultura e Artes','Praça da Cultura, 101, Salvador, BA','Espalhando conhecimento e esperança em cada tom.'),
(5,5,'Assistência Social','Travessa da Esperança, 202, Salvador, BA','Renovando sonhos, construindo futuros.'),
(6,6,'Direitos Humanos','Rua da Liberdade, 303, Salvador, BA','Por direitos, igualdade e justiça para todos.'),
(7,7,'Meio Ambiente','Avenida Verde, 404, Salvador, BA','Cultivando um planeta mais saudável e sustentável.'),
(8,8,'Desenvolvimento Comunitário','Rua da União, 505, Salvador, BA','Juntos, somos mais fortes para transformar realidades.'),
(9,9,'Educação de Jovens e Adultos','Rua dos Estudantes, 606, Salvador, BA','Educando mentes, construindo futuros brilhantes.'),
(10,10,'Tecnologia para Inclusão','Rua do Futuro, 707, Salvador, BA','Tecnologia ao alcance de todos.'),
(11,11,'Alimentação e Nutrição','Avenida da Saúde, 808, Salvador, BA','Promovendo alimentação saudável para um amanhã melhor.'),
(12,12,'Empoderamento Feminino','Rua das Mulheres, 909, Salvador, BA','Empoderando mulheres, transformando o mundo.'),
(13,13,'Esportes e Recreação','Avenida do Esporte, 1010, Salvador, BA','Esporte para unir, incluir e inspirar.'),
(14,14,'Defesa dos Direitos das Crianças','Rua da Infância, 1111, Salvador, BA','Cuidando do presente para garantir o futuro.'),
(15,15,'Geração de Renda','Travessa do Trabalho, 1212, Salvador, BA','Oportunidades hoje para conquistas de amanhã.'),
(16,16,'Cidadania e Justiça','Avenida da Justiça, 1313, Salvador, BA','Construindo uma sociedade mais justa para todos.'),
(17,17,'Promoção da Saúde Mental','Rua do Bem-estar, 1414, Salvador, BA','Cuidando da mente para uma vida plena.'),
(18,18,'Arte e Educação','Rua da Criatividade, 1515, Salvador, BA','Inspiração e aprendizado para transformar gerações.'),
(19,19,'Inclusão Digital','Rua da Tecnologia, 1616, Salvador, BA','Reduzindo distâncias com inclusão tecnológica.'),
(20,20,'Desenvolvimento Rural','Estrada do Campo, 1717, Salvador, BA','Por uma agricultura responsável e um futuro verde.');
/*!40000 ALTER TABLE `Instituicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Servico`
--

DROP TABLE IF EXISTS `Servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Servico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `disponibilidade` int(11) DEFAULT 0,
  `vagas` int(11) DEFAULT NULL,
  `carga_horaria` int(11) DEFAULT NULL,
  `instituicao_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `instituicao_id` (`instituicao_id`),
  CONSTRAINT `Servico_ibfk_1` FOREIGN KEY (`instituicao_id`) REFERENCES `Instituicao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Servico`
--

LOCK TABLES `Servico` WRITE;
/*!40000 ALTER TABLE `Servico` DISABLE KEYS */;
INSERT INTO `Servico` VALUES
(1,'Aula de Reforço Escolar','Auxiliar crianças e adolescentes no reforço escolar, com foco em português e matemática.',0,5,10,1),
(2,'Assistência a Animais Resgatados','Ajudar na alimentação, limpeza e cuidados gerais com os animais resgatados.',0,8,15,2),
(3,'Oficina de Primeiros Socorros','Ensinar primeiros socorros básicos à comunidade local.',0,3,8,3),
(4,'Aulas de Dança para Crianças','Organizar e ministrar aulas de dança para crianças de 5 a 10 anos.',0,4,12,4),
(5,'Distribuição de Cestas Básicas','Organizar a distribuição de alimentos para famílias carentes.',0,6,5,5),
(6,'Orientação Jurídica','Oferecer orientação jurídica gratuita para a comunidade.',0,2,20,6),
(7,'Plantio de Árvores','Participar de ações de plantio de árvores em áreas urbanas e rurais.',0,10,6,7),
(8,'Capacitação Profissional','Oferecer oficinas de capacitação profissional para jovens.',0,7,8,8),
(9,'Aulas de Alfabetização','Ensinar leitura e escrita para jovens e adultos.',0,5,12,9),
(10,'Treinamento em Tecnologia Básica','Ajudar na inclusão digital através de treinamentos de informática básica.',0,4,10,10),
(11,'Oficinas de Nutrição','Promover oficinas de nutrição e alimentação saudável.',0,3,4,11),
(12,'Grupo de Apoio para Mulheres','Facilitar grupos de discussão e apoio para mulheres.',0,6,7,12),
(13,'Organização de Eventos Esportivos','Ajudar a organizar eventos esportivos para a comunidade.',0,8,9,13),
(14,'Atividades Lúdicas para Crianças','Organizar atividades recreativas para crianças em situação de vulnerabilidade.',0,7,6,14),
(15,'Oficinas de Artesanato','Ensinar técnicas de artesanato para geração de renda.',0,9,10,15),
(16,'Aulas sobre Direitos Humanos','Promover palestras e oficinas sobre direitos humanos.',0,3,5,16),
(17,'Palestras sobre Saúde Mental','Oferecer palestras sobre cuidados com a saúde mental e emocional.',0,4,3,17),
(18,'Aulas de Artes Visuais','Ensinar técnicas de pintura e desenho para crianças e adolescentes.',0,5,10,18),
(19,'Treinamento de Alfabetização Digital','Ajudar idosos a aprender o uso de computadores e smartphones.',0,6,8,19),
(20,'Assistência em Agricultura Urbana','Apoiar projetos de agricultura urbana e hortas comunitárias.',0,8,12,20),
(21,'Apoio em Campanhas Educativas','Auxiliar em campanhas educativas sobre temas sociais e ambientais.',0,5,6,1),
(22,'Organização de Feiras Culturais','Ajudar na organização de feiras e eventos culturais.',0,4,14,4),
(23,'Treinamento para Primeiros Socorros','Realizar treinamentos de primeiros socorros para a comunidade local.',0,2,10,3);
/*!40000 ALTER TABLE `Servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES
(1,'Pequenos Passos','71987654321','contato@pequenospassos.org',1),
(2,'Amigos dos Animais','71986543210','contato@amigosdosanimais.org',1),
(3,'Viva Comunidade','71985432109','contato@vivacomunidade.org',1),
(4,'Cores do Saber','71984321098','contato@coresdosaber.org',1),
(5,'Esperança e Vida','71983210987','contato@esperancaevida.org',1),
(6,'Voz da Liberdade','71982109876','contato@vozdaliberdade.org',1),
(7,'Verde Vida','71981098765','contato@verdevida.org',1),
(8,'União e Força','71980987654','contato@uniaoforca.org',1),
(9,'Aprender e Crescer','71979876543','contato@aprenderecrescer.org',1),
(10,'Inclusão Tech','71978765432','contato@inclusaotech.org',1),
(11,'Sabor e Saúde','71977654321','contato@saboresaude.org',1),
(12,'Mulheres em Ação','71976543210','contato@mulheresemacao.org',1),
(13,'Juntos no Esporte','71975432109','contato@juntosnoesporte.org',1),
(14,'Infância Protegida','71974321098','contatoo@infanciaprotegida.org',1),
(15,' Trabalho e Futuro','71973210987','contato@trabalhofuturo.org',1),
(16,'Justiça e Cidadania','71972109876','contato@justicacidadania.org',1),
(17,'Bem-estar Mental','71971098765','contato@bemestamental.org',1),
(18,'Criar e Educar','71970987654','contato@criareeeducar.org',1),
(19,'Conexão Digital','71969876543','contato@conexaodigital.org',1),
(20,'Campo Sustentável','71968765432','contato@camposustentavel.org',1),
(21,'Ana Silva','11987654321','ana.silva01@example.com',1),
(22,'Bruno Costa','21987654322','bruno.costa02@example.com',1),
(23,'Carla Mendes','31987654323','carla.mendes03@example.com',1),
(24,'Daniel Souza','41987654324','daniel.souza04@example.com',1),
(25,'Elaine Rocha','51987654325','elaine.rocha05@example.com',1),
(26,'Fabio Almeida','61987654326','fabio.almeida06@example.com',1),
(27,'Gabriela Lima','71987654327','gabriela.lima07@example.com',1),
(28,'Henrique Oliveira','81987654328','henrique.oliveira08@example.com',1),
(29,'Isabela Freitas','91987654329','isabela.freitas09@example.com',1),
(30,'Jorge Ramos','11987654330','jorge.ramos10@example.com',1),
(31,'Karen Teixeira','21987654331','karen.teixeira11@example.com',1),
(32,'Luis Santos','31987654332','luis.santos12@example.com',1),
(33,'Maria Souza','41987654333','maria.souza13@example.com',1),
(34,'Nelson Barros','51987654334','nelson.barros14@example.com',1),
(35,'Olga Pereira','61987654335','olga.pereira15@example.com',1),
(36,'Paulo Cesar','71987654336','paulo.cesar16@example.com',1),
(37,'Renata Dias','81987654337','renata.dias17@example.com',1),
(38,'Sérgio Mota','91987654338','sergio.mota18@example.com',1),
(39,'Tânia Luz','11987654339','tania.luz19@example.com',1),
(40,'Victor Sousa','21987654340','victor.sousa20@example.com',1),
(41,'Amanda Carvalho','31987654341','amanda.carvalho21@example.com',1),
(42,'Brenda Rocha','41987654342','brenda.rocha22@example.com',1),
(43,'Carlos Silva','51987654343','carlos.silva23@example.com',1),
(44,'Débora Vieira','61987654344','debora.vieira24@example.com',1),
(45,'Eduardo Campos','71987654345','eduardo.campos25@example.com',1),
(46,'Fernanda Borges','81987654346','fernanda.borges26@example.com',1),
(47,'Gustavo Nunes','91987654347','gustavo.nunes27@example.com',1),
(48,'Helena Cardoso','11987654348','helena.cardoso28@example.com',1),
(49,'Igor Lima','21987654349','igor.lima29@example.com',1),
(50,'Juliana Fernandes','31987654350','juliana.fernandes30@example.com',1),
(51,'Kleber Oliveira','41987654351','kleber.oliveira31@example.com',1),
(52,'Laura Mendes','51987654352','laura.mendes32@example.com',1),
(53,'Marcelo Farias','61987654353','marcelo.farias33@example.com',1),
(54,'Nina Rocha','71987654354','nina.rocha34@example.com',1),
(55,'Otávio Ribeiro','81987654355','otavio.ribeiro35@example.com',1),
(56,'Patrícia Leal','91987654356','patricia.leal36@example.com',1),
(57,'Roberto Almeida','11987654357','roberto.almeida37@example.com',1),
(58,'Simone Castro','21987654358','simone.castro38@example.com',1),
(59,'Tiago Azevedo','31987654359','tiago.azevedo39@example.com',1),
(60,'Vanessa Santos','41987654360','vanessa.santos40@example.com',1),
(61,'Alexandre Moreira','51987654361','alexandre.moreira41@example.com',1),
(62,'Beatriz Soares','61987654362','beatriz.soares42@example.com',1),
(63,'Caio Martins','71987654363','caio.martins43@example.com',1),
(64,'Denise Oliveira','81987654364','denise.oliveira44@example.com',1),
(65,'Emerson Lima','91987654365','emerson.lima45@example.com',1),
(66,'Fernanda Castro','11987654366','fernanda.castro46@example.com',1),
(67,'Giovanni Melo','21987654367','giovanni.melo47@example.com',1),
(68,'Henrique Silva','31987654368','henrique.silva48@example.com',1),
(69,'Isabel Costa','41987654369','isabel.costa49@example.com',1),
(70,'João Carlos','51987654370','joao.carlos50@example.com',1),
(71,'Karina Lopes','61987654371','karina.lopes51@example.com',1),
(72,'Lucas Freitas','71987654372','lucas.freitas52@example.com',1),
(73,'Marcela Dias','81987654373','marcela.dias53@example.com',1),
(74,'Nicolas Silva','91987654374','nicolas.silva54@example.com',1),
(75,'Olívia Costa','11987654375','olivia.costa55@example.com',1),
(76,'Pedro Henrique','21987654376','pedro.henrique56@example.com',1),
(77,'Quênia Oliveira','31987654377','quenia.oliveira57@example.com',1),
(78,'Ricardo Nunes','41987654378','ricardo.nunes58@example.com',1),
(79,'Sabrina Martins','51987654379','sabrina.martins59@example.com',1),
(80,'Tatiana Souza','61987654380','tatiana.souza60@example.com',1),
(81,'Ulisses Barros','71987654381','ulisses.barros61@example.com',1),
(82,'Viviane Andrade','81987654382','viviane.andrade62@example.com',1),
(83,'Washington Costa','91987654383','washington.costa63@example.com',1),
(84,'Xênia Almeida','11987654384','xenia.almeida64@example.com',1),
(85,'Yara Fernandes','21987654385','yara.fernandes65@example.com',1),
(86,'Zélia Cardoso','31987654386','zelia.cardoso66@example.com',1),
(87,'André Gomes','41987654387','andre.gomes67@example.com',1),
(88,'Bárbara Lima','51987654388','barbara.lima68@example.com',1),
(89,'Cristiano Alves','61987654389','cristiano.alves69@example.com',1),
(90,'Daniela Rocha','71987654390','daniela.rocha70@example.com',1),
(91,'Elias Santos','81987654391','elias.santos71@example.com',1),
(92,'Fabiana Torres','91987654392','fabiana.torres72@example.com',1),
(93,'Guilherme Rocha','11987654393','guilherme.rocha73@example.com',1),
(94,'Heloísa Martins','21987654394','heloisa.martins74@example.com',1),
(95,'Iago Alves','31987654395','iago.alves75@example.com',1),
(96,'Jéssica Lima','41987654396','jessica.lima76@example.com',1),
(97,'Leonardo Cardoso','51987654397','leonardo.cardoso77@example.com',1),
(98,'Mariana Gomes','61987654398','mariana.gomes78@example.com',1),
(99,'Natália Ferreira','71987654399','natalia.ferreira79@example.com',1),
(100,'Orlando Souza','81987654400','orlando.souza80@example.com',1),
(101,'Paula Rodrigues','91987654401','paula.rodrigues81@example.com',1),
(102,'Rodrigo Ferreira','11987654402','rodrigo.ferreira82@example.com',1),
(103,'Sandra Lima','21987654403','sandra.lima83@example.com',1),
(104,'Thiago Barbosa','31987654404','thiago.barbosa84@example.com',1),
(105,'Ursula Ramos','41987654405','ursula.ramos85@example.com',1),
(106,'Valéria Souza','51987654406','valeria.souza86@example.com',1),
(107,'William Alves','61987654407','william.alves87@example.com',1),
(108,'Yasmin Santos','71987654408','yasmin.santos88@example.com',1),
(109,'Zeca Borges','81987654409','zeca.borges89@example.com',1),
(110,'Adriana Neves','91987654410','adriana.neves90@example.com',1),
(111,'Beto Moura','11987654411','beto.moura91@example.com',1),
(112,'Carolina Farias','21987654412','carolina.farias92@example.com',1),
(113,'Diego Luz','31987654413','diego.luz93@example.com',1),
(114,'Elisa Moreira','41987654414','elisa.moreira94@example.com',1),
(115,'Fernando Carvalho','51987654415','fernando.carvalho95@example.com',1),
(116,'Gabriel Silva','61987654416','gabriel.silva96@example.com',1),
(117,'Helder Ribeiro','71987654417','helder.ribeiro97@example.com',1),
(118,'Isadora Lima','81987654418','isadora.lima98@example.com',1),
(119,'José Andrade','91987654419','jose.andrade99@example.com',1),
(120,'Lara Souza','11987654420','lara.souza100@example.com',1),
(122,'Fome Zero','71988998899','fomezero@fomezero.com',1),
(123,'Anonimo','01717620552','anonimo@doacao.com.br',0);
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Voluntario`
--

DROP TABLE IF EXISTS `Voluntario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Voluntario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `Voluntario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Voluntario`
--

LOCK TABLES `Voluntario` WRITE;
/*!40000 ALTER TABLE `Voluntario` DISABLE KEYS */;
INSERT INTO `Voluntario` VALUES
(1,21,'Travessa do Respeito, 2100, Salvador, BA'),
(2,22,'Rua da Saúde, 2200, Salvador, BA'),
(3,23,'Avenida da Vida, 2300, Salvador, BA'),
(4,24,'Travessa do Apoio, 2400, Salvador, BA'),
(5,25,'Rua do Ensino, 2500, Salvador, BA'),
(6,26,'Rua do Acolhimento, 2600, Salvador, BA'),
(7,27,'Rua da Inclusão, 2700, Salvador, BA'),
(8,28,'Travessa da Igualdade, 2800, Salvador, BA'),
(9,29,'Rua da Proteção, 2900, Salvador, BA'),
(10,30,'Rua do Abraço, 3000, Salvador, BA'),
(11,31,'Travessa da Confiança, 3100, Salvador, BA'),
(12,32,'Rua do Cuidado, 3200, Salvador, BA'),
(13,33,'Avenida da Amizade, 3300, Salvador, BA'),
(14,34,'Rua da Transformação, 3400, Salvador, BA'),
(15,35,'Travessa da Energia, 3500, Salvador, BA'),
(16,36,'Avenida da Educação, 3600, Salvador, BA'),
(17,37,'Rua da Felicidade, 3700, Salvador, BA'),
(18,38,'Travessa da Serenidade, 3800, Salvador, BA'),
(19,39,'Avenida da Coragem, 3900, Salvador, BA'),
(20,40,'Rua da Justiça, 4000, Salvador, BA'),
(21,41,'Rua da Verdade, 4100, Salvador, BA'),
(22,42,'Travessa do Esporte, 4200, Salvador, BA'),
(23,43,'Avenida da Paz, 4300, Salvador, BA'),
(24,44,'Rua do Esforço, 4400, Salvador, BA'),
(25,45,'Rua da Bravura, 4500, Salvador, BA'),
(26,46,'Rua da Superação, 4600, Salvador, BA'),
(27,47,'Travessa da Força, 4700, Salvador, BA'),
(28,48,'Rua da Vitória, 4800, Salvador, BA'),
(29,49,'Travessa do Alento, 4900, Salvador, BA'),
(30,50,'Rua do Afeto, 5000, Salvador, BA'),
(31,51,'Avenida do Carinho, 5100, Salvador, BA'),
(32,52,'Rua da Dedicação, 5200, Salvador, BA'),
(33,53,'Rua da Empatia, 5300, Salvador, BA'),
(34,54,'Rua da Inspiração, 5400, Salvador, BA'),
(35,55,'Travessa do Aconchego, 5500, Salvador, BA'),
(36,56,'Avenida do Voluntariado, 5600, Salvador, BA'),
(37,57,'Rua da Comunidade, 5700, Salvador, BA'),
(38,58,'Rua da Contribuição, 5800, Salvador, BA'),
(39,59,'Travessa do Crescimento, 5900, Salvador, BA'),
(40,60,'Rua da Realização, 6000, Salvador, BA'),
(41,61,'Avenida do Futuro, 6100, Salvador, BA'),
(42,62,'Travessa do Brilho, 6200, Salvador, BA'),
(43,63,'Rua da Cooperação, 6300, Salvador, BA'),
(44,64,'Rua da Igualdade, 6400, Salvador, BA'),
(45,65,'Rua da Solidariedade, 6500, Salvador, BA'),
(46,66,'Travessa do Afeto, 6600, Salvador, BA'),
(47,67,'Avenida da Vida, 6700, Salvador, BA'),
(48,68,'Rua da União, 6800, Salvador, BA'),
(49,69,'Rua da Alegria, 6900, Salvador, BA'),
(50,70,'Travessa da Liberdade, 7000, Salvador, BA'),
(51,71,'Rua do Esporte, 7100, Salvador, BA'),
(52,72,'Avenida da Esperança, 7200, Salvador, BA'),
(53,73,'Rua da Fraternidade, 7300, Salvador, BA'),
(54,74,'Travessa da Paz, 7400, Salvador, BA'),
(55,75,'Rua do Compromisso, 7500, Salvador, BA'),
(56,76,'Avenida do Amor, 7600, Salvador, BA'),
(57,77,'Rua da Alegria, 7700, Salvador, BA'),
(58,78,'Travessa dos Sonhos, 7800, Salvador, BA'),
(59,79,'Avenida da Luz, 7900, Salvador, BA'),
(60,80,'Rua da Harmonia, 8000, Salvador, BA'),
(61,81,'Rua do Sorriso, 8100, Salvador, BA'),
(62,82,'Avenida do Progresso, 8200, Salvador, BA'),
(63,83,'Travessa do Aprender, 8300, Salvador, BA'),
(64,84,'Rua do Conhecimento, 8400, Salvador, BA'),
(65,85,'Avenida do Saber, 8500, Salvador, BA'),
(66,86,'Rua da Natureza, 8600, Salvador, BA'),
(67,87,'Travessa do Respeito, 8700, Salvador, BA'),
(68,88,'Rua da Saúde, 8800, Salvador, BA'),
(69,89,'Avenida da Vida, 8900, Salvador, BA'),
(70,90,'Travessa do Apoio, 9000, Salvador, BA'),
(71,91,'Rua do Ensino, 9100, Salvador, BA'),
(72,92,'Rua do Acolhimento, 9200, Salvador, BA'),
(73,93,'Rua da Inclusão, 9300, Salvador, BA'),
(74,94,'Travessa da Igualdade, 9400, Salvador, BA'),
(75,95,'Rua da Proteção, 9500, Salvador, BA'),
(76,96,'Rua do Abraço, 9600, Salvador, BA'),
(77,97,'Travessa da Confiança, 9700, Salvador, BA'),
(78,98,'Rua do Cuidado, 9800, Salvador, BA'),
(79,99,'Avenida da Amizade, 9900, Salvador, BA'),
(80,100,'Rua da Transformação, 10000, Salvador, BA');
/*!40000 ALTER TABLE `Voluntario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_access`
--

DROP TABLE IF EXISTS `directus_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_access` (
  `id` char(36) NOT NULL,
  `role` char(36) DEFAULT NULL,
  `user` char(36) DEFAULT NULL,
  `policy` char(36) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_access_role_foreign` (`role`),
  KEY `directus_access_user_foreign` (`user`),
  KEY `directus_access_policy_foreign` (`policy`),
  CONSTRAINT `directus_access_policy_foreign` FOREIGN KEY (`policy`) REFERENCES `directus_policies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `directus_access_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `directus_access_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_access`
--

LOCK TABLES `directus_access` WRITE;
/*!40000 ALTER TABLE `directus_access` DISABLE KEYS */;
INSERT INTO `directus_access` VALUES
('388a4bbb-b13d-4f5c-b2d1-059cb9e86028','db96d412-c74d-4d65-93d6-e7b5268792d5',NULL,'6ea70b44-5a9f-4794-bbfc-f1e62f645cfe',NULL),
('d021116c-9d90-475c-89c3-40e142fdfb76',NULL,NULL,'abf8a154-5b1c-4a46-ac9c-7300570f4f17',1);
/*!40000 ALTER TABLE `directus_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_activity`
--

DROP TABLE IF EXISTS `directus_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(45) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `comment` text DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_activity_collection_foreign` (`collection`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_activity`
--

LOCK TABLES `directus_activity` WRITE;
/*!40000 ALTER TABLE `directus_activity` DISABLE KEYS */;
INSERT INTO `directus_activity` VALUES
(1,'login','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:42:27','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_users','bf284b51-cafd-4069-959a-fd9246ac5922',NULL,'http://cms.tcc.local'),
(2,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:08','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_collections','Instituicao',NULL,'http://cms.tcc.local'),
(3,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:09','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','1',NULL,'http://cms.tcc.local'),
(4,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:11','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','2',NULL,'http://cms.tcc.local'),
(5,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:13','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','3',NULL,'http://cms.tcc.local'),
(6,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:14','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','4',NULL,'http://cms.tcc.local'),
(7,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:16','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','5',NULL,'http://cms.tcc.local'),
(8,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:20','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_collections','Servico',NULL,'http://cms.tcc.local'),
(9,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:21','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','6',NULL,'http://cms.tcc.local'),
(10,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:22','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','7',NULL,'http://cms.tcc.local'),
(11,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:26','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','8',NULL,'http://cms.tcc.local'),
(12,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:27','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','9',NULL,'http://cms.tcc.local'),
(13,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:29','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','10',NULL,'http://cms.tcc.local'),
(14,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:30','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','11',NULL,'http://cms.tcc.local'),
(15,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:33','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','12',NULL,'http://cms.tcc.local'),
(16,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:35','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_collections','Usuario',NULL,'http://cms.tcc.local'),
(17,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:36','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','13',NULL,'http://cms.tcc.local'),
(18,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:38','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','14',NULL,'http://cms.tcc.local'),
(19,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:40','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','15',NULL,'http://cms.tcc.local'),
(20,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:41','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','16',NULL,'http://cms.tcc.local'),
(21,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:43','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','17',NULL,'http://cms.tcc.local'),
(22,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:47','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_collections','Voluntario',NULL,'http://cms.tcc.local'),
(23,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:48','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','18',NULL,'http://cms.tcc.local'),
(24,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:49','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','19',NULL,'http://cms.tcc.local'),
(25,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:43:51','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','20',NULL,'http://cms.tcc.local'),
(26,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','1',NULL,'http://cms.tcc.local'),
(27,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','2',NULL,'http://cms.tcc.local'),
(28,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','3',NULL,'http://cms.tcc.local'),
(29,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','4',NULL,'http://cms.tcc.local'),
(30,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','5',NULL,'http://cms.tcc.local'),
(31,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','6',NULL,'http://cms.tcc.local'),
(32,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','7',NULL,'http://cms.tcc.local'),
(33,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','8',NULL,'http://cms.tcc.local'),
(34,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','9',NULL,'http://cms.tcc.local'),
(35,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','10',NULL,'http://cms.tcc.local'),
(36,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','11',NULL,'http://cms.tcc.local'),
(37,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','12',NULL,'http://cms.tcc.local'),
(38,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','13',NULL,'http://cms.tcc.local'),
(39,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','14',NULL,'http://cms.tcc.local'),
(40,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','15',NULL,'http://cms.tcc.local'),
(41,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','16',NULL,'http://cms.tcc.local'),
(42,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','17',NULL,'http://cms.tcc.local'),
(43,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','18',NULL,'http://cms.tcc.local'),
(44,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','19',NULL,'http://cms.tcc.local'),
(45,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_permissions','20',NULL,'http://cms.tcc.local'),
(46,'update','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-17 11:44:37','10.42.1.111','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_policies','abf8a154-5b1c-4a46-ac9c-7300570f4f17',NULL,'http://cms.tcc.local'),
(47,'login','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-18 17:49:29','10.42.1.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_users','bf284b51-cafd-4069-959a-fd9246ac5922',NULL,'http://cms.tcc.local'),
(48,'create',NULL,'2024-11-18 18:45:30','10.42.1.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','Usuario','121',NULL,'http://cms.tcc.local'),
(49,'create',NULL,'2024-11-18 18:45:30','10.42.1.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','Instituicao','21',NULL,'http://cms.tcc.local'),
(50,'update','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-18 18:50:24','10.42.1.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','17',NULL,'http://cms.tcc.local'),
(51,'update','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-18 18:50:35','10.42.1.165','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','directus_fields','17',NULL,'http://cms.tcc.local'),
(52,'login','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-19 07:48:07','10.42.1.166','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_users','bf284b51-cafd-4069-959a-fd9246ac5922',NULL,'http://cms.tcc.local'),
(53,'delete','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-19 07:48:54','10.42.1.166','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Instituicao','21',NULL,'http://cms.tcc.local'),
(54,'delete','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-19 07:48:59','10.42.1.166','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Usuario','121',NULL,'http://cms.tcc.local'),
(55,'create',NULL,'2024-11-19 07:52:53','10.42.1.166','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Usuario','122',NULL,'http://cms.tcc.local'),
(56,'create',NULL,'2024-11-19 07:52:53','10.42.1.166','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Instituicao','22',NULL,'http://cms.tcc.local'),
(57,'update','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-19 07:53:16','10.42.1.166','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Usuario','3',NULL,'http://cms.tcc.local'),
(58,'update','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-19 07:53:20','10.42.1.166','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Usuario','6',NULL,'http://cms.tcc.local'),
(59,'update','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-19 07:53:25','10.42.1.166','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Usuario','10',NULL,'http://cms.tcc.local'),
(60,'update','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-19 07:53:30','10.42.1.166','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Usuario','13',NULL,'http://cms.tcc.local'),
(61,'update','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-19 07:53:39','10.42.1.166','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Usuario','17',NULL,'http://cms.tcc.local'),
(62,'update','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-19 07:54:54','10.42.1.166','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Usuario','122',NULL,'http://cms.tcc.local'),
(63,'delete','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-19 08:15:06','10.42.1.166','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Instituicao','22',NULL,'http://cms.tcc.local'),
(64,'login','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:40:08','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_users','bf284b51-cafd-4069-959a-fd9246ac5922',NULL,'http://cms.tcc.local'),
(65,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:40:15','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_collections','Doacoes',NULL,'http://cms.tcc.local'),
(66,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:40:22','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_fields','21',NULL,'http://cms.tcc.local'),
(67,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:40:26','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_fields','22',NULL,'http://cms.tcc.local'),
(68,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:40:27','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_fields','23',NULL,'http://cms.tcc.local'),
(69,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:40:29','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_fields','24',NULL,'http://cms.tcc.local'),
(70,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:40:31','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_fields','25',NULL,'http://cms.tcc.local'),
(71,'delete','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:55:43','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_collections','Doacoes',NULL,'http://cms.tcc.local'),
(72,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:56:09','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_collections','Doacoes',NULL,'http://cms.tcc.local'),
(73,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:56:11','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_fields','26',NULL,'http://cms.tcc.local'),
(74,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:56:12','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_fields','27',NULL,'http://cms.tcc.local'),
(75,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:56:13','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_fields','28',NULL,'http://cms.tcc.local'),
(76,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:56:15','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_fields','29',NULL,'http://cms.tcc.local'),
(77,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:56:17','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_fields','30',NULL,'http://cms.tcc.local'),
(78,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 18:56:19','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_fields','31',NULL,'http://cms.tcc.local'),
(79,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 19:04:37','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_permissions','21',NULL,'http://cms.tcc.local'),
(80,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 19:04:37','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_permissions','22',NULL,'http://cms.tcc.local'),
(81,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 19:04:37','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_permissions','23',NULL,'http://cms.tcc.local'),
(82,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 19:04:37','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_permissions','24',NULL,'http://cms.tcc.local'),
(83,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 19:04:37','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_permissions','25',NULL,'http://cms.tcc.local'),
(84,'update','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 19:04:37','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','directus_policies','abf8a154-5b1c-4a46-ac9c-7300570f4f17',NULL,'http://cms.tcc.local'),
(85,'create',NULL,'2024-11-28 19:04:49','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Doacoes','1',NULL,'http://cms.tcc.local'),
(86,'create','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 19:07:29','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Usuario','123',NULL,'http://cms.tcc.local'),
(87,'create',NULL,'2024-11-28 19:15:10','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','Doacoes','2',NULL,'http://cms.tcc.local');
/*!40000 ALTER TABLE `directus_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_collections`
--

DROP TABLE IF EXISTS `directus_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_collections` (
  `collection` varchar(64) NOT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `display_template` varchar(255) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `singleton` tinyint(1) NOT NULL DEFAULT 0,
  `translations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translations`)),
  `archive_field` varchar(64) DEFAULT NULL,
  `archive_app_filter` tinyint(1) NOT NULL DEFAULT 1,
  `archive_value` varchar(255) DEFAULT NULL,
  `unarchive_value` varchar(255) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `accountability` varchar(255) DEFAULT 'all',
  `color` varchar(255) DEFAULT NULL,
  `item_duplication_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`item_duplication_fields`)),
  `sort` int(11) DEFAULT NULL,
  `group` varchar(64) DEFAULT NULL,
  `collapse` varchar(255) NOT NULL DEFAULT 'open',
  `preview_url` varchar(255) DEFAULT NULL,
  `versioning` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`collection`),
  KEY `directus_collections_group_foreign` (`group`),
  CONSTRAINT `directus_collections_group_foreign` FOREIGN KEY (`group`) REFERENCES `directus_collections` (`collection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_collections`
--

LOCK TABLES `directus_collections` WRITE;
/*!40000 ALTER TABLE `directus_collections` DISABLE KEYS */;
INSERT INTO `directus_collections` VALUES
('Doacoes',NULL,NULL,NULL,0,0,NULL,NULL,1,NULL,NULL,NULL,'all',NULL,NULL,NULL,NULL,'open',NULL,0),
('Instituicao',NULL,NULL,NULL,0,0,NULL,NULL,1,NULL,NULL,NULL,'all',NULL,NULL,NULL,NULL,'open',NULL,0),
('Servico',NULL,NULL,NULL,0,0,NULL,NULL,1,NULL,NULL,NULL,'all',NULL,NULL,NULL,NULL,'open',NULL,0),
('Usuario',NULL,NULL,NULL,0,0,NULL,NULL,1,NULL,NULL,NULL,'all',NULL,NULL,NULL,NULL,'open',NULL,0),
('Voluntario',NULL,NULL,NULL,0,0,NULL,NULL,1,NULL,NULL,NULL,'all',NULL,NULL,NULL,NULL,'open',NULL,0);
/*!40000 ALTER TABLE `directus_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_dashboards`
--

DROP TABLE IF EXISTS `directus_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_dashboards` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(64) NOT NULL DEFAULT 'dashboard',
  `note` text DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_dashboards_user_created_foreign` (`user_created`),
  CONSTRAINT `directus_dashboards_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_dashboards`
--

LOCK TABLES `directus_dashboards` WRITE;
/*!40000 ALTER TABLE `directus_dashboards` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_extensions`
--

DROP TABLE IF EXISTS `directus_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_extensions` (
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `id` char(36) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `bundle` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_extensions`
--

LOCK TABLES `directus_extensions` WRITE;
/*!40000 ALTER TABLE `directus_extensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_fields`
--

DROP TABLE IF EXISTS `directus_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `collection` varchar(64) NOT NULL,
  `field` varchar(64) NOT NULL,
  `special` varchar(64) DEFAULT NULL,
  `interface` varchar(64) DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `display` varchar(64) DEFAULT NULL,
  `display_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`display_options`)),
  `readonly` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `sort` int(10) unsigned DEFAULT NULL,
  `width` varchar(30) DEFAULT 'full',
  `translations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translations`)),
  `note` text DEFAULT NULL,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `required` tinyint(1) DEFAULT 0,
  `group` varchar(64) DEFAULT NULL,
  `validation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`validation`)),
  `validation_message` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_fields_collection_foreign` (`collection`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_fields`
--

LOCK TABLES `directus_fields` WRITE;
/*!40000 ALTER TABLE `directus_fields` DISABLE KEYS */;
INSERT INTO `directus_fields` VALUES
(1,'Instituicao','id_usuario',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(2,'Instituicao','id',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(3,'Instituicao','area_atuacao',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(4,'Instituicao','endereco',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(5,'Instituicao','slogan',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(6,'Servico','instituicao_id',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(7,'Servico','id',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(8,'Servico','titulo',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(9,'Servico','descricao',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(10,'Servico','disponibilidade',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(11,'Servico','vagas',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(12,'Servico','carga_horaria',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(13,'Usuario','id',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(14,'Usuario','email',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(15,'Usuario','nome',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(16,'Usuario','telefone',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(17,'Usuario','ativo','cast-boolean','boolean',NULL,'boolean',NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(18,'Voluntario','id_usuario',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(19,'Voluntario','id',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(20,'Voluntario','endereco',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(26,'Doacoes','id_usuario',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(27,'Doacoes','id_instituicao',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(28,'Doacoes','id',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(29,'Doacoes','valor',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(30,'Doacoes','tipo_pagamento',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL),
(31,'Doacoes','data',NULL,NULL,NULL,NULL,NULL,0,0,NULL,'full',NULL,NULL,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `directus_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_files`
--

DROP TABLE IF EXISTS `directus_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_files` (
  `id` char(36) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `filename_disk` varchar(255) DEFAULT NULL,
  `filename_download` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `folder` char(36) DEFAULT NULL,
  `uploaded_by` char(36) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(36) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `charset` varchar(50) DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `focal_point_x` int(11) DEFAULT NULL,
  `focal_point_y` int(11) DEFAULT NULL,
  `tus_id` varchar(64) DEFAULT NULL,
  `tus_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tus_data`)),
  `uploaded_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_files_uploaded_by_foreign` (`uploaded_by`),
  KEY `directus_files_modified_by_foreign` (`modified_by`),
  KEY `directus_files_folder_foreign` (`folder`),
  CONSTRAINT `directus_files_folder_foreign` FOREIGN KEY (`folder`) REFERENCES `directus_folders` (`id`) ON DELETE SET NULL,
  CONSTRAINT `directus_files_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `directus_users` (`id`),
  CONSTRAINT `directus_files_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `directus_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_files`
--

LOCK TABLES `directus_files` WRITE;
/*!40000 ALTER TABLE `directus_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_flows`
--

DROP TABLE IF EXISTS `directus_flows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_flows` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `trigger` varchar(255) DEFAULT NULL,
  `accountability` varchar(255) DEFAULT 'all',
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `operation` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `directus_flows_operation_unique` (`operation`),
  KEY `directus_flows_user_created_foreign` (`user_created`),
  CONSTRAINT `directus_flows_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_flows`
--

LOCK TABLES `directus_flows` WRITE;
/*!40000 ALTER TABLE `directus_flows` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_flows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_folders`
--

DROP TABLE IF EXISTS `directus_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_folders_parent_foreign` (`parent`),
  CONSTRAINT `directus_folders_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_folders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_folders`
--

LOCK TABLES `directus_folders` WRITE;
/*!40000 ALTER TABLE `directus_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_migrations`
--

DROP TABLE IF EXISTS `directus_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_migrations` (
  `version` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_migrations`
--

LOCK TABLES `directus_migrations` WRITE;
/*!40000 ALTER TABLE `directus_migrations` DISABLE KEYS */;
INSERT INTO `directus_migrations` VALUES
('20201028A','Remove Collection Foreign Keys','2024-11-17 11:42:01'),
('20201029A','Remove System Relations','2024-11-17 11:42:01'),
('20201029B','Remove System Collections','2024-11-17 11:42:01'),
('20201029C','Remove System Fields','2024-11-17 11:42:01'),
('20201105A','Add Cascade System Relations','2024-11-17 11:42:02'),
('20201105B','Change Webhook URL Type','2024-11-17 11:42:02'),
('20210225A','Add Relations Sort Field','2024-11-17 11:42:02'),
('20210304A','Remove Locked Fields','2024-11-17 11:42:02'),
('20210312A','Webhooks Collections Text','2024-11-17 11:42:02'),
('20210331A','Add Refresh Interval','2024-11-17 11:42:02'),
('20210415A','Make Filesize Nullable','2024-11-17 11:42:02'),
('20210416A','Add Collections Accountability','2024-11-17 11:42:02'),
('20210422A','Remove Files Interface','2024-11-17 11:42:02'),
('20210506A','Rename Interfaces','2024-11-17 11:42:02'),
('20210510A','Restructure Relations','2024-11-17 11:42:02'),
('20210518A','Add Foreign Key Constraints','2024-11-17 11:42:02'),
('20210519A','Add System Fk Triggers','2024-11-17 11:42:02'),
('20210521A','Add Collections Icon Color','2024-11-17 11:42:02'),
('20210525A','Add Insights','2024-11-17 11:42:02'),
('20210608A','Add Deep Clone Config','2024-11-17 11:42:02'),
('20210626A','Change Filesize Bigint','2024-11-17 11:42:03'),
('20210716A','Add Conditions to Fields','2024-11-17 11:42:03'),
('20210721A','Add Default Folder','2024-11-17 11:42:03'),
('20210802A','Replace Groups','2024-11-17 11:42:03'),
('20210803A','Add Required to Fields','2024-11-17 11:42:03'),
('20210805A','Update Groups','2024-11-17 11:42:03'),
('20210805B','Change Image Metadata Structure','2024-11-17 11:42:03'),
('20210811A','Add Geometry Config','2024-11-17 11:42:03'),
('20210831A','Remove Limit Column','2024-11-17 11:42:03'),
('20210903A','Add Auth Provider','2024-11-17 11:42:03'),
('20210907A','Webhooks Collections Not Null','2024-11-17 11:42:03'),
('20210910A','Move Module Setup','2024-11-17 11:42:03'),
('20210920A','Webhooks URL Not Null','2024-11-17 11:42:03'),
('20210924A','Add Collection Organization','2024-11-17 11:42:03'),
('20210927A','Replace Fields Group','2024-11-17 11:42:03'),
('20210927B','Replace M2M Interface','2024-11-17 11:42:03'),
('20210929A','Rename Login Action','2024-11-17 11:42:03'),
('20211007A','Update Presets','2024-11-17 11:42:03'),
('20211009A','Add Auth Data','2024-11-17 11:42:03'),
('20211016A','Add Webhook Headers','2024-11-17 11:42:03'),
('20211103A','Set Unique to User Token','2024-11-17 11:42:03'),
('20211103B','Update Special Geometry','2024-11-17 11:42:03'),
('20211104A','Remove Collections Listing','2024-11-17 11:42:03'),
('20211118A','Add Notifications','2024-11-17 11:42:03'),
('20211211A','Add Shares','2024-11-17 11:42:03'),
('20211230A','Add Project Descriptor','2024-11-17 11:42:03'),
('20220303A','Remove Default Project Color','2024-11-17 11:42:03'),
('20220308A','Add Bookmark Icon and Color','2024-11-17 11:42:03'),
('20220314A','Add Translation Strings','2024-11-17 11:42:03'),
('20220322A','Rename Field Typecast Flags','2024-11-17 11:42:03'),
('20220323A','Add Field Validation','2024-11-17 11:42:03'),
('20220325A','Fix Typecast Flags','2024-11-17 11:42:03'),
('20220325B','Add Default Language','2024-11-17 11:42:03'),
('20220402A','Remove Default Value Panel Icon','2024-11-17 11:42:03'),
('20220429A','Add Flows','2024-11-17 11:42:03'),
('20220429B','Add Color to Insights Icon','2024-11-17 11:42:03'),
('20220429C','Drop Non Null From IP of Activity','2024-11-17 11:42:04'),
('20220429D','Drop Non Null From Sender of Notifications','2024-11-17 11:42:04'),
('20220614A','Rename Hook Trigger to Event','2024-11-17 11:42:04'),
('20220801A','Update Notifications Timestamp Column','2024-11-17 11:42:04'),
('20220802A','Add Custom Aspect Ratios','2024-11-17 11:42:04'),
('20220826A','Add Origin to Accountability','2024-11-17 11:42:04'),
('20230401A','Update Material Icons','2024-11-17 11:42:04'),
('20230525A','Add Preview Settings','2024-11-17 11:42:04'),
('20230526A','Migrate Translation Strings','2024-11-17 11:42:04'),
('20230721A','Require Shares Fields','2024-11-17 11:42:04'),
('20230823A','Add Content Versioning','2024-11-17 11:42:04'),
('20230927A','Themes','2024-11-17 11:42:04'),
('20231009A','Update CSV Fields to Text','2024-11-17 11:42:04'),
('20231009B','Update Panel Options','2024-11-17 11:42:04'),
('20231010A','Add Extensions','2024-11-17 11:42:04'),
('20231215A','Add Focalpoints','2024-11-17 11:42:04'),
('20240122A','Add Report URL Fields','2024-11-17 11:42:04'),
('20240204A','Marketplace','2024-11-17 11:42:04'),
('20240305A','Change Useragent Type','2024-11-17 11:42:04'),
('20240311A','Deprecate Webhooks','2024-11-17 11:42:04'),
('20240422A','Public Registration','2024-11-17 11:42:04'),
('20240515A','Add Session Window','2024-11-17 11:42:04'),
('20240701A','Add Tus Data','2024-11-17 11:42:04'),
('20240716A','Update Files Date Fields','2024-11-17 11:42:04'),
('20240806A','Permissions Policies','2024-11-17 11:42:05'),
('20240817A','Update Icon Fields Length','2024-11-17 11:42:05');
/*!40000 ALTER TABLE `directus_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_notifications`
--

DROP TABLE IF EXISTS `directus_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(255) DEFAULT 'inbox',
  `recipient` char(36) NOT NULL,
  `sender` char(36) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_notifications_recipient_foreign` (`recipient`),
  KEY `directus_notifications_sender_foreign` (`sender`),
  CONSTRAINT `directus_notifications_recipient_foreign` FOREIGN KEY (`recipient`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `directus_notifications_sender_foreign` FOREIGN KEY (`sender`) REFERENCES `directus_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_notifications`
--

LOCK TABLES `directus_notifications` WRITE;
/*!40000 ALTER TABLE `directus_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_operations`
--

DROP TABLE IF EXISTS `directus_operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_operations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `key` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `position_x` int(11) NOT NULL,
  `position_y` int(11) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `resolve` char(36) DEFAULT NULL,
  `reject` char(36) DEFAULT NULL,
  `flow` char(36) NOT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `directus_operations_resolve_unique` (`resolve`),
  UNIQUE KEY `directus_operations_reject_unique` (`reject`),
  KEY `directus_operations_flow_foreign` (`flow`),
  KEY `directus_operations_user_created_foreign` (`user_created`),
  CONSTRAINT `directus_operations_flow_foreign` FOREIGN KEY (`flow`) REFERENCES `directus_flows` (`id`) ON DELETE CASCADE,
  CONSTRAINT `directus_operations_reject_foreign` FOREIGN KEY (`reject`) REFERENCES `directus_operations` (`id`),
  CONSTRAINT `directus_operations_resolve_foreign` FOREIGN KEY (`resolve`) REFERENCES `directus_operations` (`id`),
  CONSTRAINT `directus_operations_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_operations`
--

LOCK TABLES `directus_operations` WRITE;
/*!40000 ALTER TABLE `directus_operations` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_panels`
--

DROP TABLE IF EXISTS `directus_panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_panels` (
  `id` char(36) NOT NULL,
  `dashboard` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `show_header` tinyint(1) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `position_x` int(11) NOT NULL,
  `position_y` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_panels_dashboard_foreign` (`dashboard`),
  KEY `directus_panels_user_created_foreign` (`user_created`),
  CONSTRAINT `directus_panels_dashboard_foreign` FOREIGN KEY (`dashboard`) REFERENCES `directus_dashboards` (`id`) ON DELETE CASCADE,
  CONSTRAINT `directus_panels_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_panels`
--

LOCK TABLES `directus_panels` WRITE;
/*!40000 ALTER TABLE `directus_panels` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_panels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_permissions`
--

DROP TABLE IF EXISTS `directus_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `collection` varchar(64) NOT NULL,
  `action` varchar(10) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `validation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`validation`)),
  `presets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`presets`)),
  `fields` text DEFAULT NULL,
  `policy` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_permissions_collection_foreign` (`collection`),
  KEY `directus_permissions_policy_foreign` (`policy`),
  CONSTRAINT `directus_permissions_policy_foreign` FOREIGN KEY (`policy`) REFERENCES `directus_policies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_permissions`
--

LOCK TABLES `directus_permissions` WRITE;
/*!40000 ALTER TABLE `directus_permissions` DISABLE KEYS */;
INSERT INTO `directus_permissions` VALUES
(1,'Instituicao','create',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(2,'Instituicao','read',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(3,'Instituicao','update',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(4,'Instituicao','delete',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(5,'Instituicao','share',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(6,'Servico','create',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(7,'Servico','read',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(8,'Servico','update',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(9,'Servico','delete',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(10,'Servico','share',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(11,'Usuario','create',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(12,'Usuario','read',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(13,'Usuario','update',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(14,'Usuario','delete',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(15,'Usuario','share',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(16,'Voluntario','create',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(17,'Voluntario','read',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(18,'Voluntario','update',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(19,'Voluntario','delete',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(20,'Voluntario','share',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(21,'Doacoes','share',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(22,'Doacoes','create',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(23,'Doacoes','read',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(24,'Doacoes','update',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17'),
(25,'Doacoes','delete',NULL,NULL,NULL,'*','abf8a154-5b1c-4a46-ac9c-7300570f4f17');
/*!40000 ALTER TABLE `directus_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_policies`
--

DROP TABLE IF EXISTS `directus_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_policies` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(64) NOT NULL DEFAULT 'badge',
  `description` text DEFAULT NULL,
  `ip_access` text DEFAULT NULL,
  `enforce_tfa` tinyint(1) NOT NULL DEFAULT 0,
  `admin_access` tinyint(1) NOT NULL DEFAULT 0,
  `app_access` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_policies`
--

LOCK TABLES `directus_policies` WRITE;
/*!40000 ALTER TABLE `directus_policies` DISABLE KEYS */;
INSERT INTO `directus_policies` VALUES
('6ea70b44-5a9f-4794-bbfc-f1e62f645cfe','Administrator','verified','$t:admin_description',NULL,0,1,1),
('abf8a154-5b1c-4a46-ac9c-7300570f4f17','$t:public_label','public','$t:public_description',NULL,0,0,0);
/*!40000 ALTER TABLE `directus_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_presets`
--

DROP TABLE IF EXISTS `directus_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_presets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookmark` varchar(255) DEFAULT NULL,
  `user` char(36) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `search` varchar(100) DEFAULT NULL,
  `layout` varchar(100) DEFAULT 'tabular',
  `layout_query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`layout_query`)),
  `layout_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`layout_options`)),
  `refresh_interval` int(11) DEFAULT NULL,
  `filter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`filter`)),
  `icon` varchar(64) DEFAULT 'bookmark',
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_presets_collection_foreign` (`collection`),
  KEY `directus_presets_user_foreign` (`user`),
  KEY `directus_presets_role_foreign` (`role`),
  CONSTRAINT `directus_presets_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `directus_presets_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_presets`
--

LOCK TABLES `directus_presets` WRITE;
/*!40000 ALTER TABLE `directus_presets` DISABLE KEYS */;
INSERT INTO `directus_presets` VALUES
(1,NULL,'bf284b51-cafd-4069-959a-fd9246ac5922',NULL,'Voluntario',NULL,NULL,'{\"tabular\":{\"fields\":[\"id\",\"endereco\",\"id_usuario\"],\"page\":1}}','{\"tabular\":{\"widths\":{\"id\":124,\"endereco\":402}}}',NULL,NULL,'bookmark',NULL),
(2,NULL,'bf284b51-cafd-4069-959a-fd9246ac5922',NULL,'Instituicao',NULL,NULL,'{\"tabular\":{\"fields\":[\"id\",\"area_atuacao\",\"endereco\",\"id_usuario\"],\"page\":1}}','{\"tabular\":{\"widths\":{}}}',NULL,NULL,'bookmark',NULL),
(3,NULL,'bf284b51-cafd-4069-959a-fd9246ac5922',NULL,'Servico',NULL,NULL,'{\"tabular\":{\"fields\":[\"id\",\"descricao\",\"titulo\",\"instituicao_id\"]}}','{\"tabular\":{\"widths\":{}}}',NULL,NULL,'bookmark',NULL),
(4,NULL,'bf284b51-cafd-4069-959a-fd9246ac5922',NULL,'Usuario',NULL,NULL,'{\"tabular\":{\"fields\":[\"id\",\"nome\",\"email\",\"telefone\",\"ativo\"],\"page\":5}}','{\"tabular\":{\"widths\":{\"nome\":313}}}',NULL,NULL,'bookmark',NULL),
(5,NULL,'bf284b51-cafd-4069-959a-fd9246ac5922',NULL,'directus_users',NULL,'cards','{\"cards\":{\"sort\":[\"email\"],\"page\":1}}','{\"cards\":{\"icon\":\"account_circle\",\"title\":\"{{ first_name }} {{ last_name }}\",\"subtitle\":\"{{ email }}\",\"size\":4}}',NULL,NULL,'bookmark',NULL);
/*!40000 ALTER TABLE `directus_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_relations`
--

DROP TABLE IF EXISTS `directus_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_relations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `many_collection` varchar(64) NOT NULL,
  `many_field` varchar(64) NOT NULL,
  `one_collection` varchar(64) DEFAULT NULL,
  `one_field` varchar(64) DEFAULT NULL,
  `one_collection_field` varchar(64) DEFAULT NULL,
  `one_allowed_collections` text DEFAULT NULL,
  `junction_field` varchar(64) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `one_deselect_action` varchar(255) NOT NULL DEFAULT 'nullify',
  PRIMARY KEY (`id`),
  KEY `directus_relations_many_collection_foreign` (`many_collection`),
  KEY `directus_relations_one_collection_foreign` (`one_collection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_relations`
--

LOCK TABLES `directus_relations` WRITE;
/*!40000 ALTER TABLE `directus_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_revisions`
--

DROP TABLE IF EXISTS `directus_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `activity` int(10) unsigned NOT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `delta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`delta`)),
  `parent` int(10) unsigned DEFAULT NULL,
  `version` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_revisions_collection_foreign` (`collection`),
  KEY `directus_revisions_parent_foreign` (`parent`),
  KEY `directus_revisions_activity_foreign` (`activity`),
  KEY `directus_revisions_version_foreign` (`version`),
  CONSTRAINT `directus_revisions_activity_foreign` FOREIGN KEY (`activity`) REFERENCES `directus_activity` (`id`) ON DELETE CASCADE,
  CONSTRAINT `directus_revisions_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_revisions` (`id`),
  CONSTRAINT `directus_revisions_version_foreign` FOREIGN KEY (`version`) REFERENCES `directus_versions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_revisions`
--

LOCK TABLES `directus_revisions` WRITE;
/*!40000 ALTER TABLE `directus_revisions` DISABLE KEYS */;
INSERT INTO `directus_revisions` VALUES
(1,2,'directus_collections','Instituicao','{\"collection\":\"Instituicao\"}','{\"collection\":\"Instituicao\"}',NULL,NULL),
(2,3,'directus_fields','1','{\"special\":null,\"collection\":\"Instituicao\",\"field\":\"id_usuario\"}','{\"special\":null,\"collection\":\"Instituicao\",\"field\":\"id_usuario\"}',NULL,NULL),
(3,4,'directus_fields','2','{\"special\":null,\"collection\":\"Instituicao\",\"field\":\"id\"}','{\"special\":null,\"collection\":\"Instituicao\",\"field\":\"id\"}',NULL,NULL),
(4,5,'directus_fields','3','{\"special\":null,\"collection\":\"Instituicao\",\"field\":\"area_atuacao\"}','{\"special\":null,\"collection\":\"Instituicao\",\"field\":\"area_atuacao\"}',NULL,NULL),
(5,6,'directus_fields','4','{\"special\":null,\"collection\":\"Instituicao\",\"field\":\"endereco\"}','{\"special\":null,\"collection\":\"Instituicao\",\"field\":\"endereco\"}',NULL,NULL),
(6,7,'directus_fields','5','{\"special\":null,\"collection\":\"Instituicao\",\"field\":\"slogan\"}','{\"special\":null,\"collection\":\"Instituicao\",\"field\":\"slogan\"}',NULL,NULL),
(7,8,'directus_collections','Servico','{\"collection\":\"Servico\"}','{\"collection\":\"Servico\"}',NULL,NULL),
(8,9,'directus_fields','6','{\"special\":null,\"collection\":\"Servico\",\"field\":\"instituicao_id\"}','{\"special\":null,\"collection\":\"Servico\",\"field\":\"instituicao_id\"}',NULL,NULL),
(9,10,'directus_fields','7','{\"special\":null,\"collection\":\"Servico\",\"field\":\"id\"}','{\"special\":null,\"collection\":\"Servico\",\"field\":\"id\"}',NULL,NULL),
(10,11,'directus_fields','8','{\"special\":null,\"collection\":\"Servico\",\"field\":\"titulo\"}','{\"special\":null,\"collection\":\"Servico\",\"field\":\"titulo\"}',NULL,NULL),
(11,12,'directus_fields','9','{\"special\":null,\"collection\":\"Servico\",\"field\":\"descricao\"}','{\"special\":null,\"collection\":\"Servico\",\"field\":\"descricao\"}',NULL,NULL),
(12,13,'directus_fields','10','{\"special\":null,\"collection\":\"Servico\",\"field\":\"disponibilidade\"}','{\"special\":null,\"collection\":\"Servico\",\"field\":\"disponibilidade\"}',NULL,NULL),
(13,14,'directus_fields','11','{\"special\":null,\"collection\":\"Servico\",\"field\":\"vagas\"}','{\"special\":null,\"collection\":\"Servico\",\"field\":\"vagas\"}',NULL,NULL),
(14,15,'directus_fields','12','{\"special\":null,\"collection\":\"Servico\",\"field\":\"carga_horaria\"}','{\"special\":null,\"collection\":\"Servico\",\"field\":\"carga_horaria\"}',NULL,NULL),
(15,16,'directus_collections','Usuario','{\"collection\":\"Usuario\"}','{\"collection\":\"Usuario\"}',NULL,NULL),
(16,17,'directus_fields','13','{\"special\":null,\"collection\":\"Usuario\",\"field\":\"id\"}','{\"special\":null,\"collection\":\"Usuario\",\"field\":\"id\"}',NULL,NULL),
(17,18,'directus_fields','14','{\"special\":null,\"collection\":\"Usuario\",\"field\":\"email\"}','{\"special\":null,\"collection\":\"Usuario\",\"field\":\"email\"}',NULL,NULL),
(18,19,'directus_fields','15','{\"special\":null,\"collection\":\"Usuario\",\"field\":\"nome\"}','{\"special\":null,\"collection\":\"Usuario\",\"field\":\"nome\"}',NULL,NULL),
(19,20,'directus_fields','16','{\"special\":null,\"collection\":\"Usuario\",\"field\":\"telefone\"}','{\"special\":null,\"collection\":\"Usuario\",\"field\":\"telefone\"}',NULL,NULL),
(20,21,'directus_fields','17','{\"special\":[\"cast-boolean\"],\"collection\":\"Usuario\",\"field\":\"ativo\"}','{\"special\":[\"cast-boolean\"],\"collection\":\"Usuario\",\"field\":\"ativo\"}',NULL,NULL),
(21,22,'directus_collections','Voluntario','{\"collection\":\"Voluntario\"}','{\"collection\":\"Voluntario\"}',NULL,NULL),
(22,23,'directus_fields','18','{\"special\":null,\"collection\":\"Voluntario\",\"field\":\"id_usuario\"}','{\"special\":null,\"collection\":\"Voluntario\",\"field\":\"id_usuario\"}',NULL,NULL),
(23,24,'directus_fields','19','{\"special\":null,\"collection\":\"Voluntario\",\"field\":\"id\"}','{\"special\":null,\"collection\":\"Voluntario\",\"field\":\"id\"}',NULL,NULL),
(24,25,'directus_fields','20','{\"special\":null,\"collection\":\"Voluntario\",\"field\":\"endereco\"}','{\"special\":null,\"collection\":\"Voluntario\",\"field\":\"endereco\"}',NULL,NULL),
(25,26,'directus_permissions','1','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Instituicao\",\"action\":\"create\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Instituicao\",\"action\":\"create\"}',NULL,NULL),
(26,27,'directus_permissions','2','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Instituicao\",\"action\":\"read\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Instituicao\",\"action\":\"read\"}',NULL,NULL),
(27,28,'directus_permissions','3','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Instituicao\",\"action\":\"update\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Instituicao\",\"action\":\"update\"}',NULL,NULL),
(28,29,'directus_permissions','4','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Instituicao\",\"action\":\"delete\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Instituicao\",\"action\":\"delete\"}',NULL,NULL),
(29,30,'directus_permissions','5','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Instituicao\",\"action\":\"share\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Instituicao\",\"action\":\"share\"}',NULL,NULL),
(30,31,'directus_permissions','6','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Servico\",\"action\":\"create\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Servico\",\"action\":\"create\"}',NULL,NULL),
(31,32,'directus_permissions','7','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Servico\",\"action\":\"read\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Servico\",\"action\":\"read\"}',NULL,NULL),
(32,33,'directus_permissions','8','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Servico\",\"action\":\"update\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Servico\",\"action\":\"update\"}',NULL,NULL),
(33,34,'directus_permissions','9','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Servico\",\"action\":\"delete\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Servico\",\"action\":\"delete\"}',NULL,NULL),
(34,35,'directus_permissions','10','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Servico\",\"action\":\"share\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Servico\",\"action\":\"share\"}',NULL,NULL),
(35,36,'directus_permissions','11','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Usuario\",\"action\":\"create\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Usuario\",\"action\":\"create\"}',NULL,NULL),
(36,37,'directus_permissions','12','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Usuario\",\"action\":\"read\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Usuario\",\"action\":\"read\"}',NULL,NULL),
(37,38,'directus_permissions','13','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Usuario\",\"action\":\"update\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Usuario\",\"action\":\"update\"}',NULL,NULL),
(38,39,'directus_permissions','14','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Usuario\",\"action\":\"delete\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Usuario\",\"action\":\"delete\"}',NULL,NULL),
(39,40,'directus_permissions','15','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Usuario\",\"action\":\"share\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Usuario\",\"action\":\"share\"}',NULL,NULL),
(40,41,'directus_permissions','16','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Voluntario\",\"action\":\"create\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Voluntario\",\"action\":\"create\"}',NULL,NULL),
(41,42,'directus_permissions','17','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Voluntario\",\"action\":\"read\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Voluntario\",\"action\":\"read\"}',NULL,NULL),
(42,43,'directus_permissions','18','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Voluntario\",\"action\":\"update\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Voluntario\",\"action\":\"update\"}',NULL,NULL),
(43,44,'directus_permissions','19','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Voluntario\",\"action\":\"delete\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Voluntario\",\"action\":\"delete\"}',NULL,NULL),
(44,45,'directus_permissions','20','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Voluntario\",\"action\":\"share\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Voluntario\",\"action\":\"share\"}',NULL,NULL),
(45,48,'Usuario','121','{\"nome\":\"Anderson de Souza dos Santos\",\"telefone\":\"017684774533\",\"email\":\"santedicola@gmail.com\"}','{\"nome\":\"Anderson de Souza dos Santos\",\"telefone\":\"017684774533\",\"email\":\"santedicola@gmail.com\"}',46,NULL),
(46,49,'Instituicao','21','{\"area_atuacao\":\"asdas\",\"endereco\":\"Rödelheimer Bahnweg, 20\",\"slogan\":\"asdasd\",\"id_usuario\":{\"nome\":\"Anderson de Souza dos Santos\",\"telefone\":\"017684774533\",\"email\":\"santedicola@gmail.com\"}}','{\"area_atuacao\":\"asdas\",\"endereco\":\"Rödelheimer Bahnweg, 20\",\"slogan\":\"asdasd\",\"id_usuario\":{\"nome\":\"Anderson de Souza dos Santos\",\"telefone\":\"017684774533\",\"email\":\"santedicola@gmail.com\"}}',NULL,NULL),
(47,50,'directus_fields','17','{\"id\":17,\"collection\":\"Usuario\",\"field\":\"ativo\",\"special\":[\"cast-boolean\"],\"interface\":null,\"options\":null,\"display\":\"boolean\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}','{\"collection\":\"Usuario\",\"field\":\"ativo\",\"display\":\"boolean\"}',NULL,NULL),
(48,51,'directus_fields','17','{\"id\":17,\"collection\":\"Usuario\",\"field\":\"ativo\",\"special\":[\"cast-boolean\"],\"interface\":\"boolean\",\"options\":null,\"display\":\"boolean\",\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null,\"validation\":null,\"validation_message\":null}','{\"collection\":\"Usuario\",\"field\":\"ativo\",\"interface\":\"boolean\"}',NULL,NULL),
(49,55,'Usuario','122','{\"nome\":\"Fome Zero\",\"telefone\":\"71988998899\",\"email\":\"fomezero@fomezero.com\"}','{\"nome\":\"Fome Zero\",\"telefone\":\"71988998899\",\"email\":\"fomezero@fomezero.com\"}',50,NULL),
(50,56,'Instituicao','22','{\"area_atuacao\":\"Distribuição de Alimentos\",\"endereco\":\"Rua da Atenção, 20\",\"slogan\":\"Cuidamos daqueles que precisam!\",\"id_usuario\":{\"nome\":\"Fome Zero\",\"telefone\":\"71988998899\",\"email\":\"fomezero@fomezero.com\"}}','{\"area_atuacao\":\"Distribuição de Alimentos\",\"endereco\":\"Rua da Atenção, 20\",\"slogan\":\"Cuidamos daqueles que precisam!\",\"id_usuario\":{\"nome\":\"Fome Zero\",\"telefone\":\"71988998899\",\"email\":\"fomezero@fomezero.com\"}}',NULL,NULL),
(51,57,'Usuario','3','{\"id\":3,\"nome\":\"Viva Comunidade\",\"telefone\":\"71985432109\",\"email\":\"contato@vivacomunidade.org\",\"ativo\":true}','{\"ativo\":true}',NULL,NULL),
(52,58,'Usuario','6','{\"id\":6,\"nome\":\"Voz da Liberdade\",\"telefone\":\"71982109876\",\"email\":\"contato@vozdaliberdade.org\",\"ativo\":true}','{\"ativo\":true}',NULL,NULL),
(53,59,'Usuario','10','{\"id\":10,\"nome\":\"Inclusão Tech\",\"telefone\":\"71978765432\",\"email\":\"contato@inclusaotech.org\",\"ativo\":true}','{\"ativo\":true}',NULL,NULL),
(54,60,'Usuario','13','{\"id\":13,\"nome\":\"Juntos no Esporte\",\"telefone\":\"71975432109\",\"email\":\"contato@juntosnoesporte.org\",\"ativo\":true}','{\"ativo\":true}',NULL,NULL),
(55,61,'Usuario','17','{\"id\":17,\"nome\":\"Bem-estar Mental\",\"telefone\":\"71971098765\",\"email\":\"contato@bemestamental.org\",\"ativo\":true}','{\"ativo\":true}',NULL,NULL),
(56,62,'Usuario','122','{\"id\":122,\"nome\":\"Fome Zero\",\"telefone\":\"71988998899\",\"email\":\"fomezero@fomezero.com\",\"ativo\":true}','{\"ativo\":true}',NULL,NULL),
(57,65,'directus_collections','Doacoes','{\"collection\":\"Doacoes\"}','{\"collection\":\"Doacoes\"}',NULL,NULL),
(58,66,'directus_fields','21','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"id_usuario\"}','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"id_usuario\"}',NULL,NULL),
(59,67,'directus_fields','22','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"id_instituicao\"}','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"id_instituicao\"}',NULL,NULL),
(60,68,'directus_fields','23','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"id\"}','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"id\"}',NULL,NULL),
(61,69,'directus_fields','24','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"valor\"}','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"valor\"}',NULL,NULL),
(62,70,'directus_fields','25','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"data\"}','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"data\"}',NULL,NULL),
(63,72,'directus_collections','Doacoes','{\"collection\":\"Doacoes\"}','{\"collection\":\"Doacoes\"}',NULL,NULL),
(64,73,'directus_fields','26','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"id_usuario\"}','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"id_usuario\"}',NULL,NULL),
(65,74,'directus_fields','27','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"id_instituicao\"}','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"id_instituicao\"}',NULL,NULL),
(66,75,'directus_fields','28','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"id\"}','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"id\"}',NULL,NULL),
(67,76,'directus_fields','29','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"valor\"}','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"valor\"}',NULL,NULL),
(68,77,'directus_fields','30','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"tipo_pagamento\"}','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"tipo_pagamento\"}',NULL,NULL),
(69,78,'directus_fields','31','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"data\"}','{\"special\":null,\"collection\":\"Doacoes\",\"field\":\"data\"}',NULL,NULL),
(70,79,'directus_permissions','21','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Doacoes\",\"action\":\"share\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Doacoes\",\"action\":\"share\"}',NULL,NULL),
(71,80,'directus_permissions','22','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Doacoes\",\"action\":\"create\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Doacoes\",\"action\":\"create\"}',NULL,NULL),
(72,81,'directus_permissions','23','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Doacoes\",\"action\":\"read\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Doacoes\",\"action\":\"read\"}',NULL,NULL),
(73,82,'directus_permissions','24','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Doacoes\",\"action\":\"update\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Doacoes\",\"action\":\"update\"}',NULL,NULL),
(74,83,'directus_permissions','25','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Doacoes\",\"action\":\"delete\"}','{\"policy\":\"abf8a154-5b1c-4a46-ac9c-7300570f4f17\",\"permissions\":null,\"validation\":null,\"fields\":[\"*\"],\"presets\":null,\"collection\":\"Doacoes\",\"action\":\"delete\"}',NULL,NULL),
(75,85,'Doacoes','1','{\"valor\":100,\"id_instituicao\":1,\"id_usuario\":1,\"tipo_pagamento\":\"Cartão de Crédito\"}','{\"valor\":100,\"id_instituicao\":1,\"id_usuario\":1,\"tipo_pagamento\":\"Cartão de Crédito\"}',NULL,NULL),
(76,86,'Usuario','123','{\"email\":\"anonimo@doacao.com.br\",\"nome\":\"Anonimo\",\"telefone\":\"01717620552\"}','{\"email\":\"anonimo@doacao.com.br\",\"nome\":\"Anonimo\",\"telefone\":\"01717620552\"}',NULL,NULL),
(77,87,'Doacoes','2','{\"valor\":100,\"id_instituicao\":1,\"id_usuario\":1,\"tipo_pagamento\":\"PayPal\"}','{\"valor\":100,\"id_instituicao\":1,\"id_usuario\":1,\"tipo_pagamento\":\"PayPal\"}',NULL,NULL);
/*!40000 ALTER TABLE `directus_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_roles`
--

DROP TABLE IF EXISTS `directus_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_roles` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(64) NOT NULL DEFAULT 'supervised_user_circle',
  `description` text DEFAULT NULL,
  `parent` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_roles_parent_foreign` (`parent`),
  CONSTRAINT `directus_roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_roles`
--

LOCK TABLES `directus_roles` WRITE;
/*!40000 ALTER TABLE `directus_roles` DISABLE KEYS */;
INSERT INTO `directus_roles` VALUES
('db96d412-c74d-4d65-93d6-e7b5268792d5','Administrator','verified','$t:admin_description',NULL);
/*!40000 ALTER TABLE `directus_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_sessions`
--

DROP TABLE IF EXISTS `directus_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_sessions` (
  `token` varchar(64) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `share` char(36) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `next_token` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`token`),
  KEY `directus_sessions_user_foreign` (`user`),
  KEY `directus_sessions_share_foreign` (`share`),
  CONSTRAINT `directus_sessions_share_foreign` FOREIGN KEY (`share`) REFERENCES `directus_shares` (`id`) ON DELETE CASCADE,
  CONSTRAINT `directus_sessions_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_sessions`
--

LOCK TABLES `directus_sessions` WRITE;
/*!40000 ALTER TABLE `directus_sessions` DISABLE KEYS */;
INSERT INTO `directus_sessions` VALUES
('IsQ5FQf8G7vxzim6xGEvoiscATTksV11kMK2kXFpif1umB02GghvVANcvRwdovr6','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-29 19:14:16','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36',NULL,'http://cms.tcc.local',NULL),
('kbKA8LbCJa15Ml4xeA2F3NG-wWnEH37OwHJ4PRP3RDVC-8Wq-2BuECDb8A3bQ5Gb','bf284b51-cafd-4069-959a-fd9246ac5922','2024-11-28 19:14:26','10.42.0.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36',NULL,'http://cms.tcc.local','IsQ5FQf8G7vxzim6xGEvoiscATTksV11kMK2kXFpif1umB02GghvVANcvRwdovr6');
/*!40000 ALTER TABLE `directus_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_settings`
--

DROP TABLE IF EXISTS `directus_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) NOT NULL DEFAULT 'Directus',
  `project_url` varchar(255) DEFAULT NULL,
  `project_color` varchar(255) NOT NULL DEFAULT '#6644FF',
  `project_logo` char(36) DEFAULT NULL,
  `public_foreground` char(36) DEFAULT NULL,
  `public_background` char(36) DEFAULT NULL,
  `public_note` text DEFAULT NULL,
  `auth_login_attempts` int(10) unsigned DEFAULT 25,
  `auth_password_policy` varchar(100) DEFAULT NULL,
  `storage_asset_transform` varchar(7) DEFAULT 'all',
  `storage_asset_presets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`storage_asset_presets`)),
  `custom_css` text DEFAULT NULL,
  `storage_default_folder` char(36) DEFAULT NULL,
  `basemaps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`basemaps`)),
  `mapbox_key` varchar(255) DEFAULT NULL,
  `module_bar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`module_bar`)),
  `project_descriptor` varchar(100) DEFAULT NULL,
  `default_language` varchar(255) NOT NULL DEFAULT 'en-US',
  `custom_aspect_ratios` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`custom_aspect_ratios`)),
  `public_favicon` char(36) DEFAULT NULL,
  `default_appearance` varchar(255) NOT NULL DEFAULT 'auto',
  `default_theme_light` varchar(255) DEFAULT NULL,
  `theme_light_overrides` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`theme_light_overrides`)),
  `default_theme_dark` varchar(255) DEFAULT NULL,
  `theme_dark_overrides` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`theme_dark_overrides`)),
  `report_error_url` varchar(255) DEFAULT NULL,
  `report_bug_url` varchar(255) DEFAULT NULL,
  `report_feature_url` varchar(255) DEFAULT NULL,
  `public_registration` tinyint(1) NOT NULL DEFAULT 0,
  `public_registration_verify_email` tinyint(1) NOT NULL DEFAULT 1,
  `public_registration_role` char(36) DEFAULT NULL,
  `public_registration_email_filter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`public_registration_email_filter`)),
  PRIMARY KEY (`id`),
  KEY `directus_settings_project_logo_foreign` (`project_logo`),
  KEY `directus_settings_public_foreground_foreign` (`public_foreground`),
  KEY `directus_settings_public_background_foreign` (`public_background`),
  KEY `directus_settings_storage_default_folder_foreign` (`storage_default_folder`),
  KEY `directus_settings_public_favicon_foreign` (`public_favicon`),
  KEY `directus_settings_public_registration_role_foreign` (`public_registration_role`),
  CONSTRAINT `directus_settings_project_logo_foreign` FOREIGN KEY (`project_logo`) REFERENCES `directus_files` (`id`),
  CONSTRAINT `directus_settings_public_background_foreign` FOREIGN KEY (`public_background`) REFERENCES `directus_files` (`id`),
  CONSTRAINT `directus_settings_public_favicon_foreign` FOREIGN KEY (`public_favicon`) REFERENCES `directus_files` (`id`),
  CONSTRAINT `directus_settings_public_foreground_foreign` FOREIGN KEY (`public_foreground`) REFERENCES `directus_files` (`id`),
  CONSTRAINT `directus_settings_public_registration_role_foreign` FOREIGN KEY (`public_registration_role`) REFERENCES `directus_roles` (`id`) ON DELETE SET NULL,
  CONSTRAINT `directus_settings_storage_default_folder_foreign` FOREIGN KEY (`storage_default_folder`) REFERENCES `directus_folders` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_settings`
--

LOCK TABLES `directus_settings` WRITE;
/*!40000 ALTER TABLE `directus_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_shares`
--

DROP TABLE IF EXISTS `directus_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_shares` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `role` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `times_used` int(11) DEFAULT 0,
  `max_uses` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_shares_role_foreign` (`role`),
  KEY `directus_shares_user_created_foreign` (`user_created`),
  KEY `directus_shares_collection_foreign` (`collection`),
  CONSTRAINT `directus_shares_collection_foreign` FOREIGN KEY (`collection`) REFERENCES `directus_collections` (`collection`) ON DELETE CASCADE,
  CONSTRAINT `directus_shares_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `directus_shares_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_shares`
--

LOCK TABLES `directus_shares` WRITE;
/*!40000 ALTER TABLE `directus_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_translations`
--

DROP TABLE IF EXISTS `directus_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_translations` (
  `id` char(36) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_translations`
--

LOCK TABLES `directus_translations` WRITE;
/*!40000 ALTER TABLE `directus_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_users`
--

DROP TABLE IF EXISTS `directus_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_users` (
  `id` char(36) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `avatar` char(36) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `tfa_secret` varchar(255) DEFAULT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'active',
  `role` char(36) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `last_access` timestamp NULL DEFAULT NULL,
  `last_page` varchar(255) DEFAULT NULL,
  `provider` varchar(128) NOT NULL DEFAULT 'default',
  `external_identifier` varchar(255) DEFAULT NULL,
  `auth_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`auth_data`)),
  `email_notifications` tinyint(1) DEFAULT 1,
  `appearance` varchar(255) DEFAULT NULL,
  `theme_dark` varchar(255) DEFAULT NULL,
  `theme_light` varchar(255) DEFAULT NULL,
  `theme_light_overrides` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`theme_light_overrides`)),
  `theme_dark_overrides` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`theme_dark_overrides`)),
  PRIMARY KEY (`id`),
  UNIQUE KEY `directus_users_external_identifier_unique` (`external_identifier`),
  UNIQUE KEY `directus_users_email_unique` (`email`),
  UNIQUE KEY `directus_users_token_unique` (`token`),
  KEY `directus_users_role_foreign` (`role`),
  CONSTRAINT `directus_users_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_users`
--

LOCK TABLES `directus_users` WRITE;
/*!40000 ALTER TABLE `directus_users` DISABLE KEYS */;
INSERT INTO `directus_users` VALUES
('bf284b51-cafd-4069-959a-fd9246ac5922','Admin','User','admin@example.com','$argon2id$v=19$m=65536,t=3,p=4$3Pva6Ajcugq/2lhdX27XKA$jNUhjsuUVNRvF4sljqKtoJGsA2EEF3kabK7yVmgGf40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active','db96d412-c74d-4d65-93d6-e7b5268792d5',NULL,'2024-11-28 19:14:16','/users','default',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `directus_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_versions`
--

DROP TABLE IF EXISTS `directus_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_versions` (
  `id` char(36) NOT NULL,
  `key` varchar(64) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL,
  `user_updated` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_versions_collection_foreign` (`collection`),
  KEY `directus_versions_user_created_foreign` (`user_created`),
  KEY `directus_versions_user_updated_foreign` (`user_updated`),
  CONSTRAINT `directus_versions_collection_foreign` FOREIGN KEY (`collection`) REFERENCES `directus_collections` (`collection`) ON DELETE CASCADE,
  CONSTRAINT `directus_versions_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `directus_versions_user_updated_foreign` FOREIGN KEY (`user_updated`) REFERENCES `directus_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_versions`
--

LOCK TABLES `directus_versions` WRITE;
/*!40000 ALTER TABLE `directus_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_webhooks`
--

DROP TABLE IF EXISTS `directus_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL DEFAULT 'POST',
  `url` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `data` tinyint(1) NOT NULL DEFAULT 1,
  `actions` varchar(100) NOT NULL,
  `collections` varchar(255) NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `was_active_before_deprecation` tinyint(1) NOT NULL DEFAULT 0,
  `migrated_flow` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directus_webhooks_migrated_flow_foreign` (`migrated_flow`),
  CONSTRAINT `directus_webhooks_migrated_flow_foreign` FOREIGN KEY (`migrated_flow`) REFERENCES `directus_flows` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_webhooks`
--

LOCK TABLES `directus_webhooks` WRITE;
/*!40000 ALTER TABLE `directus_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_webhooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-11-28 19:34:01
