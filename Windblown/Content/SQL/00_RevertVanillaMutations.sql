-- ==========================================================================
-- Revert vanilla weenie mutations on ace_world
-- Only needed if 45875/45876 were changed to Stackable (type 51).
-- ==========================================================================

-- Revert Lucky Gold Letter (45875) and Scarlet Red Letter (45876) back to Book type
UPDATE weenie SET type = 8 WHERE class_Id IN (45875, 45876);

-- Remove stackable-related int properties that don't exist on Book weenies
DELETE FROM weenie_properties_int WHERE object_Id IN (45875, 45876) AND type IN (11, 12, 13, 14, 15);

-- Restore Book int properties
INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(45875, 5, 10) ON DUPLICATE KEY UPDATE value = 10,
(45875, 8, 200) ON DUPLICATE KEY UPDATE value = 200,
(45875, 16, 8) ON DUPLICATE KEY UPDATE value = 8,
(45875, 19, 0) ON DUPLICATE KEY UPDATE value = 0,
(45875, 33, 0) ON DUPLICATE KEY UPDATE value = 0,
(45875, 93, 1044) ON DUPLICATE KEY UPDATE value = 1044;

INSERT INTO weenie_properties_int (object_Id, type, value) VALUES
(45876, 5, 10) ON DUPLICATE KEY UPDATE value = 10,
(45876, 8, 200) ON DUPLICATE KEY UPDATE value = 200,
(45876, 16, 8) ON DUPLICATE KEY UPDATE value = 8,
(45876, 19, 0) ON DUPLICATE KEY UPDATE value = 0,
(45876, 33, 0) ON DUPLICATE KEY UPDATE value = 0,
(45876, 93, 1044) ON DUPLICATE KEY UPDATE value = 1044;

-- Restore book pages
INSERT IGNORE INTO weenie_properties_book (object_Id, max_Num_Pages, max_Num_Chars_Per_Page)
VALUES (45875, 1, 1000), (45876, 1, 1000);

INSERT IGNORE INTO weenie_properties_book_page_data (object_Id, page_Id, author_Id, author_Name, author_Account, ignore_Author, page_Text) VALUES
(45875, 0, 4294967295, 'Avery the Lattice Keeper', 'prewritten', 1,
 'Hopefully the bearer of this letter will not be treated with suspicion and doubt. Those that have it will not find themselves at odds with the system. Hopefully. I am sorry that I could not be more help. But we live in trying times.');

INSERT IGNORE INTO weenie_properties_book_page_data (object_Id, page_Id, author_Id, author_Name, author_Account, ignore_Author, page_Text) VALUES
(45876, 0, 4294967295, 'Avery the Lattice Keeper', 'prewritten', 1,
 'Soon, I hope, we will be allowed back into the fortress. I cannot contact the others. I am not even sure they are still alive. But there is hope. While I was doing maintenance, I stumbled across these and thought it wise to take them. Hopefully the bearer of this letter will not be treated with suspicion and doubt.');
