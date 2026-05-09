DELETE FROM `quest` WHERE `name` = 'CardCount';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('CardCount', 1, 100, 'CardCount', '2021-11-08 06:01:47');
