DELETE FROM `quest` WHERE `name` = 'ActivatedKeyUsed';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('ActivatedKeyUsed', 1, 1, 'ActivatedKeyUsed', '2021-11-08 06:01:47');
