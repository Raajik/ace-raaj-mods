DELETE FROM quest WHERE name = 'btowerKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300631', 'btowerKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'btowerKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300632', 'btowerKTComplete', '7200', '-1', 'quest timer');