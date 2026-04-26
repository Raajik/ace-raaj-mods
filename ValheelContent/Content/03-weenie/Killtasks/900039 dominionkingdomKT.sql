DELETE FROM quest WHERE name = 'dominionkingdomKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300639', 'dominionkingdomKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'dominionkingdomKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300640', 'dominionkingdomKTComplete', '7200', '1', 'quest timer');