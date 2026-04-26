DELETE FROM quest WHERE name = 'PureShadowKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300598', 'PureShadowKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'PureShadowKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300599', 'PureShadowKTComplete', '7200', '-1', 'quest timer');