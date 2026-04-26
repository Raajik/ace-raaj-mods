DELETE FROM `quest` WHERE `name` = 'TPSpyLetterTimer';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('TPSpyLetterTimer', 7200, -1, 'Pick up timer for TP Spy Letter', '2021-11-08 06:01:47');
