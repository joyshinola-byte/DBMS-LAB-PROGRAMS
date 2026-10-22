USE College_db;

SELECT * FROM Students WHERE Name = 'Aparna';

CREATE INDEX idx_name ON Students(Name);

SELECT * FROM Students WHERE Name = 'Aparna';

EXPLAIN SELECT * FROM Students WHERE Name = 'Aparna';

DROP INDEX idx_name ON Students;