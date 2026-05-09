DELETE FROM `quest` WHERE `name` = 'StartLumCertQuest';

INSERT INTO `quest` (`name`, `min_Delta`, `max_Solves`, `message`, `last_Modified`)
VALUES ('StartLumCertQuest', 0, 1, 'Start the Lum Cert Quest', '2005-02-09 10:00:00');
