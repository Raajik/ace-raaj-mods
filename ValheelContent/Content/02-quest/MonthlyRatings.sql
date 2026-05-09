DELETE FROM `quest` WHERE `name` = 'MonthlyRatings';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('MonthlyRatings', 51800000, -1, 'MonthlyRatings', '2021-11-08 06:01:47');
