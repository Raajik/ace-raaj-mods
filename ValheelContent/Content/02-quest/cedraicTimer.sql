DELETE FROM `quest` WHERE `name` = 'cedraicTimer';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('cedraicTimer', 144000, -1, 'cedraicTimer', '2021-11-01 00:00:00');
