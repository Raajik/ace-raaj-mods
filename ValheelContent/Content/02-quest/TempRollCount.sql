DELETE FROM `quest` WHERE `name` = 'TempRollCount';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('TempRollCount', 1, 100, 'TempRollCount', '2021-11-08 06:01:47');
