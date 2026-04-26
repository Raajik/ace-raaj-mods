DELETE FROM `quest` WHERE `name` = 'P25DailyDone';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('P25DailyDone', 1440000, -1, 'P25DailyDone Quest Stamp', '2021-11-08 06:01:47');
