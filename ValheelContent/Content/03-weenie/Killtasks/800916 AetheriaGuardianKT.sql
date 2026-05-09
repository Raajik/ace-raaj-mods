DELETE FROM quest WHERE name = 'AetheriaGuardianKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300338', 'AetheriaGuardianKT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'AetheriaGuardianKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300339', 'AetheriaGuardianKTComplete', '0', '1', 'quest timer');