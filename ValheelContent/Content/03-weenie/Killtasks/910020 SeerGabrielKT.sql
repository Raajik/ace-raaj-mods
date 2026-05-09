DELETE FROM quest WHERE name = 'SeerGabriel';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860039', 'SeerGabriel', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'SeerGabrielComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860040', 'SeerGabrielComplete', '144000', '-1', 'quest timer');