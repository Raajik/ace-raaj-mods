DELETE FROM `quest` WHERE `name` = 'RaiseTempTimer';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('RaiseTempTimer', 21600, -1, 'RaiseTempTimer', '2021-11-01 00:00:00');