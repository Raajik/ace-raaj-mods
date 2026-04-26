DELETE FROM quest WHERE name = 'muddyKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860003', 'muddyKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'muddyKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860004', 'muddyKTComplete', '7200', '-1', 'quest timer');