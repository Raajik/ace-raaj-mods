DELETE FROM `quest` WHERE `name` = 'RoomCleared';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('RoomCleared', 0, 8, 'RoomCleared', '2021-11-01 00:00:00');
