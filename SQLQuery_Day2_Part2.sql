CREATE TABLE library (
    id INT PRIMARY KEY,           -- Set ID as PRIMARY KEY for uniqueness and faster lookups
    title VARCHAR(50) NOT NULL,   -- Ensures no null values for book titles
    author VARCHAR(20), 
    type VARCHAR(10), 
    pub VARCHAR(20),
    qty INT CHECK (qty >= 0),     -- Adding a constraint to ensure no negative quantities
    price DECIMAL(10,2)           -- Price should be a DECIMAL type to handle fractional values like 217.50
);

INSERT INTO library (id, title, author, type, pub, qty, price)
VALUES (1, 'Data Structure', 'Lipschutz', 'DS', 'McGraw', 4, 217),
       (2, 'Computer Studies', 'French', 'FND', 'Galgotia', 2, 110),
       (3, 'Advanced Pascal', 'Schildt', 'PROG', 'McGraw', 4, 350),
       (4, 'Mastering C++', 'Gurewich', 'PROG', 'BPB', 3, 295);

select * from library where type='PROG' and pub='McGraw'and qty=2;
select * from library where type='PROG' or pub='McGraw'or qty=2;
select * from library;
select title from library;
select id +id from library;