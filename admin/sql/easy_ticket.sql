-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 07-Jan-2018 às 14:59
-- Versão do servidor: 5.5.38-0ubuntu0.14.04.1
-- versão do PHP: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `easy_ticket`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(2, 'Mafalda', 'Mafalda'),
(3, 'Nuno_Palma', 'Nuno_Palma'),
(4, 'Bárbara', 'Barbara');

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `data` datetime DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `descricao` text,
  `popularidade` int(11) DEFAULT '0',
  `categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `categoria` (`categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`id`, `titulo`, `data`, `local`, `imagem`, `descricao`, `popularidade`, `categoria`) VALUES
(1, 'Machine Head', '2018-03-11 09:30:00', 'Campo Pequeno', 'banda2.jpg', 'Machine Head é uma banda de metal formada em 1991 em Oakland, Califórnia. O grupo foi fundado pelo guitarrista e vocalista Robb Flynn e o baixista Adam Duce. A formação atual é composta por Flynn, o baterista Dave McClain, o guitarrista Phill Demmel e o baixista Jared MacEachern. O Machine Head foi uma das bandas pioneiras no New Wave of American Heavy Metal.\r\n<br></br>\r\nMachine Head foi formada por Robb Flynn , anteriormente membro das bandas  Forbidden e Vio-lence . Flynn sentiu-se musicalmente insatisfeito com Vio-lence e pediu para iniciar um projeto paralelo. Quando seu pedido foi negado pelos outros integrantes, ele deixou a banda e formou o Machine Head em 1991 com Adam Duce, Logan Mader e Tony Constanza. O primeiro álbum da banda, Burn My Eyes , foi um grande sucesso na Europa, onde ganhou boa repercussão com o programa Headbangers Ball da MTV. Nos EUA (com o HBB tirado do ar durante o movimento grunge) o Machine Head não alcançaria sucesso até álbuns posteriores.\r\n<br></br>\r\nA banda quase se desfez em 2002, após terem seu contrato encerrado com a gravadora Roadrunner Records devido a uma controvérsia em torno de seu quarto álbum, Supercharger (lançado três semanas depois dos atentados de 11 de setembro de 2001), tendo suas canções e o videoclipe produzido para a canção "Crashing Around You" (que contava com edifícios em chamas) retirados de todos os meios de comunicação. A banda reassinou com a Roadrunner pouco tempo depois e já lançou quatro álbuns desde 2003, com The Blackening (2007) sendo nomeado ao Grammy Award. O Machine Head já vendeu mais de 3 milhões de discos em todo o mundo.', 100, 1),
(2, 'Alter Bridge', '2018-01-30 20:00:00', 'Altice Arena', 'banda1.jpg', 'Alter Bridge é um supergrupo de metal alternativo/post-grunge dos Estados Unidos, formado em 2004 a partir da pausa da banda Creed. O nome faz referência a uma ponte na cidade natal do líder/guitarrista, Mark Tremonti, lugar que era sempre proibido de ir por sua mãe, fazendo alusão então a ir além dos limites impostos, tomar um outro rumo.\r\n<br></br>\r\nOs até então integrantes do Creed Mark Tremonti (guitarrista) e Scott Phillips (baterista) juntaram-se a seu antigo companheiro, o baixista Brian Marshall, e com Myles Kennedy, ex-vocalista do The Mayfield Four para formar o Alter Bridge.', 50, 1),
(3, 'Metallica', '2018-02-10 00:00:00', 'Altice Arena', 'banda19.jpg', 'Metallica é uma banda norte-americana de heavy metal originaria de Los Angeles, mas com base em San Francisco. O seu repertório inclui tempos rápidos, pesados, melodicos, instrumentais, e musicalidade agressiva, a qual os colocou no lugar de pioneiros do thrash metal e uma das bandas fundadoras do Big Four of Thrash, conjuntamente com Slayer, Megadeth e Anthrax. O Metallica foi formado em 1981, após James Hetfield responder a um anúncio que Lars Ulrich colocou no jornal local. A sua formação atual apresenta os fundadores Ulrich (bateria) e Hetfield (vocal e guitarra base), o guitarrista Kirk Hammett (que se juntou à banda em 1983), e o baixista Robert Trujillo (membro desde 2003). Antes de chegarem à sua formação atual, a banda teve outros integrantes, sendo eles: Dave Mustaine (guitarra), Ron McGovney, Cliff Burton e Jason Newsted (baixo).\r\n\r\nCom os lançamentos de seus quatro primeiros álbuns, o Metallica ganhou uma crescente base de fãs na comunidade de música underground, e alguns críticos dizem que Master of Puppets (1986) é um dos álbuns de thrash metal mais influentes e "pesados". Logo após, a banda alcançou grande sucesso comercial com o seu álbum auto-intitulado de 1991 (também conhecido como The Black Album), que já vendeu 30 milhões de cópias pelo mundo até hoje.[3] Com este lançamento a banda expandiu seu direcionamento musical, tentando atingir uma audiência mais mainstream. Com o lançamento de Load e Reload nos anos 1990, o Metallica tentou aproximar-se do rock alternativo que fazia sucesso na época para ganhar uma nova base de fãs, mas foi acusada por seus fãs antigos de "vender-se" para as gravadoras. Em 2000 o Metallica esteve entre os vários artistas que apresentaram uma ação judicial contra o Napster por compartilhar materiais protegidos por direitos de autor livremente sem o consentimento dos membros da banda.[4] A resolução foi tomada, e Napster se tornou um serviço de uso pago.', 90, 1),
(4, 'Megadeth', '2018-05-01 18:30:00', 'Altice Arena', 'banda11.jpg', 'Megadeth é uma banda norte-americana de heavy metal liderada por seu fundador, o vocalista e guitarrista Dave Mustaine. O grupo foi formado em 1983, após Dave ser demitido do Metallica. Desde então, a banda lançou quinze álbuns de estúdio, quatro álbuns ao vivo, dois EP e cinco compilações.\r\n\r\nA banda ganhou fama internacional ligeiramente. Ficou muito conhecida por sempre trocar sua formação devido aos constantes problemas de personalidade de Mustaine e pelo fato de que o vocalista não queria viciados na banda em suas turnês (mesmo sendo sabido que ele mesmo tinha sérios problemas com drogas). Após o lançamento de seu álbum estreia em 1985, a banda lançou álbuns premiados com o disco de ouro e platina. O álbum Rust in Peace (1990) é considerado a melhor realização da banda. O álbum Countdown to Extinction (1992) foi o maior sucesso de vendas do grupo e nomeado ao Grammy no mesmo ano e Youthanasia (1994) manteve o bom ritmo do grupo. Com os lançamentos de Cryptic Writings (1997) e Risk (1999), o Megadeth se afastou de seus lançamentos antigos, tendo quase que abandonado o thrash metal e ido pra um lado mais heavy metal, sendo que somente com The World Needs a Hero (2001) a banda voltou às raízes do thrash. O grupo foi dissolvido em 2002, após Mustaine descobrir uma séria lesão no nervo do braço esquerdo, mas após dois anos de longas e exaustivas sessões de fisioterapia, Mustaine reformulou a banda decidiu voltar a ativa com o lançamento de The System Has Failed (2004). Desde então, a banda lançou outros cinco álbuns: United Abominations (2007), Endgame (2009), TH1RT3EN (2011), Super Collider (2013) e Dystopia (2016). Megadeth faz parte do "Big Four of Thrash", juntamente com Slayer, Metallica e Anthrax.', 85, 1),
(5, 'Scorpions', '2018-04-23 17:00:00', 'Campo Pequeno', 'banda13.jpg', 'Scorpions é uma banda de rock originária de Hanôver, Alemanha fundada em 1965 pelo guitarrista Rudolf Schenker, sendo a primeira banda de hard rock formada no país germânico.[8] No início eram chamadas de Nameless (aqueles sem nomes), depois passou para The Scorpions até o final de 1969, depois foram chamados simplesmente de Scorpions.[8] O primeiro álbum da banda foi o LP Lonesome Crow de 1972, com os irmãos Rudolf e Michael Schenker nas guitarras. No ano seguinte, Michael deixa a banda e foi substituído pelo guitarrista Uli Jon Roth, que gravou os álbuns Fly to the Rainbow, em 1974, In Trance em 1975, Virgin Killer, em 1976 e Taken by Force em 1977.[9] O último trabalho da "era Uli Jon Roth" é o álbum ao vivo Tokyo Tapes de 1978.\r\n\r\nApós a saída de Roth, vem outro jovem alemão Matthias Jabs para ser guitarrista, quando começa o caminho da banda para o mercado dos Estados Unidos com o disco Lovedrive de 1979, que recebeu disco de ouro no país. Na mesma linha seguiria os discos Animal Magnetism em 1980, Blackout de 1982, Love at First Sting, em 1984, Savage Amusement em 1988.\r\n\r\nNa década posterior os álbuns Crazy World e Face the Heat levantou-os à categoria de banda alemã de maior sucesso, mas passou pela saída de dois dos seus membros, Herman Rarebell e Francis Buchholz. Mas eles foram capazes de mudar seu som com os álbuns Pure Instinct e Eye II Eye, que mostraram um som renovado e um toque ainda mais suave em sua carreira. No novo milênio, os projetos sinfônicos Moment of Glory e Acoustica os colocam de volta ao cenário musical, bem como os discos Unbreakable de 2004 e Humanity: Hour I de 2007. Atualmente a banda está em sua turnê depois de lançar seu álbum de estúdio Return to Forever de 2015, que os leva para os cinco continentes até 2016.[10]', 60, 1),
(6, 'Iron Maiden', '2018-06-06 19:00:00', 'Altice Arena', 'banda14.jpg', 'Iron Maiden é uma banda britânica de heavy metal, formada em 1975[1] pelo baixista Steve Harris, ex-integrante das bandas Gypsy''s Kiss e Smiler. O nome "Iron Maiden", homônimo de um instrumento de tortura medieval que aparece no filme O Homem da Máscara de Ferro, baseado na obra do romancista francês Alexandre Dumas.\r\n\r\nPioneiros do movimento musical que ficou conhecido como NWOBHM (Nova Onda do Heavy Metal Britânico), a banda atingiu êxito substancial no início dos anos 1980, acompanhada de uma crescente base de fãs. Mas foi com o disco The Number of the Beast, de 1982, que o Iron Maiden chegou à fama internacional, produzindo uma sequência de álbuns multi-platina que tornaram-se clássicos do género. O seu trabalho influenciou diversas bandas de rock e metal, das mais antigas às modernas, e são considerados um dos grupos mais importantes e influentes do estilo.', 99, 1),
(7, 'Commedia a La Carte', '2018-04-13 15:00:00', 'Teatro Villaret', 'banda7.jpg', 'A receita é simples: junta-se “o melhor improvisador colombiano do Mundo, Gustavo Miranda, e o melhor improvisador brasileiro do Mundo, Marco Gonçalves, e juntos farão a melhor selecção de improvisação do Mundo.” Dito isto, com o tom definitivo desta prosápia de promoção, os tais “melhores” juntam-se em palco a outros decerto tão bons, como são César Mourão e Carlos M. Cunha, e seja o que Deus quiser. Desde que haja imaginação, a improvisação está à solta.', 110, 4),
(8, 'Simone - O Musical', '2018-01-26 16:30:00', 'Teatro Tivoli BBVA', 'banda3.jpg', 'Aos 79 anos de vida e com 60 anos de carreira, Simone de Oliveira será homenageada em “Simone, O Musical”, um espectáculo em dois actos. Este musical, que tem texto e encenação de Tiago Torres da Silva (o escritor também é o autor do tema “À espera das canções”, que a cantora levou ao Festival da Canção de 2015), tem a inovação de ter a homenageada em palco, algo de inédito em Portugal.\r\n\r\n \r\n<br></br>\r\n \r\n\r\nA apresentação à imprensa de “Simone, O Musical” aconteceu no Teatro Tivoli BBVA, na tarde desta segunda-feira e contou com a presença do elenco, equipa técnica, autor e do director geral da UAU, Paulo Dias.\r\n\r\n \r\n\r\n', 120, 4),
(9, 'Foo Fighers', '2018-09-02 19:45:00', 'Passeio Marítimo de Algés', 'banda15.jpg', 'Foo Fighters is an American rock band, formed in Seattle, Washington in 1994. It was founded by Nirvana drummer Dave Grohl as a one-man project following the dissolution of Nirvana after the death of Kurt Cobain. The group got its name from the UFOs and various aerial phenomena that were reported by Allied aircraft pilots in World War II, which were known collectively as "foo fighters".\r\n\r\nPrior to the release of Foo Fighters'' 1995 debut album Foo Fighters, which featured Grohl as the only official member, Grohl recruited bassist Nate Mendel and drummer William Goldsmith, both formerly of Sunny Day Real Estate, as well as Nirvana touring guitarist Pat Smear to complete the lineup. The band began with performances in Portland, Oregon. Goldsmith quit during the recording of the group''s second album, The Colour and the Shape (1997), when most of the drum parts were re-recorded by Grohl himself. Smear''s departure followed soon afterward, though he would rejoin them in 2006.', 74, 1),
(10, 'Cuca Roseta', '2018-05-04 18:00:00', 'Coliseu do Porto', 'banda20.jpg', 'Cuca Roseta é uma das vozes da nova geração do Fado. O seu primeiro disco, lançado em 2011, foi produzido por Gustavo Santaolalla (músico e produtor detentor de dois Óscares e mais de 20 Grammys). Posteriormente grava “Raiz” onde se assume como compositora e letrista da maior parte dos temas. O sucesso repete-se e canta em mais de 30 paises de mundo, em todos os continentes.\r\n\r\nNo terceiro disco volta a surpreender e convida um aclamado produtor brasileiro. A primeira vez que Roseta cantou no Brasil foi durante o Campeonato do Mundo, tendo atuado nas principais cidades, sempre com teatros lotados. Aqui nascia a admiração e o amor do Brasil por esta fadista, que também não passou despercebida a uma pessoa muito especial: Nelson Motta, compositor, jornalista e produtor do Brasil, que sempre lhe dedicou os maiores elogios. Após um encontro em Lisboa, convidou Nelson Motta para produzir o seu mais recente disco. Nelson aceitou, mesmo depois de 10 anos de interregno, pois viu em Roseta um potencial único e um projeto que sempre quis fazer - gravar um disco de world fado - um fado virado para o mundo. Entre o Rio e Lisboa, juntou-se o talento e a voz de Roseta à sábia mestria de Nelson Motta. O disco, de nome “Riû”, junta vários universos musicais que influenciaram o fado e figuras incontornáveis da música mundial como Bryan Adams, Djavan, Ivan Lins, Jorge Drexler entre muitos outros.[2] A fadista multiplica as suas participações e concertos pelo mundo inteiro. No ano de 2015 a fadista cantou em mais de 120 concertos, em Portugal e no estrangeiro.', 66, 3),
(11, 'Carminho', '2018-11-27 21:00:00', 'Teatro S. Jorge', 'banda16.jpg', 'Maria do Carmo de Carvalho Rebelo de Andrade ComIH (Lisboa, 20 de agosto de 1984), artisticamente conhecida simplesmente como Carminho é uma cantora e compositora portuguesa. É filha da também fadista Teresa Siqueira, e é considerada uma das mais talentosas e inovadoras cantoras de fado da sua geração, interpretando também outros géneros musicais, como a música popular portuguesa, a música popular brasileira e jazz.', 57, 3),
(12, 'Harry Potter - Em concerto', '2018-06-14 17:29:00', 'Altice Arena', 'banda4.jpg', 'Depois do sucesso do primeiro filme-concerto da saga Harry Potter em Portugal, chega à Altice Arena, em Lisboa, o segundo capítulo de uma das mais célebres sagas da História do cinema: “Harry Potter e a Câmara dos Segredos”, com banda sonora interpretada ao vivo pela Orquestra Filarmonia das Beiras, enquanto o filme é projetado num ecrã de 20 metros em alta definição.\r\n<br></br>\r\nA série de filmes-concerto de Harry Potter, que é mais uma experiência mágica do mundo de feiticeiros de J.K. Rowling, arrancou em junho de 2016 com “Harry Potter e a Pedra Filosofal” e tem já centenas de performances marcadas para 2018 em mais de 35 países, com passagem assegurada por Portugal.\r\n\r\n ', 100, 4),
(13, 'Camané', '2018-03-30 22:00:00', 'Coliseu dos Recreios', 'banda17.jpg', 'A sua primeira interpretação em público fê-la no restaurante Cesária, em Alcântara, por sua própria iniciativa ao dirigir-se aos músicos e pedir para cantar um fado de Fernando Maurício. A partir daí passou a ir com frequência às coletividades onde se cantava o Fado, podendo assim continuar a cantar[4].\r\n\r\nCom apenas 11 anos participa pela primeira vez na Grande Noite do Fado, numa época em que não havia competição em separado para os mais novos. Dois anos depois, na edição de 1979, alcança a vitória e é convidado a gravar um LP produzido por mestre António Chainho.[5]\r\n\r\nNa instrução escolar não chegou a completar o nono ano, pelo que o pai, chefe de construção naval, lhe arranjou um emprego a calafetar barcos no Arsenal do Alfeite[6]. Esteve lá durante dois anos, até ser chamado a cumprir o serviço militar obrigatório[7].\r\n\r\nPor essa altura, por intermédio de Carlos Zel e do irmão deste, o guitarrista Alcino Frazão, inicia como profissional o circuito das casas de Fado. Passou pelas principais da capital — Fado Menor, O Faia, Adega Machado, Café Luso, Clube do Fado e Senhor Vinho', 68, 3),
(14, 'NOS Primavera Sound', '2018-07-14 17:00:00', 'Parque da Cidade, Porto', 'banda18.jpg', 'O NOS Primavera Sound é o homólogo português do festival Primavera Sound que se celebra em Barcelona há quinze anos. [1]\r\n\r\nO cartaz do NOS Primavera Sound conta com uma ampla selecção de artistas internacionais, a par de uma significativa representação do panorama musical português. A linha artística segue as mesmas directrizes do evento musical barcelonês, que se distingue pela variedade de estilos e pela aposta em novas bandas, destacando tanto o panorama local como artistas internacionais, com longas e respeitadas carreiras. Depois do sucesso da quarta edição, o NOS Primavera Sound é já uma paragem obrigatória no panorama de festivais europeus. A excelente localização geográfica, as boas vias de comunicação da cidade com o resto da Europa e do Mundo e a distinção do festival no panorama musical português contribui para o crescimento da cidade, na sua projecção enquanto capital cultural e para a sua dinamização internacional como destino turístico.', 60, 2),
(15, 'Macbeth', '2018-03-16 19:00:00', 'Teatro D. Carlos', 'banda5.jpg', 'Macbeth é uma tragédia do dramaturgo inglês William Shakespeare, sobre um regicídio e suas consequências. É a tragédia shakespeariana mais curta, e acredita-se que tenha sido escrita entre 1603 e 1607. O primeiro relato de uma performance da peça é de abril de 1611, quando Simon Forman registrou tê-la visto no Globe Theatre, em Londres. A obra foi publicada pela primeira vez no Folio, de 1623, possivelmente a partir de uma transcrição de alguma performance específica.\r\n<br></br>\r\nAs principais fontes de Shakespeare para a tragédia são os relatos dos reis Duff e Duncan nas Crônicas da Inglaterra, Escócia e Irlanda, de 1587, uma história das Ilhas Britânicas familiar a Shakespeare e seus contemporâneos, e pelos escritos do filósofo escocês Hector Boece.\r\n<br></br>\r\nNo mundo teatral anglófono, muitos acreditam que a peça é "amaldiçoada", e nem mesmo mencionam seu nome em voz alta, referindo-se a ela como "The Scottish play" ("A peça escocesa").\r\nais.', 20, 4),
(16, 'Laurus Nobilis', '2018-05-19 18:00:00', 'Famalicão', 'banda9.jpg', 'O Festival Laurus Nobilis Famalicão vai para quarta edição, é um festival de certa forma eclético onde se vai ajustando a vertente musical que o publico mais adere. A edição de 2018 será maioritariamente preenchida com Heavy Metal e Rock', 40, 2),
(17, 'Villa Sessions', '2018-02-23 19:15:00', 'Famalicão', 'banda10.jpg', 'Villa Sessions 2018\r\nO Festival Internacional de Blues de Vila do Conde regressa para uma segunda edição\r\n\r\nVilla Sessions 2018 - International Blues Festival of Vila do Conde\r\n\r\nDe 23 a 25 de fevereiro no auditório municipal\r\n\r\n- 23, sexta feira, 21h45, actuam os Budda Power Blues abrindo o festival\r\n- 24, Sábado, 21h45, actua Trevor Sewell com The Trevor Sewell Band\r\n- 25, Domingo, 18h00, actuam os  galegos The Lákazans \r\n\r\n- 24 e 25 de tarde, pelas 16h00, actuam os Dog´s Bollocks como side act aos concertos de palco. \r\n- 24, pelas 17h00 dança Swing e Blues pela Academia de Dança Bota Swing\r\n- 24 pelas 18h00, haverá uma tertúlia sobre Blues com nomes importantes da industria, como músicos, produtores, media.. à volta de um workshop de Blues .\r\n- 24 e 25 o dia todo, haverão expositores e apresentações de equipamentos e material ligado a música. \r\n- 23, 24 e 25 após concertos haverá uma Blues After Party no Encanas Bar\r\n\r\nVilla Sessions 2018 \r\nRecomendado pela Smooth FM', 47, 2),
(18, 'Rock In Rio', '2018-06-03 18:00:00', 'Parque da Bela Vista', 'banda12.jpg', 'Rock in Rio is a recurring music festival originating in Rio de Janeiro, Brazil. It later branched into other locations such as Lisbon, Madrid and Las Vegas.\r\n\r\nSeven incarnations of the festival were held in Rio de Janeiro, in 1985, 1991, 2001, 2011, 2013, 2015, and 2017, seven in Lisbon, in 2004, 2006, 2008, 2010, 2012, 2014 and 2016, three in Madrid in 2008, 2010 and 2012, and one in Las Vegas, in 2015. Brazilian entrepreneur and advertiser Roberto Medina was responsible for the inception and organization of the festival, as well as moving the 2004 edition to Lisbon, while controversially keeping the brand "Rock in Rio".[1] In 2011, Rock in Rio returned to its original location, Rio de Janeiro, with a new line-up of singers and groups.\r\n\r\nRock in Rio is one of the largest music festivals in the world, with 1.5 million people attending the first event, 700,000 attending the second and fourth, about 1.2 million attending the third, and about 350,000 people attending each of the three Lisbon events.', 100, 2),
(19, 'Lago dos Cisnes - Russian Ballet', '2018-10-11 18:00:00', 'Teatro Olga Cadaval', 'banda6.jpg', 'O LAGO DOS CISNES é uma história de amor e traição, onde o bem trunfa sobre o mail. Ícone do Romantismo, há mais de um século que este bailado encanta o público.\r\nConsiderado o mais espetacular dos bailados clássicos, a sua coreografia exige dos bailarinos destreza e aptidão técnica na representação das personagens, particularmente no confronto do carácter figurativo presente na pureza do Cisne Branco e a intriga manifesta na duplicidade do Cisne Negro. É de realçar o virtuosismo e dramatismo no desempenho da solista principal nos dois Grand Pas de Deux, interpretados na II e III cenas da obra.\r\n<br></br>\r\nO prestígio e a notoriedade intemporal da obra, estreada a 27 de Fevereiro de 1877, no TEATRO BOLSHOI, em Moscovo,  devem-se à aliança entre a música de Pyotr Tchaikovsky e a coreografia expressiva de Marius Petipa que, relacionando o corpo humano com os movimentos de um cisne, revela a sua genialidade, o seu potencial coreográfico e criatividade artística.\r\n<br></br>\r\nA Russian Classical Ballet apresenta uma produção clássica com elementos cenográficos de incrível realismo e figurinos manufacturados com detalhes sumptuosos.', 200, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
