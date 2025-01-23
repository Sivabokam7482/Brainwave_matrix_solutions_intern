-- Library Management Systems
--Create DataBase
CREATE DATABASE 'library management';

-- Create the Books table
CREATE TABLE books (
  Book_id INT NOT NULL PRIMARY KEY,
  Title VARCHAR(120) NOT NULL,
  Author VARCHAR(75) NOT NULL,
  publication_year DATE NULL,
  genre VARCHAR(45) NOT NULL);

--Create the authors table
CREATE TABLE authors (
  author_id INT NOT NULL PRIMARY KEY,
  Author_name VARCHAR(75) NOT NULL);

-- Create the Members table
CREATE TABLE members (
  member_id INT NOT NULL PRIMARY KEY,
  Name VARCHAR(65) NOT NULL,
  Address VARCHAR(75) NOT NULL,
  Email VARCHAR(45) NOT NULL UNIQUE,
  phone_number INT(10) NOT NULL);

-- Create the Borrowed_Books table
CREATE TABLE Borrowed_Books (
    Borrow_id INT NOT NULL PRIMARY KEY,
    Book_Id INT,
    Member_Id INT,
    Borrow_Date DATE,
    Return_Date DATE,
    FOREIGN KEY (Book_Id) REFERENCES Books (Book_Id),
    FOREIGN KEY (Member_Id) REFERENCES Members (Member_Id));

-- Create the Reserveration Books Table
CREATE TABLE Reserverations (
    reserveration_id INT NOT NULL PRIMARY KEY,
    member_id INT NOT NULL,
    book_id INT NOT NULL,
    Reserveration_date DATE
    FOREIGN KEY (Member_Id) REFERENCES Members (Member_Id),
    FOREIGN KEY (Book_Id) REFERENCES Books (Book_Id));

-- Insert sample Book records (you can add more)
INSERT INSERT books(book_id,title,author,publication_year,genre)
VALUES(
    1,'Introduction to Algorithms', 'Thomas H. Cormen' 2009 ,'Computer Science'),
    (2,'Electric Machinery Fundamentals', 'Stephen J.Chapman',2018, 'Electrical'),
    (3, 'The Art of Electronics', 'Paul Horowitz', 2015 ,'Electronics'),
    (4, 'Engineering Mechanics: Statics', 'R.C. Hibbeler', 2020, 'Mechanical'),
    (5, 'Reinforced Concrete Design', 'George F.Limbrunner',2017, 'Civil'),
    (6, 'Database Systems: The Complete Book', 'Hector GarciaMolina', 2021, 'Computer Science'),
    (7,'Microelectronic Circuits', 'Adel S. Sedra', 2016, 'Electronics'),
    (8, 'Signals and Systems', 'Alan V.Oppenheim', 1997,'Electrical'),
    (9, 'Heat Transfer: Principles and Applications', 'Yunus A. Cengel', 2014, 'Mechanical'),
    (10, 'Structural Analysis', 'Russell C. Hibbeler', 2019, 'Civil'),
    (11, 'Computer Networking: A Top-Down Approach','James F. Kurose', 2020, 'Computer Science'),
    (12, 'Power System Analysis and Design', 'J. Duncan Glover',2017, 'Electrical'),
    (13, 'Digital Design and Computer Architecture','David Money Harris',2012, 'Computer Science'),
    (14, 'Mechanics of Materials', 'Ferdinand P. Beer', 2015, 'Mechanical'),
    (15, 'Geotechnical Engineering: Principles and Practices','Donald P. Coduto', 2018, 'Civil');
    -- ... (other book records)

select * from books;


-- Insert sample Author records (you can add more)
INSERT INTO authors (author_id,author_name)
VALUES
    (1,'Thomas H. Cormen'),
    (2, 'Stephen J. Chapman'),
    (3, 'Paul Horowitz'),
    (4, 'R.C. Hibbeler'),
    (5, 'George F. Limbrunner'),
    (6, 'Hector Garcia-Molina'),
    (7, 'Adel S. Sedra'),
    (8, 'Alan V. Oppenheim'),
    (9, 'Yunus A. Cengel'),
    (10, 'Russell C. Hibbeler'),
    (11, 'James F. Kurose'),
    (12,'J. Duncan Glover'),
    (13, 'David Money Harris'),
    (14, 'Ferdinand P. Beer'),
    (15, 'Donald P. Coduto');
    -- ... (other author records)

select * from authors ;


-- Insert sample Member records (you can add more)
INSERT INTO members(member_id,full_ame,address,email,phone_number)
VALUES 
    (1, 'Neha Sharma', '123 Main Street, Mumbai','neha.sharma@gmail.com', '+91 9876543210'),
    (2, 'Rajesh Patel','456 Park Avenue, Delhi', 'rajesh.patel@gmail.com','+91 9876543211'),
    (3, 'Priya Verma', '789 Central Road, Kolkata','priya.verma@gmail.com','+91 9876543212'),
    (4, 'Sanjay Singh', '246 Street Lane,Chennai','sanjay.singh@gmail.com','+91 9876543213'),
    (5, 'Aishwarya Reddy', '135 Green Garden,Bengaluru','aishwarya.reddy@gmail.com','+91 9876543214'),
    (6, 'Arjun Gupta', '789 Pearl Street,Hyderabad','arjun.gupta@gmail.com','+91 9876543215'),
    (7, 'Anjali Desai', '456 RoseAvenue, Mumbai','anjali.desai@gmail.com','+91 9876543216'),
    (8, 'Rakesh Sharma', '123 SunshineRoad, Delhi','rakesh.sharma@gmail.com','+91 9876543217'),
    (9 ,'Deepika Patel','789 Silver Square, Kolkata','deepika.patel@gmail.com','+91 9876543218'),
    (10 ,'Abhishek Verma','456 Diamond Lane, Chennai','abhishek.verma@gmail.com','+91 9876543219'),
    (11, 'Sneha Singh','246 Gold Garden,Bengaluru','sneha.singh@gmail.com','+91 9876543220'),
    (12,'Rahul Kumar', '135 Platinum Road,Hyderabad','rahul.kumar@gmail.com','+91 9876543221'),
    (13,'Pooja Shah','789 Sapphire Street, Mumbai','pooja.shah@gmail.com','+91 9876543222'),
    (14, 'Manish Joshi' ,'456 Emerald Avenue, Delhi','manish.joshi@gmail.com','+91 9876543223'),
    (15 ,'Shweta Gupta' ,'123 Pearl Lane,Kolkata','shweta.gupta@gmail.com','+91 9876543224');
    -- ... (other member records)

select * from members;


-- Insert sample Borrow_books records (you can add more)
INSERT INTO borrow_books (borrow_id,member_id,book_id,borrow_date,return_date)
VALUES
    (1,5, 3, '2022-05-10', '2022-05-25'),
    (2, 10, 7, '2022-05-12', '2022-05-28'),
    (3, 2, 1, '2022-05-15', '2022-05-30'),
    (4, 7, 5,'2022-05-20', '2022-06-05'),
    (5, 12, 10, '2022-05-25', '2022-06-10'),
    (6, 3, 2, '2022-06-01', '2022-06-16'),
    (7, 15, 9, '2022-06-05', '2022-06-20'),
    (8, 10, 6, '2022-06-08','2022-06-23'),
    (9, 2, 4, '2022-06-12', '2022-06-27'),
    (10, 7, 8, '2022-06-15', '2022-06-30'),
    (11, 14, 14, '2022-06-18', '2022-07-03'),
    (12, 1, 12, '2022-06-21','2022-07-06'),
    (13, 4, 11, '2022-06-24', '2022-07-09'),
    (14, 6, 3, '2022-06-27', '2022-07-12'),
    (15, 8, 13, '2022-06-30','2022-07-15');
    -- ... (other borrow_books records)

select * from borrow_books;
update borrow_books set book_id=7 where borrow_id=15;


-- Insert sample Reservation records (you can add more)
INSERT INTO reservations(reservation_id,member_id,book_id,reservation_date)
VALUES
    (1, 5, 3, '2022-05-05'),
    (2, 10, 7, '2022-05-10'),
    (3, 2, 1, '2022-05-12'),
    (4, 7, 5, '2022-05-18'),
    (5, 12, 10, '2022-05-20'),
    (6, 3, 2, '2022-05-25'),
    (7, 15, 9, '2022-06-01'),
    (8, 10, 6, '2022-06-06'),
    (9, 2,4, '2022-06-09'),
    (10, 7, 8, '2022-06-12'),
    (11, 14, 14, '2022-06-15'),
    (12, 1, 12, '2022-06-18'),
    (13, 4, 11, '2022-06-22'),
    (14, 6, 3, '2022-06-26'),
    (15, 8, 7, '2022-06-28');
    -- ... (other reservation records)

select * from reservations;

-- using AND
SELECT * FROM books WHERE genre = 'Electrical' AND publication_year > 2000;

-- using OR 
SELECT * FROM books WHERE genre = 'Electrical' OR genre = 'Electronics';

-- using Sorting
SELECT * FROM books ORDER BY publication_year DESC;

-- retrive  limited number of records
SELECT * FROM books LIMIT 2;

-- Using Pattern Matching (LIKE)
SELECT * FROM members WHERE full_name LIKE 'N%';

-- Aggregate Functions
-- Count the Total Number of Rows:
SELECT COUNT(*) AS total_books FROM books;

-- Using Grouping (GROUP BY)
SELECT genre, COUNT(*) AS total_books FROM books GROUP BY genre;

-- Using a Join
SELECT members.full_name, books.title
FROM borrow_books
INNER JOIN members ON borrow_books.member_id = members.member_id
INNER JOIN books ON borrow_books.book_id = books.book_id;

