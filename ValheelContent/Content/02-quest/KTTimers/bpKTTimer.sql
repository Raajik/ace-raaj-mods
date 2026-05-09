DELETE FROM `quest` WHERE `name` = 'bpKTTimer';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('bpKTTimer', 144000, -1, 'bpKTTimer', '2021-11-01 00:00:00');
