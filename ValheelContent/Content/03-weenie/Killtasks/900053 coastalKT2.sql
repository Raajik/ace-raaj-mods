DELETE FROM quest WHERE name = 'coastalKT22';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300667', 'coastalKT2', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'coastalKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300668', 'coastalKT2Complete', '7200', '1', 'quest timer');