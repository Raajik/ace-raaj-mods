DELETE FROM `event` WHERE `name` = 'MarketOpen';

INSERT INTO `event` (`name`, `start_Time`, `end_Time`, `state`, `last_Modified`)
VALUES ('MarketOpen', -1, -1, 3, '2020-05-24 00:00:00');