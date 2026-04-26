DELETE FROM `quest` WHERE `name` = 'RaiseVitTimer';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('RaiseVitTimer', 21600, -1, 'RaiseVitTimer', '2021-11-01 00:00:00');