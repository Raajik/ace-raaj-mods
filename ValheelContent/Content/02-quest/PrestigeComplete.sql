DELETE FROM `quest` WHERE `name` = 'PrestigeComplete';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('PrestigeComplete', 0, 1, 'PrestigeComplete Quest Stamp', '2021-11-08 06:01:47');
