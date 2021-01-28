 
CREATE DATABASE globe_bank;
USE globe_bank;
SHOW DATABASES;

DESC subjects;
SHOW COLUMNS FROM subjects;
SHOW TABLES;

CREATE TABLE subjects (
    id INT(11) NOT NULL AUTO_INCREMENT,
    menu_name VARCHAR(255),
    position INT(3),
    visible TINYINT(1),
    PRIMARY KEY (id)
);

SELECT * FROM subjects;

SELECT * FROM table WHERE column1 = 'some_text' ORDER BY column1 ASC;

INSERT INTO table (col1, col2, col3) VALUES (val1, val2, val3);

UPDATE table SET col1 = 'this', col = 'that' WHERE id=1;

DELETE FROM table WHERE  id=1;

INSERT INTO subjects (id, menu_name, position, visible) VALUE (1, 'About Globe Bank', 1, 1);

INSERT INTO subjects (menu_name, position, visible) VALUE ('Consumer', 2, 1);

INSERT INTO subjects (menu_name, position, visible) VALUE ('Small Business', 3, 1);
SELECT * FROM subjects WHERE id=3;
UPDATE subjects SET position='3', visible='0' WHERE id=3;
DELETE FROM subjects WHERE id=4 LIMIT 1;

-- Foreign key add after the table is created
-- index name and (where is indexed/column)
ALTER TABLE table ADD INDEX fk_index_name (column);

mysql -u root -p globe_bank

CREATE TABLE pages(
    id INT(11) NOT NULL AUTO_INCREMENT,
    subject_id INT(11),
    menu_name VARCHAR (255),
    position INT(3),
    visible TINYINT(1),
    content TEXT,
    PRIMARY KEY (id)
);

ALTER TABLE pages ADD INDEX fk_subject_id (subject_id);
SELECT * FROM subjects;

INSERT INTO pages (subject_id, menu_name, position, visible) VALUES (1, 'Globe Bank', 1, 1);
INSERT INTO pages (subject_id, menu_name, position, visible) VALUES (1, 'History', 2, 1);
INSERT INTO pages (subject_id, menu_name, position, visible) VALUES (1, 'Leadership', 3, 1);


INSERT INTO pages (subject_id, menu_name, position, visible) VALUES (1, 'Contact Us', 4, 1);
INSERT INTO pages (subject_id, menu_name, position, visible) VALUES (2, 'Banking', 1, 1);
INSERT INTO pages (subject_id, menu_name, position, visible) VALUES (2, 'Credit Cards', 2, 1);
INSERT INTO pages (subject_id, menu_name, position, visible) VALUES (2, 'Mortgages', 3, 1);
INSERT INTO pages (subject_id, menu_name, position, visible) VALUES (3, 'Checking', 1, 1);
INSERT INTO pages (subject_id, menu_name, position, visible) VALUES (3, 'Loans', 2, 1);
INSERT INTO pages (subject_id, menu_name, position, visible) VALUES (3, 'Merchant Services', 3, 1);

SELECT * FROM pages WHERE id=3;
SELECT id, subject_id FROM pages WHERE id=3;
SELECT * FROM subjects WHERE id=2;

SELECT s.id, s.menu_name, p.subject_id, p.position FROM subjects s, pages p WHERE s.id = p.subject_id;

