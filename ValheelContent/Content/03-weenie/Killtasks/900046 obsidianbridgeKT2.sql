DELETE FROM quest WHERE name = 'obsidianbridgeKT22';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300653', 'obsidianbridgeKT2', '0', '25', 'kill counter');

DELETE FROM quest WHERE name = 'obsidianbridgeKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300654', 'obsidianbridgeKT2Complete', '1', '1', 'quest timer');