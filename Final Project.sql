CREATE DATABASE Zeelibs; 

USE Zeelibs;


CREATE TABLE BOOK
(
    BOOK_ID VARCHAR(4), 
    BK_TITLE VARCHAR(100), 
    BK_DESCRIPTION VARCHAR (900),
    BK_EDITION CHAR(50),  
    BK_PRICE DECIMAL(4,2), 
    PAPERBACK CHAR(1),

    CONSTRAINT BOOK_BOOK_ID_PK PRIMARY KEY (BOOK_ID)
    
);

CREATE TABLE AUTHOR
(
    AUTHOR_ID VARCHAR(4),
    BOOK_ID VARCHAR(4),
    AUTHOR_LN CHAR(50),
    AUTHOR_FN CHAR(50),

    CONSTRAINT AUTHOR_AUTHOR_ID_PK PRIMARY KEY (AUTHOR_ID),
    CONSTRAINT AUTHOR_BOOK_ID_FK FOREIGN KEY (BOOK_ID) REFERENCES BOOK(BOOK_ID)
);

CREATE TABLE PUBLISHER
(
    PUBLISHER_ID VARCHAR(4), 
    PUBLISHER_NM CHAR(50),
    CITY CHAR(20),
    AUTHOR_ID VARCHAR(4),

    CONSTRAINT PUBLISHER_PUBLISHER_ID_PK PRIMARY KEY (PUBLISHER_ID),
    CONSTRAINT AUTHOR_AUTHOR_ID_FK FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHOR(AUTHOR_ID)
);



CREATE TABLE BOOK_LOCATION
(
    BOOK_ID VARCHAR(4),
    LOCATION CHAR(50),
    AVAILABLE CHAR(1), -- 'Y' for Yes, 'N' for No
    DUE_DATE DATE,

    CONSTRAINT BOOK_LOCATION_BOOK_ID_FK FOREIGN KEY (BOOK_ID) REFERENCES BOOK(BOOK_ID)
);

-- INSERT STATEMENTS FOR BOOK

INSERT INTO BOOK
VALUES('B001', 'The Driving Book', 'Everything New Drivers Need To Know But Don\'t Know To Ask', 'Updated Edition', '98.96', 'Y');

INSERT INTO BOOK
VALUES
('B002', 'Indiana Driver\'s Manual', 'Driven To Serve Indiana Bureau Of Motor Vehicles', 'Second Edition', '0.00', 'Y');

-- This is my favorite book about wealth, read it if you can!
INSERT INTO BOOK
VALUES
('B003', 'Rich Dad Poor Dad', 'What the Rich Teach Their Kids About Money - That the Poor and Middle Class Do Not!', Null, '11.43', 'Y');

INSERT INTO BOOK
VALUES
('B004', 'All Because Of A Cup of Coffee', 'Dear Mouse Friends, Welcome to the World of Geronimo Stilton', 'First Edition', '5.99', 'N');


INSERT INTO BOOK
VALUES
('B005', 'On the Come Up', 'Sixteen-year old Bri wants to be one of the greatest rappers of all time. Or at least win her first battle. But it\'s hard to get your come up when you\'re labeled a hoodlum at school and your fridge at home is empty after your mom loses her job. So Bri pours her anger and frustration into her first song, which goes viral... for all the wrong reasons. Bri soon finds herself at the center of a controversy, portrayed by the media as more menace than MC. But with an eviction notice staring her family down, Bri doesn\'t just want to make it-she has to. Insightful, unflinching, and full of heart, On the Come Up is an ode to hip-hop from one of the most influential literary voices of a generation.', 'Third Edition', '14.99', 'Y');

INSERT INTO BOOK
VALUES
('B006', 'Last Night At the Telegraphy Club', 'This book is for anyone who has ever loved-in any sense of the word.', 'First Edition', '11.99', 'Y');

INSERT INTO BOOK
VALUES
('B007', 'Akata Witch', 'There\'s more vivid imagination in a page of Nnedi Okarafor\'s work than in whole volumes of ordinary fanstasy epics', 'Second Edition', '11.99', 'Y');

INSERT INTO BOOK
VALUES
('B008', 'Severance', 'IS IT THE END OF THE WORLD OR JUST ANOTHER DAY AT THE OFFICE?', 'Fourth Edition', '17.00', 'N');

INSERT INTO BOOK
VALUES
('B009', 'The Lake', 'The #1 New York Times BestSelling Author Of The Cellar And The Twin', 'Second Edition', '10.99', 'N');

INSERT INTO BOOK
VALUES
('C010', 'The Cousins', 'Family First, Always.', 'Updated Edition', '19.99', 'N');

INSERT INTO BOOK
VALUES
('C011', 'We Rule The Night', 'A fierce and compelling breakout... that should not be missed', 'First Edition', '10.99', 'N');

INSERT INTO BOOK
VALUES
('C012', 'The Distance Between Us', 'Reyna Grande skillfully depicts another side of the immigrant experience', 'First Edition', '17.99', 'Y');

INSERT INTO BOOK
VALUES
('C013', 'The Skin Of The Sea', 'Praise For Skin Of The Sea', 'First Edition', '18.99', 'Y');

INSERT INTO BOOK 
VALUES 
('C014', 'The Midnight Library', 'A novel about second chances', 'First Edition', '25.99', 'Y');

INSERT INTO BOOK 
VALUES 
('C015', 'The Silent Patient', 'A shocking psychological thriller', 'First Edition', '16.99', 'Y');

INSERT INTO BOOK 
VALUES ('C016', 'Where the Crawdads Sing', 'A mesmerizing mystery', 'First Edition', '12.99', 'Y');

INSERT INTO BOOK 
VALUES
('C017', 'The Vanishing Half', 'A novel about identity and family', 'First Edition', '21.99', 'Y');

INSERT INTO BOOK 
VALUES
('C018', 'The Water Dancer', 'A powerful story of liberation', 'First Edition', '19.99', 'Y');

INSERT INTO BOOK 
VALUES
('C019', 'Such a Fun Age', 'A thought-provoking exploration of race and privilege', 'First Edition', '14.99', 'Y');

INSERT INTO BOOK 
VALUES
('C020', 'The Giver of Stars', 'A tale of female friendship and courage', 'First Edition', '18.99', 'Y');

INSERT INTO BOOK 
VALUES
('C021', 'The Testaments', 'The sequel to The Handmaid\'s Tale', 'Second Edition', '27.99', 'Y');

INSERT INTO BOOK 
VALUES 
('C022', 'Normal People', 'An intimate story of first love', 'Third Edition', '15.99', 'Y');


INSERT INTO BOOK 
VALUES 
('D023', 'Educated', 'A memoir of a woman\'s journey to self-invention', 'First Edition', '20.99', 'N');

INSERT INTO BOOK 
VALUES 
('D024', 'The Goldfinch', 'A novel of art, loss, and survival', 'Second Edition', '23.99', 'N');

INSERT INTO BOOK 
VALUES 
('D025', 'Little Fires Everywhere', 'A riveting exploration of motherhood and identity', 'Sixth Edition', '17.99', 'N');

INSERT INTO BOOK 
VALUES 
('D026', 'The Dutch House', 'A novel about family, memory, and love', 'First Edition', '22.99', 'N');

INSERT INTO BOOK 
VALUES
('D027', 'Circe', 'A mythological retelling of the story of Circe', 'Sixth Edition', '19.99', 'N');

INSERT INTO BOOK 
VALUES 
('D028', 'The Night Circus', 'An enchanting tale of magic and mystery', 'First Edition', '14.99', 'Y');

INSERT INTO BOOK 
VALUES 
('D029', 'The Immortalists', 'A novel about destiny and the choices that shape our lives', 'Sixth Edition', '16.99', 'Y');

INSERT INTO BOOK 
VALUES 
('D030', 'City of Girls', 'A vivid portrait of life in New York City during the 1940s', 'Fifth Edition', '26.99', 'Y');

-- INSERT STATEMENTS FOR AUTHOR
INSERT INTO AUTHOR
VALUES 
('A001', 'B001', 'Karen', 'Gravelle');

INSERT INTO AUTHOR 
VALUES 
('A002', 'B002', 'Services', 'Bureau Motor');

INSERT INTO AUTHOR 
VALUES 
('A003', 'B003', 'Kiyosaki', 'Robert');


INSERT INTO AUTHOR 
VALUES 
('A004', 'B004', 'Stilton', 'Geronimo');

INSERT INTO AUTHOR 
VALUES 
('A005', 'B005', 'Thomas', 'Angie');

INSERT INTO AUTHOR 
VALUES 
('A006', 'B006', 'Malinda', 'Lo');

INSERT INTO AUTHOR 
VALUES 
('A007', 'B007', 'Okorafor', 'Nnedi');

INSERT INTO AUTHOR
VALUES 
('A008', 'B008', 'Ling', 'Ma');

INSERT INTO AUTHOR 
VALUES 
('A009', 'B009', 'Natasha', 'Preston');

INSERT INTO AUTHOR 
VALUES 
('A010', 'C010', 'Karen M.', 'McManns');

INSERT INTO AUTHOR 
VALUES 
('A011', 'C011', 'Claire E.', 'Bartlett');

INSERT INTO AUTHOR 
VALUES 
('A012', 'C012', 'Grande', 'Reyna');

INSERT INTO AUTHOR 
VALUES 
('A013', 'C013', 'Bowen', 'Natasha');

 INSERT INTO AUTHOR 
VALUES 
('A014', 'C014', 'Smith', 'Riley');

INSERT INTO AUTHOR 
VALUES 
('A015', 'C015', 'McDonalds', 'Jefferson');

INSERT INTO AUTHOR 
VALUES 
('A016', 'C016', 'James', 'Preston');

INSERT INTO AUTHOR
VALUES 
('A017', 'C017', 'Author', 'Unknown');

INSERT INTO AUTHOR 
VALUES 
('A018', 'C018', 'Author', 'Unknown');

INSERT INTO AUTHOR 
VALUES 
('A019', 'C019', 'Victoria', 'Whipple');

INSERT INTO AUTHOR 
VALUES 
('A020', 'C020', 'Natheniel', 'Bassey');

INSERT INTO AUTHOR 
VALUES 
('A021', 'C021', 'Author', 'Unknown');

INSERT INTO AUTHOR
VALUES 
('A022', 'C022', 'Author', 'Unknown');

INSERT INTO AUTHOR 
VALUES 
('A023', 'D023', 'James', 'Brown');

INSERT INTO AUTHOR 
VALUES 
('A024', 'D024', 'James', 'Phelps');

INSERT INTO AUTHOR 
VALUES 
('A025', 'D025', 'Author', 'Unknown');

INSERT INTO AUTHOR 
VALUES 
('A026', 'D026', 'Cardi', 'B');

INSERT INTO AUTHOR 
VALUES 
('A027', 'D027', 'Author', 'Unknown');

INSERT INTO AUTHOR 
VALUES 
('A028', 'D028', 'Moses', 'Phelps');

INSERT INTO AUTHOR
VALUES 
('A029', 'D029', 'Miles', 'Morales');

INSERT INTO AUTHOR 
VALUES 
('A030', 'D030', 'Jason', 'Brown');


-- INSERT STATEMENTS FOR PUBLISHER
INSERT INTO PUBLISHER 
VALUES 
('P001', 'HarperCollins', 'New York', 'A001');

INSERT INTO PUBLISHER 
VALUES 
('P002', 'Penguin Random House', 'London', 'A002');

INSERT INTO PUBLISHER 
VALUES 
('P003', 'Simon & Schuster', 'New York', 'A003');

INSERT INTO PUBLISHER 
VALUES 
('P004', 'Hachette Livre', 'Paris', 'A004');

INSERT INTO PUBLISHER 
VALUES 
('P005', 'Macmillan Publishers', 'London', 'A005');

INSERT INTO PUBLISHER 
VALUES 
('P006', 'HarperCollins', 'San Francisco', 'A006');

INSERT INTO PUBLISHER 
VALUES 
('P007', 'Penguin Random House', 'Berlin', 'A007');

INSERT INTO PUBLISHER 
VALUES 
('P008', 'Simon & Schuster', 'Toronto', 'A008');

INSERT INTO PUBLISHER 
VALUES 
('P009', 'Hachette Livre', 'Madrid', 'A009');

INSERT INTO PUBLISHER 
VALUES 
('P010', 'Macmillan Publishers', 'Sydney', 'A010');

INSERT INTO PUBLISHER 
VALUES 
('P011', 'HarperCollins', 'Tokyo', 'A011');

INSERT INTO PUBLISHER 
VALUES 
('P012', 'Penguin Random House', 'Oslo', 'A012');

INSERT INTO PUBLISHER 
VALUES 
('P013', 'Simon & Schuster', 'Stockholm', 'A013');

INSERT INTO PUBLISHER 
VALUES 
('P014', 'Hachette Livre', 'Rome', 'A014');

INSERT INTO PUBLISHER 
VALUES 
('P015', 'Macmillan Publishers', 'Berlin', 'A015');

INSERT INTO PUBLISHER 
VALUES 
('P016', 'HarperCollins', 'London', 'A016');

INSERT INTO PUBLISHER 
VALUES 
('P017', 'Penguin Random House', 'New York', 'A017');

INSERT INTO PUBLISHER 
VALUES 
('P018', 'Simon & Schuster', 'Paris', 'A018');

INSERT INTO PUBLISHER 
VALUES 
('P019', 'Hachette Livre', 'Sydney', 'A019');

INSERT INTO PUBLISHER 
VALUES 
('P020', 'Macmillan Publishers', 'San Francisco', 'A020');

-- INSERT STATEMENTS FOR BOOK_LOCATION

INSERT INTO BOOK_LOCATION 
VALUES 
('B001', 'Main Library, Section A', 'Y', '2024-07-01');

INSERT INTO BOOK_LOCATION
VALUES 
('B002', 'Branch Library, Section B', 'Y', '2024-07-02');

INSERT INTO BOOK_LOCATION 
VALUES 
('B003', 'Main Library, Section C', 'N', '2024-07-03');

INSERT INTO BOOK_LOCATION 
VALUES 
('B004', 'Branch Library, Section D', 'Y', '2024-07-04');

INSERT INTO BOOK_LOCATION 
VALUES 
('B005', 'Main Library, Section E', 'Y', '2024-07-05');

INSERT INTO BOOK_LOCATION 
VALUES 
('B006', 'Branch Library, Section F', 'Y', '2024-07-06');

INSERT INTO BOOK_LOCATION 
VALUES 
('B007', 'Main Library, Section G', 'N', '2024-07-07');

INSERT INTO BOOK_LOCATION 
VALUES 
('B008', 'Branch Library, Section H', 'Y', '2024-07-08');

INSERT INTO BOOK_LOCATION 
VALUES 
('B009', 'Main Library, Section I', 'N', '2024-07-09');

INSERT INTO BOOK_LOCATION 
VALUES 
('C010', 'Branch Library, Section J', 'Y', '2024-07-10');

INSERT INTO BOOK_LOCATION 
VALUES 
('C011', 'Main Library, Section K', 'Y', '2024-07-11');

INSERT INTO BOOK_LOCATION 
VALUES 
('C012', 'Branch Library, Section L', 'Y', '2024-07-12');

INSERT INTO BOOK_LOCATION 
VALUES
('C013', 'Main Library, Section M', 'Y', '2024-07-13');

INSERT INTO BOOK_LOCATION 
VALUES
('C014', 'Branch Library, Section N', 'Y', '2024-07-14');

INSERT INTO BOOK_LOCATION 
VALUES 
('C015', 'Main Library, Section O', 'N', '2024-07-15');

INSERT INTO BOOK_LOCATION 
VALUES 
('C016', 'Branch Library, Section P', 'Y', '2024-07-16');

INSERT INTO BOOK_LOCATION 
VALUES 
('C017', 'Main Library, Section Q', 'Y', '2024-07-17');

INSERT INTO BOOK_LOCATION 
VALUES 
('C018', 'Branch Library, Section R', 'Y', '2024-07-18');

INSERT INTO BOOK_LOCATION 
VALUES 
('C019', 'Main Library, Section S', 'N', '2024-07-19');

INSERT INTO BOOK_LOCATION 
VALUES 
('C020', 'Branch Library, Section T', 'Y', '2024-07-20');

INSERT INTO BOOK_LOCATION 
VALUES 
('C021', 'Main Library, Section U', 'Y', '2024-07-21');

INSERT INTO BOOK_LOCATION 
VALUES 
('C022', 'Branch Library, Section V', 'Y', '2024-07-22');

INSERT INTO BOOK_LOCATION 
VALUES 
('D023', 'Main Library, Section W', 'Y', '2024-07-23');

INSERT INTO BOOK_LOCATION 
VALUES 
('D024', 'Branch Library, Section X', 'Y', '2024-07-24');

INSERT INTO BOOK_LOCATION 
VALUES
('D025', 'Main Library, Section Y', 'Y', '2024-07-25');

INSERT INTO BOOK_LOCATION 
VALUES
('D026', 'Branch Library, Section Z', 'Y', '2024-07-26');

INSERT INTO BOOK_LOCATION 
VALUES 
('D027', 'Main Library, Section AA', 'N', '2024-07-27');

INSERT INTO BOOK_LOCATION 
VALUES 
('D028', 'Branch Library, Section BB', 'Y', '2024-07-28');

INSERT INTO BOOK_LOCATION 
VALUES
('D029', 'Main Library, Section CC', 'Y', '2024-07-29');

INSERT INTO BOOK_LOCATION 
VALUES 
('D030', 'Branch Library, Section DD', 'Y', '2024-07-30');

-- Queries Begins! 

-- Q1 What are the titles and prices of all books?
SELECT BK_TITLE, BK_PRICE
FROM BOOK;

-- Q2 Which books have a price greater than $20?
SELECT *
FROM BOOK
WHERE BK_PRICE > 20.00;

-- Q3 Which books published by 'Penguin Random House' have a price between $15 and $25?
SELECT b.BK_TITLE, b.BK_PRICE
FROM BOOK b
JOIN AUTHOR a ON b.BOOK_ID = a.BOOK_ID
JOIN PUBLISHER p ON a.AUTHOR_ID = p.AUTHOR_ID
WHERE p.PUBLISHER_NM = 'Penguin Random House'
  AND CAST(b.BK_PRICE AS DECIMAL(4, 2)) BETWEEN 15.00 AND 25.00;


-- Q4 Which books have 'First Edition', 'Second Edition', or 'Third Edition' in their edition description?
SELECT BK_TITLE, BK_EDITION
FROM BOOK
WHERE BK_EDITION LIKE '%First Edition%'
   OR BK_EDITION LIKE '%Second Edition%'
   OR BK_EDITION LIKE '%Third Edition%';

-- Q5 What is the average price of books?
SELECT AVG(BK_PRICE) AS AvgPrice
FROM BOOK;

-- Q6 How many books does each publisher have?
SELECT p.PUBLISHER_NM, COUNT(b.BOOK_ID) AS BookCount
FROM PUBLISHER p
JOIN AUTHOR a ON p.AUTHOR_ID = a.AUTHOR_ID
JOIN BOOK b ON a.BOOK_ID = b.BOOK_ID
GROUP BY p.PUBLISHER_NM;

-- Q7 What are the titles of the books published by 'Penguin Random House'?
SELECT b.BK_TITLE
FROM BOOK b
JOIN AUTHOR a ON b.BOOK_ID = a.BOOK_ID
JOIN PUBLISHER p ON a.AUTHOR_ID = p.AUTHOR_ID
WHERE p.PUBLISHER_NM = 'Penguin Random House';

-- Q8 Which books are available in 'Main Library, Section A'?
SELECT b.BK_TITLE
FROM BOOK b
WHERE EXISTS (
   SELECT 1
   FROM BOOK_LOCATION bl
   WHERE b.BOOK_ID = bl.BOOK_ID
     AND bl.LOCATION = 'Main Library, Section A'
);

-- Q9 What are the titles of the books written by authors whose last name starts with 'S'?
SELECT b.BK_TITLE
FROM BOOK b
WHERE EXISTS (
   SELECT 1
   FROM AUTHOR a
   WHERE b.BOOK_ID = a.BOOK_ID
     AND a.AUTHOR_LN LIKE 'S%'
);

-- Q10 Which books are currently available and their due dates?
SELECT b.BK_TITLE, bl.DUE_DATE
FROM BOOK b
INNER JOIN BOOK_LOCATION bl ON b.BOOK_ID = bl.BOOK_ID
WHERE bl.AVAILABLE = 'Y';

-- Q11 Which books have a price higher than ALL books published by 'Simon & Schuster'?
SELECT *
FROM BOOK
WHERE BK_PRICE > ALL (
   SELECT MAX(BK_PRICE)
   FROM BOOK b
   JOIN AUTHOR a ON b.BOOK_ID = a.BOOK_ID
   JOIN PUBLISHER p ON a.AUTHOR_ID = p.AUTHOR_ID
   WHERE p.PUBLISHER_NM = 'Simon & Schuster'
   GROUP BY p.PUBLISHER_NM
);

