DELETE FROM `quest` WHERE `name` = 'DmgRollCount';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('DmgRollCount', 1, 100, 'DmgRollCount', '2021-11-08 06:01:47');
