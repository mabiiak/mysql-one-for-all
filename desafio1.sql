DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.usuario(
  id_usuario FLOAT,
  nome_usuario VARCHAT(50),
  idade FLOAT,
  id_plano INT,
  data_assinatura date,
  PRIMARY KEY (id_usuario),
) engine = InnoDB;

CREATE TABLE SpotifyClone.planos(
  id_plano INT,
  nome_plano VARCHAT(50),
  valor FLOAT,
  PRIMARY KEY (id_plano),
) engine = InnoDB;

CREATE TABLE SpotifyClone.musicas_reproduzidas(
  id_reproducao INT NOT NULL,
  data_reproducao INT NULL,
  id_musicas INT NULL,
  id_usuario INT NULL,
  PRIMARY KEY (id_reproducao),
) engine = InnoDB;

CREATE TABLE SpotifyClone.relacao_seguidores(
  id_rel_seguidores INT,
  id_usuario FLOAT,
  id_artista FLOAT,
  PRIMARY KEY (id_rel_seguidores),
) engine = InnoDB;

CREATE TABLE SpotifyClone.artista(
  id_artista INT,
  nome_artista VARCHAT(45),
  PRIMARY KEY (id_artista),
) engine = InnoDB;

CREATE TABLE SpotifyClone.albuns(
  id_albuns INT NOT NULL,
  nome_albuns VARCHAT(45),
  id_artista VARCHAT(45),
  data_lançamento VARCHAT(45),
  PRIMARY KEY (id_albuns),
) engine = InnoDB;

CREATE TABLE SpotifyClone.musicas (
  id_musicas INT NOT NULL,
  id_artista VARCHAR(45) NULL,
  id_album VARCHAR(45) NULL,
  musicas_nome VARCHAR(45) NULL,
  duracao INT,
  PRIMARY KEY (id_musicas),
 ) engine = InnoDB;

-- INSERIR INFORMAÇÕES --

INSERT INTO SpotifyClone.usuario (id_usuario, nome_usuario, idade, id_plano, data_assinatura)
VALUES
  ('1', 'Thati', '23', '1', '2019-10-20'),
  ('2', 'Cintia', '35', '2', '2017-12-30'),
  ('3', 'Bill', '20', '3', '2019-06-05'),
  ('4', 'Roger', '45', '4', '2020-05-13'),
  ('5', 'Norman', '58', '4', '2017-02-17'),
  ('6', 'Patrick', '33', '2', '2017-01-06'),
  ('7', 'Vivian', '26', '3', '2018-01-05'),
  ('8', 'Carol', '19', '3', '2018-02-14'),
  ('9', 'Angelina', '42', '2', '2018-04-29'),
  ('10', 'Paul', '46', '2', '2017-01-17'),

INSERT INTO SpotifyClone.planos (id_plano, nome_plano, valor)
VALUES
  ('1', 'gratuito', '0'),
  ('2', 'familiar', '5,99'),
  ('3', 'universitario', '6,99'),
  ('4', 'pessoal', '7,99'),

INSERT INTO SpotifyClone.musicas (id_reproducao, data_reproducao, id_musica, id_usuario, duracao)
VALUES
  ('1', '1', '1', 'Soul For Us', '200'),
  ('2', '1', '1', 'Reflections Of Magic', '163'),
  ('3', '1', '1', 'Dance With Her Own', '116'),
  ('4', '1', '2', 'Troubles Of My Inner Fire', '203'),
  ('5', '1', '2', 'Time Fireworks', '152'),
  ('6', '2', '3', 'Magic Circus', '105'),
  ('7', '2', '3', 'Honey, So Do I', '207'),
  ('8', '2', '3', "Sweetie, Let\'s Go Wild", '139'),
  ('9', '2', '3', 'She Knows', '244'),
  ('10', '3', '4', 'Fantasy For Me', '100'),
  ('11', '3', '4', 'Celebration Of More', '146'),
  ('12', '3', '4', 'Rock His Everything', '223'),
  ('13', '3', '4', 'Home Forever', '231'),
  ('14', '3', '4', 'Diamond Power', '241'),
  ('15', '3', '4', "Let\'s Be Silly", '132'),
  ('16', '4', '5', 'Thang Of Thunder', '240'),
  ('17', '4', '5', 'Words Of Her Life', '185'),
  ('18', '4', '5', 'Without My Streets', '176'),
  ('19', '4', '6', 'Need Of The Evening', '190'),
  ('20', '4', '6', 'History Of My Roses', '222'),
  ('21', '4', '6', 'Without My Love', '111'),
  ('22', '4', '6', 'Walking And Game', '123'),
  ('23', '4', '6', 'Young And Father', '197'),
  ('24', '5', '7', 'Finding My Traditions', '179'),
  ('25', '5', '7', 'Walking And Man', '229'),
  ('26', '5', '7', 'Hard And Time', '135'),
  ('27', '5', '7', "Honey, I\'m A Lone Wolf", '150'),
  ('28', '5', '8', "She Thinks I Won\'t Stay Tonight", '166'),
  ('29', '5', '8', "He Heard You\'re Bad For Me", '154'),
  ('30', '5', '8', "He Heard You\'re Bad For Me", '210'),
  ('31', '5', '8', 'I Know I Know', '117'),
  ('32', '5', '9', "He\'s Walking Away", '159'),
  ('33', '5', '9', "He\'s Trouble", '138'),
  ('34', '5', '9', 'I Heard I Want To Bo Alone', '120'),
  ('35', '5', '9', 'I Ride Alone', '151'),
  ('36', '6', '10', 'Honey', '79'),
  ('37', '6', '10', 'You Cheated On Me', '95'),
  ('38', '6', '10', "Wouldn\'t It Be Nice", '213'),
  ('39', '6', '10', 'Baby', '136'),
  ('40', '6', '10', 'You Make Me Feel So..', '83');

INSERT INTO SpotifyClone.relacao_seguidores (id_rel_seguidores, id_usuario, id_artista)
VALUES
  ('1', '1', '1'),
  ('2', '1', '4'),
  ('3', '1', '3'),
  ('4', '2', '1'),
  ('5', '2', '3'),
  ('6', '3', '2'),
  ('7', '3', '3'),
  ('8', '4', '4'),
  ('9', '5', '5'),
  ('10', '5', '6'),
  ('11', '6', '6'),
  ('12', '6', '3'),
  ('13', '6', '1'),
  ('14', '7', '2'),
  ('15', '7', '5'),
  ('16', '8', '1'),
  ('17', '8', '5'),
  ('18', '9', '6'),
  ('19', '9', '4'),
  ('20', '9', '3'),
  ('21', '10', '2'),
  ('22', '10', '6'),

INSERT INTO SpotifyClone.artista (id_artista, nome_artista)
VALUES
  ('1', 'Waler Phoenix'),
  ('2', 'Peter Strong'),
  ('3', 'Lance Day'),
  ('4', 'Freddie Shannon'),
  ('5', 'Tyler Isle'),
  ('6', 'Fog');

INSERT INTO SpotifyClone.albuns (id_albuns, nome_albuns, id_artista, data_lançamento)
VALUES
  ('1', 'Envious', '1', '1990'),
  ('2', 'Exuberant', '1', '1993'),
  ('3', 'Hallowed Steam', '2', '1995'),
  ('4', 'Incandescent', '3', '1998'),
  ('5', 'Temporary Culture', '4', '2001'),
  ('6', 'Library of liberty', '4', '2003'),
  ('7', 'Chained Down', '5', '2007'),
  ('8', 'Cabinet of fools', '5', '2012'),
  ('9', 'No guarantees', '5', '2015'),
  ('10', 'Apparatus', '6', '2015');


INSERT INTO SpotifyClone.musicas_reproduzidas (id_reproducao, data_reproducao, id_musicas, id_usuario)
VALUES
  ('1', '36', '1', '2020-02-28'),
  ('2', '25', '1', '2020-05-02'),
  ('3', '23', '1', '2020-03-06'),
  ('4', '14', '1', '2020-08-05'),
  ('5', '15', '1', '2020-09-14'),
  ('6', '34', '2', '2020-01-02'),
  ('7', '24', '2', '2020-05-16'),
  ('8', '21', '2', '2020-10-09'),
  ('9', '39', '2', '2020-09-21'),
  ('10', '6', '3', '2020-11-13'),
  ('11', '3', '3', '2020-12-05'),
  ('12', '26', '3', '2020-07-30'),
  ('13', '2', '4', '2021-08-15'),
  ('14', '35', '4', '2021-07-10'),
  ('15', '27', '4', '2021-01-09'),
  ('16', '7', '5', '2020-07-03'),
  ('17', '12', '5', '2017-02-24'),
  ('18', '14', '5', '2020-08-06'),
  ('19', '1', '5', '2020-11-10'),
  ('20', '38', '6', '2019-02-07'),
  ('21', '29', '6', '2017-01-24'),
  ('22', '-', '6', '2017-10-12'),
  ('23', '22', '6', '2018-05-29'),
  ('24', '5', '7', '2018-05-09'),
  ('25', '4', '7', '2020-07-27'),
  ('26', '11', '7', '2018-01-16'),
  ('27', '39', '8', '2018-03-21'),
  ('28', '40', '8', '2020-10-18'),
  ('29', '32', '8', '2019-05-25'),
  ('30', '33', '8', '2021-08-15'),
  ('31', '16', '9', '2021-05-24'),
  ('32', '17', '9', '2018-12-07'),
  ('33', '8', '9', '2021-03-14'),
  ('34', '9', '9', '2020-04-01'),
  ('35', '20', '10', '2017-02-06'),
  ('36', '21', '10', '2017-12-04'),
  ('37', '12', '10', '2017-07-27'),
  ('38', '13', '10', '2017-12-25');
