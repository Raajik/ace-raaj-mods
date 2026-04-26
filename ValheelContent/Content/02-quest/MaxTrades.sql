DELETE FROM `quest` WHERE `name` = 'MaxTrades';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('MaxTrades', 1440000, -1, 'MaxTrades', '2021-11-01 00:00:00');
