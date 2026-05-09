DELETE FROM `quest` WHERE `name` = 'KillTaskCompleted';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('KillTaskCompleted', 1, 1, 'KillTaskCompleted', '2021-11-08 06:01:47');
