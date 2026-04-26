DELETE FROM `quest` WHERE `name` = 'MunchCompleted';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('MunchCompleted', 1, 1, 'Quest MunchCompleted', '2021-11-08 06:01:47');
