SELECT * FROM task7.library;

use task7;

CREATE TABLE Library (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    PublishedYear INT,
    Quantity INT
);

select * from Library;

CREATE VIEW Fiction_Books_Available AS
SELECT BookID, Title, Author, PublishedYear, Quantity
FROM Library
WHERE Genre = 'Fiction' AND Quantity > 0;


SELECT * FROM Fiction_Books_Available;

UPDATE Fiction_Books_Available
SET Quantity = Quantity - 1
WHERE BookID = 1001;

DROP VIEW Fiction_Books_Available;


