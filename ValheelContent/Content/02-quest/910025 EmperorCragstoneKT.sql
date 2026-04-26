DELETE FROM quest WHERE name = 'EmperorCragstone';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860049', 'EmperorCragstone', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'EmperorCragstoneComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860050', 'EmperorCragstoneComplete', '144000', '-1', 'quest timer');