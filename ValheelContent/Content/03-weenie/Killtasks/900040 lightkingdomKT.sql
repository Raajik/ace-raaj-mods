DELETE FROM quest WHERE name = 'lightkingdomKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300641', 'lightkingdomKT2', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'lightkingdomKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300642', 'lightkingdomKT2Complete', '7200', '1', 'quest timer');