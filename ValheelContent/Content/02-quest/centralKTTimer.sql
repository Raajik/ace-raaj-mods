DELETE FROM `quest` WHERE `name` = 'centralKTTimer';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('centralKTTimer', 144000, -1, 'centralKTTimer', '2021-11-01 00:00:00');
