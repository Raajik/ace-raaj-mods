DELETE FROM quest WHERE name = 'lightkingdomKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300635', 'lightkingdomKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'lightkingdomKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300636', 'lightkingdomKTComplete', '7200', '1', 'quest timer');