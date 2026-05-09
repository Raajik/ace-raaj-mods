DELETE FROM `quest` WHERE `name` = 'InvulnRollCount';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('InvulnRollCount', 1, 100, 'InvulnRollCount', '2021-11-08 06:01:47');
