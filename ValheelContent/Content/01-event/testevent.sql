DELETE FROM `event` WHERE `name` = 'testevent';

INSERT INTO `event` (`name`, `start_Time`, `end_Time`, `state`, `last_Modified`)
VALUES ('testevent', -1, -1, 3, '2020-05-24 00:00:00');