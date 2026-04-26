DELETE FROM `quest` WHERE `name` = 'TPActiveTimer';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('TPActiveTimer', 3600, -1, 'TPActiveTimer', '2005-02-09 10:00:00');
