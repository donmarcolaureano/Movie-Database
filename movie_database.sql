DROP SCHEMA IF EXISTS movie_database;
CREATE SCHEMA IF NOT EXISTS movie_database DEFAULT CHARACTER SET utf8;
USE movie_database;

CREATE TABLE `genres`  (
  `genre_id` int NOT NULL,
  `genre_name` varchar(255) NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE = InnoDB;

CREATE TABLE `ratings`  (
  `tconst` varchar(255) NOT NULL,
  `average_rating` int NULL,
  `number_of_votes` int NULL,
  PRIMARY KEY (`tconst`)
) ENGINE = InnoDB;

CREATE TABLE `title_basics`  (
  `tconst` varchar(255) NOT NULL,
  `primary_title` varchar(255) NULL,
  `start_year` int NULL,
  `runtime` int NULL,
  PRIMARY KEY (`tconst`)
) ENGINE = InnoDB;

CREATE TABLE `title_genres`  (
  `tconst` varchar(255) NULL,
  `genre_id` int NOT NULL
) ENGINE = InnoDB;

CREATE TABLE `tmdb_data`  (
  `imdb_id` int NULL,
  `budget` int NULL,
  `revenue` int NULL,
  `certification` varchar(255) NULL
);

