DELETE FROM quest WHERE name = 'bandyKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860019', 'bandyKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'bandyKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860020', 'bandyKTComplete', '7200', '-1', 'quest timer');