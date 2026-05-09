DELETE FROM `quest` WHERE `name` = 'WarmasterCompleted';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('WarmasterCompleted', 1, 1, 'WarmasterCompleted', '2021-11-08 06:01:47');
