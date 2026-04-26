DELETE FROM `quest` WHERE `name` = 'TPKingsKillTaskComplete';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('TPKingsKillTaskComplete', 259200, -1, 'quest timer', '2022-07-30 14:25:17');
