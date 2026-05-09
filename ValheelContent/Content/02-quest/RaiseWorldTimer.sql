DELETE FROM `quest` WHERE `name` = 'RaiseWorldTimer';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('RaiseWorldTimer', 21600, -1, 'RaiseWorldTimer', '2021-11-01 00:00:00');