DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.usuario(
  id_usuario bit,
  nome_usuario text,
  idade text,
  id_plano bit,
  data_assinatura date,
) engine = InnoDB;

CREATE TABLE SpotifyClone.planos(
  id_plano bit,
  nome_plano text,
  valor text,
) engine = InnoDB;

CREATE TABLE SpotifyClone.tabela2(
  coluna1 tipo restricoes,
  coluna2 tipo restricoes,
  colunaN tipo restricoes,
) engine = InnoDB;

INSERT INTO SpotifyClone.usuario (id_usuario, nome_usuario, idade, id_plano, data_assinatura)
VALUES
  ('1', 'Thati', '23', '', '2019-10-20'),
  ('2', 'Cintia', '35', '', '2017-12-30'),
  ('3', 'Bill', '20', '', '2019-06-05'),
  ('4', 'Roger', '45', '', '2020-05-13'),
  ('5', 'Norman', '58', '', '2017-02-17'),
  ('6', 'Patrick', '33', '', '2017-01-06'),
  ('7', 'Vivian', '26', '', '2018-01-05'),
  ('8', 'Carol', '19', '', '2018-02-14'),
  ('9', 'Angelina', '42', '', '2018-04-29'),
  ('10', 'Paul', '46', '', '2017-01-17'),


INSERT INTO SpotifyClone.tabela2 (id_plano, nome_plano, valor)
VALUES
  ('1', 'gratuito', '0'),
  ('2', 'familiar', '5,99'),
  ('3', 'universitario', '6,99'),
  ('4', 'pessoal', '7,99'),

INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');