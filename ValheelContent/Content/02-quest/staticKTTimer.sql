DELETE FROM `quest` WHERE `name` = 'staticKTTimer';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('staticKTTimer', 144000, -1, 'staticKTTimer', '2021-11-01 00:00:00');
