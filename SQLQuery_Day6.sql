CREATE TABLE tbl1 (rollnum INT,name VARCHAR(50),place VARCHAR(50));

CREATE TABLE tbl2 (rollnum INT,mark1 INT,mark2 INT);

INSERT INTO tbl1 (rollnum, name, place) VALUES(1, 'riju', 'kannur'),(2, 'anand', 'payyannur'),(3, 'vipin', 'chala'),(4, 'ananya', 'kannur'),
(5, 'latheef', 'thaliparamba'),(6, 'hridya', 'kannur'),(7, 'krithi', 'chala'),
(8, 'vaishna', 'thaliparamba'),(9, 'hemanth', 'payyannur'),(10, 'mrithul', 'chala');

INSERT INTO tbl2 (rollnum, mark1, mark2) VALUES(1, 65, 54),(2, 60, 45),(3, 42, 37),(4, 25, 47),(5, 30, 23),(16, 56, 35),(17, 65, 54),(18, 34, 53),
(19, 40, 46),(20, 50, 55);

select * from tbl2;

select tbl1.rollnum as 'ROLL NO',tbl1.name as 'STUDENT NAMES',tbl2.mark2 as 'PHYSICS MARKS' from tbl1 inner join tbl2 on tbl1.rollnum = tbl2.rollnum;

select * from tbl1 where rollnum in (select rollnum from tbl2 where mark2 >= 40); 
select tbl1.* from tbl1 inner join tbl2 on (tbl1.rollnum = tbl2.rollnum and tbl2.mark2 > 40);
select tbl1.rollnum as 'ROLL NO',tbl1.name as 'STUDENT NAMES',tbl2.mark2 as 'PHYSICS MARKS' from tbl1 join tbl2 on (tbl1.rollnum = tbl2.rollnum);