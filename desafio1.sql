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
  -- FINALIZAR
  id_reproducao bit,
  data_reproducao text,
  id_musica bit,
  id_usuario bit,
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
  PRIMARY KEY (id_musicas),
 ) engine = InnoDB;

CREATE TABLE SpotifyClone.tabela2(
  coluna1 tipo restricoes,
  coluna2 tipo restricoes,
  colunaN tipo restricoes,
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

INSERT INTO SpotifyClone.musicas_reproduzidas (id_reproducao, data_reproducao, id_musica, id_usuario)
VALUES
  ('1', '1', '1', 'Soul For Us'),
  ('2', '1', '1', 'Reflections Of Magic'),
  ('3', '1', '1', 'Dance With Her Own'),
  ('4', '1', '2', 'Troubles Of My Inner Fire'),
  ('5', '1', '2', 'Time Fireworks'),
  ('6', '2', '3', 'Magic Circus'),
  ('7', '2', '3', 'Honey, So Do I'),
  ('8', '2', '3', "Sweetie, Let\'s Go Wild"),
  ('9', '2', '3', 'She Knows'),
  ('10', '3', '4', 'Fantasy For Me'),
  ('11', '3', '4', 'Celebration Of More'),
  ('12', '3', '4', 'Rock His Everything'),
  ('13', '3', '4', 'Home Forever'),
  ('14', '3', '4', 'Diamond Power'),
  ('15', '3', '4', "Let\'s Be Silly"),
  ('16', '4', '5', 'Thang Of Thunder'),
  ('17', '4', '5', 'Words Of Her Life'),
  ('18', '4', '5', 'Without My Streets'),
  ('19', '4', '6', 'Need Of The Evening'),
  ('20', '4', '6', 'History Of My Roses'),
  ('21', '4', '6', 'Without My Love'),
  ('22', '4', '6', 'Walking And Game'),
  ('23', '4', '6', 'Young And Father'),
  ('24', '5', '7', 'Finding My Traditions'),
  ('25', '5', '7', 'Walking And Man'),
  ('26', '5', '7', 'Hard And Time'),
  ('27', '5', '7', "Honey, I\'m A Lone Wolf"),
  ('28', '5', '8', "She Thinks I Won\'t Stay Tonight"),
  ('29', '5', '8', "He Heard You\'re Bad For Me"),
  ('30', '5', '8', "He Heard You\'re Bad For Me"),
  ('31', '5', '8', 'I Know I Know'),
  ('32', '5', '9', "He\'s Walking Away"),
  ('33', '5', '9', "He\'s Trouble"),
  ('34', '5', '9', 'I Heard I Want To Bo Alone'),
  ('35', '5', '9', 'I Ride Alone'),
  ('36', '6', '10', 'Honey'),
  ('37', '6', '10', 'You Cheated On Me'),
  ('38', '6', '10', "Wouldn\'t It Be Nice"),
  ('39', '6', '10', 'Baby'),
  ('40', '6', '10', 'You Make Me Feel So..');

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


INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('4', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');
