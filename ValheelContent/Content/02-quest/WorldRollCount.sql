DELETE FROM `quest` WHERE `name` = 'WorldRollCount';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('WorldRollCount', 1, 100, 'WorldRollCount', '2021-11-08 06:01:47');
