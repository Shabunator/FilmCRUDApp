CREATE DATABASE test

USE test;

DROP TABLE IF EXISTS films;
CREATE TABLE films
(
  id int(10) PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  year int(4),
  genre VARCHAR(20),
  watched BIT DEFAULT false  NOT NULL
)
COLLATE='utf8_general_ci';
CREATE UNIQUE INDEX films_title_uindex ON films (title);

INSERT INTO `films` (`title`,`year`,`genre`, watched)
VALUES
  ("1", 1988, "action", 1),
  ("2", 1988, "action", 1),
  ("3", 1988, "action", 1),
  ("4", 1988, "action", 1),
  ("5", 1988, "action", 1),
  ("6", 1988, "action", 1),
  ("7", 1988, "action", 1),
  ("8", 1988, "action", 1),
  ("9", 1988, "action", 1);