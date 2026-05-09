DELETE FROM quest WHERE name = 'SeerKrasten';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860043', 'SeerKrasten', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'SeerKrastenComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860044', 'SeerKrastenComplete', '144000', '-1', 'quest timer');