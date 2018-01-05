create database easy_ticket;
use `easy_ticket`;

CREATE TABLE eventos (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) not null,
  `data` datetime null default null,
  `local` varchar(255) null default null,
  `imagem` varchar(255) null default null,
  `descricao` text null default null,
  `popularidade` int null default 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#drop table eventos;
#select * from eventos;

CREATE TABLE admin(
id int(10) NOT NULL AUTO_INCREMENT,
username varchar(255) NOT NULL,
password varchar(255) NOT NULL,
PRIMARY KEY (id)
);

#select * from admin;
insert into admin values(1,'marco', '1');
insert into admin values(2,'mafalda', '1');

#select * from eventos;
insert into eventos values(1, 'Machine Head', '2018-03-11', 'Campo Pequeno', '', '', 100);
insert into eventos values(2, 'Alter Bridge', '2018-01-30', 'Altice Arena', '', '', 50);
