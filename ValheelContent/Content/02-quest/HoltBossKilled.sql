DELETE FROM `quest` WHERE `name` = 'HoltBossKilled';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('HoltBossKilled', 604800, -1, 'Holt Boss Timer', '2021-11-08 06:01:47');
