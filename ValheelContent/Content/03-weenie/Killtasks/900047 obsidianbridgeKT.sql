DELETE FROM quest WHERE name = 'obsidianbridgeKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300655', 'obsidianbridgeKT', '0', '25', 'kill counter');

DELETE FROM quest WHERE name = 'obsidianbridgeKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300656', 'obsidianbridgeKTComplete', '1', '1', 'quest timer');