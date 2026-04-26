DELETE FROM `quest` WHERE `name` = 'vcentralKTTimer';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('vcentralKTTimer', 144000, -1, 'vcentralKTTimer', '2021-11-01 00:00:00');
