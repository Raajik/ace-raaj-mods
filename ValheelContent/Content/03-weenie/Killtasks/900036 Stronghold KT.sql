DELETE FROM quest WHERE name = 'strongholdKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300633', 'strongholdKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'strongholdKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300634', 'strongholdKTComplete', '7200', '-1', 'quest timer');