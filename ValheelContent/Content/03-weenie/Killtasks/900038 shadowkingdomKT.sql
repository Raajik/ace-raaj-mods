DELETE FROM quest WHERE name = 'shadowkingdomKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300637', 'shadowkingdomKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'shadowkingdomKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300638', 'shadowkingdomKTComplete', '7200', '1', 'quest timer');