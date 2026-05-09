DELETE FROM quest WHERE name = 'causticKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900091', 'causticKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'causticKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900092', 'causticKTComplete', '0', '1', 'quest timer');