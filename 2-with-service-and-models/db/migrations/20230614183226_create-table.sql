-- migrate:up
CREATE DATABASE IF NOT EXISTS marathon

CREATE TABLE `db1_users` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `birth` varchar(100) NOT NULL,
  `email` varchar(100) UNIQUE NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_img_url` varchar(1000),
  `role` integer NOT NULL COMMENT '1: 참가자, 2: 주최자',
  `created_at` datetime NOT NULL DEFAULT (now())
);

CREATE TABLE `db2_competition` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `competition_name` varchar(100) UNIQUE NOT NULL,
  `competition_date` datetime NOT NULL,
  `race_type` integer COMMENT '1: 10km, 2: half, 3: full',
  `host_user_id` integer,
  `created_at` datetime NOT NULL DEFAULT (now())
);

CREATE TABLE `db2_point` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `user_id` integer,
  `point` integer DEFAULT 0
);

CREATE TABLE `db2_rank` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `user_id` integer,
  `value` integer DEFAULT 0
);

CREATE TABLE `db2_record` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `competition_id` integer,
  `user_id` integer,
  `record_time` datetime NOT NULL
);

CREATE TABLE `db2_unofficial_record` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `race_type` integer COMMENT '1: 10km, 2: half, 3: full',
  `user_id` integer,
  `record_time` datetime NOT NULL
);

CREATE TABLE `db2_competition_user` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `competition_id` integer,
  `user_id` integer,
  `created_at` datetime NOT NULL DEFAULT (now())
);

ALTER TABLE `competition_user` ADD FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`);

-- migrate:down

DROP DATABASE IF EXISTS marathon
