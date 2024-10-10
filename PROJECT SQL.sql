CREATE DATABASE LIBRARY;
USE LIBRARY;

CREATE TABLE Branch (

Branch_no INT PRIMARY KEY,

Manager_Id INT,

Branch_address VARCHAR(255),

Contact_no VARCHAR(15) );

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES
(1, 101, '123 Main St', '212-123-4567'),
(2, 102, '456 Elm St', '312-789-0123'),
(3, 103, '789 Oak St', '213-456-7890'),
(4, 104, '901 Maple St', '713-123-4567'),
(5, 105, '234 Pine St', '602-789-0123'),
(6, 106, '567 Cedar St', '215-456-7890'),
(7, 107, '890 Walnut St', '210-123-4567'),
(8, 108, '345 Spruce St', '619-789-0123'),
(9, 109, '678 Fir St', '214-456-7890'),
(10, 110, '901 Ash St', '408-123-4567'),
(11, 111, '234 Beech St', '512-789-0123'),
(12, 112, '567 Cherry St', '904-456-7890'),
(13, 113, '890 Cypress St', '415-123-4567'),
(14, 114, '345 Hickory St', '317-789-0123'),
(15, 115, '678 Laurel St', '614-456-7890'),
(16, 116, '901 Magnolia St', '817-123-4567'),
(17, 117, '234 Myrtle St', '704-789-0123'),
(18, 118, '567 Narcissus St', '901-456-7890'),
(19, 119, '890 Oakwood St', '617-123-4567'),
(20, 120, '345 Palm St', '410-789-0123'),
(21, 121, '678 Pineview St', '313-456-7890'),
(22, 122, '901 Quincy St', '206-123-4567'),
(23, 123, '234 Redwood St', '303-789-0123'),
(24, 124, '567 Sage St', '202-456-7890'),
(25, 125, '890 Tamarack St', '615-123-4567');

CREATE TABLE Employee (

Emp_Id INT PRIMARY KEY,

Emp_name VARCHAR(100),

Position VARCHAR(50),

Salary DECIMAL(10, 2),

Branch_no INT,

FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)

);

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no)
VALUES
(1, 'John Smith', 'Manager', 80000.00, 1),
(2, 'Jane Doe', 'Team Lead', 60000.00, 1),
(3, 'Michael Brown', 'Software Engineer', 50000.00, 2),
(4, 'Emily Chen', 'Data Analyst', 45000.00, 2),
(5, 'David Lee', 'Sales Representative', 40000.00, 3),
(6, 'Sarah Taylor', 'Marketing Manager', 70000.00, 3),
(7, 'Kevin White', 'IT Specialist', 55000.00, 4),
(8, 'Lisa Nguyen', 'HR Generalist', 42000.00, 4),
(9, 'Peter Davis', 'Financial Analyst', 58000.00, 5),
(10, 'Amy Hall', 'Customer Service Representative', 38000.00, 5),
(11, 'Brian Martin', 'Network Administrator', 52000.00, 6),
(12, 'Christina Garcia', 'Graphic Designer', 44000.00, 6),
(13, 'Daniel Kim', 'Database Administrator', 60000.00, 7),
(14, 'Elizabeth Patel', 'Business Development Manager', 75000.00, 7),
(15, 'Frank Scott', 'Technical Writer', 48000.00, 8),
(16, 'Gabriella Rodriguez', 'Quality Assurance Engineer', 50000.00, 8),
(17, 'Helen Thompson', 'Sales Manager', 65000.00, 9),
(18, 'Ivan Jackson', 'Network Engineer', 54000.00, 9),
(19, 'Julia Martin', 'Marketing Specialist', 46000.00, 10),
(20, 'Kyle Brown', 'Software Developer', 52000.00, 10),
(21, 'Lauren Lee', 'Financial Manager', 68000.00, 11),
(22, 'Matthew Kim', 'IT Project Manager', 72000.00, 11),
(23, 'Nancy Taylor', 'HR Manager', 62000.00, 12),
(24, 'Oliver White', 'Business Analyst', 56000.00, 12),
(25, 'Patricia Hall', 'Customer Service Manager', 58000.00, 13);

CREATE TABLE Books (

ISBN VARCHAR(20) PRIMARY KEY,

Book_title VARCHAR(255),

Category VARCHAR(100),

Rental_Price DECIMAL(5, 2),

Status VARCHAR(3),

Author VARCHAR(100),

Publisher VARCHAR(100)

);

INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher)
VALUES
('978-1234567890', 'To Kill a Mockingbird', 'Fiction', 5.00, 'Yes', 'Harper Lee', 'J.B. Lippincott & Co.'),
('978-9876543210', 'The Great Gatsby', 'Classic', 4.50, 'Yes', 'F. Scott Fitzgerald', 'Charles Scribner''s Sons'),
('978-1111111111', 'Pride and Prejudice', 'Romance', 4.00, 'No', 'Jane Austen', 'T. Egerton'),
('978-2222222222', 'The Catcher in the Rye', 'Young Adult', 4.25, 'Yes', 'J.D. Salinger', 'Little, Brown and Company'),
('978-3333333333', 'The Hunger Games', 'Science Fiction', 5.50, 'No', 'Suzanne Collins', 'Scholastic Press'),
('978-4444444444', 'The Lion, the Witch and the Wardrobe', 'Fantasy', 4.75, 'Yes', 'C.S. Lewis', 'Geoffrey Bles'),
('978-5555555555', 'The Lord of the Rings', 'Fantasy', 6.00, 'No', 'J.R.R. Tolkien', 'George Allen & Unwin'),
('978-6666666666', 'The Little Prince', 'Children''s', 3.50, 'Yes', 'Antoine de Saint-Exupéry', 'Reynal & Hitchcock'),
('978-7777777777', 'The Alchemist', 'Philosophy', 5.25, 'No', 'Paulo Coelho', 'Editora Rocco'),
('978-8888888888', 'The Da Vinci Code', 'Mystery', 5.75, 'Yes', 'Dan Brown', 'Doubleday'),
('978-9999999999', 'The Twilight Saga', 'Romance', 5.00, 'No', 'Stephenie Meyer', 'Little, Brown and Company'),
('978-1010101010', 'The Adventures of Sherlock Holmes', 'Mystery', 4.25, 'Yes', 'Sir Arthur Conan Doyle', 'George Newnes'),
('978-1111111112', 'The Picture of Dorian Gray', 'Classic', 4.50, 'No', 'Oscar Wilde', 'Lippincott''s Monthly Magazine'),
('978-1313131313', 'War and Peace', 'Historical Fiction', 6.50, 'Yes', 'Leo Tolstoy', 'The Russian Messenger'),
('978-1414141414', 'Moby-Dick', 'Adventure', 5.25, 'No', 'Herman Melville', 'Harper & Brothers'),
('978-1515151515', 'The Count of Monte Cristo', 'Adventure', 5.75, 'Yes', 'Alexandre Dumas', 'Éditions Petit-Montrouge'),
('978-1616161616', 'Jane Eyre', 'Romance', 4.75, 'No', 'Charlotte Brontë', 'Smith, Elder & Co.'),
('978-1717171717', 'Wuthering Heights', 'Romance', 4.50, 'Yes', 'Emily Brontë', 'Thomas Cautley Newby'),
('978-1818181818', 'The Scarlet Letter', 'Classic', 4.25, 'No', 'Nathaniel Hawthorne', 'Ticknor and Fields'),
('978-1919191919', 'The Crucible', 'Drama', 5.00, 'Yes', 'Arthur Miller', 'The Viking Press'),
('978-2020202020', 'The Grapes of Wrath', 'Historical Fiction', 5.50, 'No', 'John Steinbeck', 'The Viking Press'),
('978-2121212121', 'Of Mice and Men', 'Classic', 4.75, 'Yes', 'John Steinbeck', 'Covici Friede'),
('978-2222222223', 'The Sun Also Rises', 'Classic', 4.50, 'No', 'Ernest Hemingway', 'Charles Scribner''s Sons'),
('978-2323232323', 'A Farewell to Arms', 'Classic', 5.25, 'Yes', 'Ernest Hemingway', 'Charles Scribner''s Sons'),
('978-2424242424', 'The Old Man and the Sea', 'Classic', 4.00, 'No', 'Ernest Hemingway','Covici Friede');

CREATE TABLE Customer (

Customer_Id INT PRIMARY KEY,

Customer_name VARCHAR(100),

Customer_address VARCHAR(255), Reg_date DATE);

INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date)
VALUES
(1, 'John Smith', '123 Main St, New York', '2022-01-01'),
(2, 'Emily Johnson', '456 Elm St, Chicago', '2022-01-05'),
(3, 'Michael Davis', '789 Oak St, Los Angeles', '2022-01-10'),
(4, 'Sarah Taylor', '901 Maple St, Houston', '2022-01-15'),
(5, 'David Lee', '234 Pine St, Phoenix', '2022-01-20'),
(6, 'Jessica White', '567 Cedar St, Philadelphia', '2022-01-25'),
(7, 'Kevin Brown', '890 Walnut St, San Antonio', '2022-02-01'),
(8, 'Lisa Nguyen', '345 Spruce St, San Diego', '2022-02-05'),
(9, 'Peter Martin', '678 Fir St, Dallas', '2022-02-10'),
(10, 'Amy Hall', '901 Ash St, San Jose', '2022-02-15'),
(11, 'Brian Garcia', '234 Beech St, Austin', '2022-02-20'),
(12, 'Christina Kim', '567 Cherry St, Jacksonville', '2022-02-25'),
(13, 'Daniel Patel', '890 Cypress St, San Francisco', '2022-03-01'),
(14, 'Elizabeth Brooks', '345 Hickory St, Indianapolis', '2022-03-05'),
(15, 'Frank Scott', '678 Laurel St, Columbus', '2022-03-10'),
(16, 'Gabriella Rodriguez', '901 Magnolia St, Fort Worth', '2022-03-15'),
(17, 'Helen Thompson', '234 Myrtle St, Charlotte', '2022-03-20'),
(18, 'Ivan Jackson', '567 Narcissus St, Memphis', '2022-03-25'),
(19, 'Julia Martin', '890 Oakwood St, Boston', '2022-04-01'),
(20, 'Kyle Brown', '345 Palm St, Baltimore', '2022-04-05'),
(21, 'Lauren Lee', '678 Pineview St, Detroit', '2022-04-10'),
(22, 'Matthew Kim', '901 Quincy St, Seattle', '2022-04-15'),
(23, 'Nancy Taylor', '234 Redwood St, Denver', '2022-04-20'),
(24, 'Oliver White', '567 Sage St, Washington', '2022-04-25'),
(25, 'Patricia Hall', '890 Tamarack St, Nashville', '2022-05-01');

CREATE TABLE IssueStatus (

Issue_Id INT PRIMARY KEY,

Issued_cust INT,

Issued_book_name VARCHAR(255),

Issue_date DATE,

Isbn_book VARCHAR(20),

FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),

FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)

);

INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book)
VALUES
(1, 1, 'To Kill a Mockingbird', '2022-01-05', '978-1234567890'),
(2, 2, 'The Great Gatsby', '2022-01-10', '978-9876543210'),
(3, 3, 'Pride and Prejudice', '2022-01-15', '978-1111111111'),
(4, 4, 'The Catcher in the Rye', '2022-01-20', '978-2222222222'),
(5, 5, 'The Hunger Games', '2022-01-25', '978-3333333333'),
(6, 6, 'The Lion, the Witch and the Wardrobe', '2022-02-01', '978-4444444444'),
(7, 7, 'The Lord of the Rings', '2022-02-05', '978-5555555555'),
(8, 8, 'The Little Prince', '2022-02-10', '978-6666666666'),
(9, 9, 'The Alchemist', '2022-02-15', '978-7777777777'),
(10, 10, 'The Da Vinci Code', '2022-02-20', '978-8888888888'),
(11, 11, 'The Twilight Saga', '2022-02-25', '978-9999999999'),
(12, 12, 'The Adventures of Sherlock Holmes', '2022-03-01', '978-1010101010'),
(13, 13, 'The Picture of Dorian Gray', '2022-03-05', '978-1111111112'),
(14, 14, 'War and Peace', '2022-03-10', '978-1313131313'),
(15, 15, 'Moby-Dick', '2022-03-15', '978-1414141414'),
(16, 16, 'The Count of Monte Cristo', '2022-03-20', '978-1515151515'),
(17, 17, 'Jane Eyre', '2022-03-25', '978-1616161616'),
(18, 18, 'Wuthering Heights', '2022-04-01', '978-1717171717'),
(19, 19, 'The Scarlet Letter', '2022-04-05', '978-1818181818'),
(20, 20, 'The Crucible', '2022-04-10', '978-1919191919'),
(21, 21, 'The Grapes of Wrath', '2022-04-15', '978-2020202020'),
(22, 22, 'Of Mice and Men', '2022-04-20', '978-2121212121'),
(23, 23, 'The Sun Also Rises', '2022-04-25', '978-2222222223'),
(24, 24, 'A Farewell to Arms', '2022-05-01', '978-2323232323'),
(25, 25, 'The Old Man and the Sea', '2022-05-05', '978-2424242424');

CREATE TABLE ReturnStatus (

Return_Id INT PRIMARY KEY,

Return_cust INT,

Return_book_name VARCHAR(255),

Return_date DATE,

Isbn_book2 VARCHAR(20),

FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),

FOREIGN KEY (Isbn_book2)REFERENCES Books(ISBN) );

INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2)
VALUES
(1, 1, 'To Kill a Mockingbird', '2022-01-20', '978-1234567890'),
(2, 2, 'The Great Gatsby', '2022-01-25', '978-9876543210'),
(3, 3, 'Pride and Prejudice', '2022-02-01', '978-1111111111'),
(4, 4, 'The Catcher in the Rye', '2022-02-05', '978-2222222222'),
(5, 5, 'The Hunger Games', '2022-02-10', '978-3333333333'),
(6, 6, 'The Lion, the Witch and the Wardrobe', '2022-02-15', '978-4444444444'),
(7, 7, 'The Lord of the Rings', '2022-02-20', '978-5555555555'),
(8, 8, 'The Little Prince', '2022-02-25', '978-6666666666'),
(9, 9, 'The Alchemist', '2022-03-01', '978-7777777777'),
(10, 10, 'The Da Vinci Code', '2022-03-05', '978-8888888888'),
(11, 11, 'The Twilight Saga', '2022-03-10', '978-9999999999'),
(12, 12, 'The Adventures of Sherlock Holmes', '2022-03-15', '978-1010101010'),
(13, 13, 'The Picture of Dorian Gray', '2022-03-20', '978-1111111112'),
(14, 14, 'War and Peace', '2022-03-25', '978-1313131313'),
(15, 15, 'Moby-Dick', '2022-04-01', '978-1414141414'),
(16, 16, 'The Count of Monte Cristo', '2022-04-05', '978-1515151515'),
(17, 17, 'Jane Eyre', '2022-04-10', '978-1616161616'),
(18, 18, 'Wuthering Heights', '2022-04-15', '978-1717171717'),
(19, 19, 'The Scarlet Letter', '2022-04-20', '978-1818181818'),
(20, 20, 'The Crucible', '2022-04-25', '978-1919191919'),
(21, 21, 'The Grapes of Wrath', '2022-05-01', '978-2020202020'),
(22, 22, 'Of Mice and Men', '2022-05-05', '978-2121212121'),
(23, 23, 'The Sun Also Rises', '2022-05-10', '978-2222222223'),
(24, 24, 'A Farewell to Arms', '2022-05-15', '978-2323232323'),
(25, 25, 'The Old Man and the Sea', '2022-05-20', '978-2424242424');

select * from Branch;
select * from Employee;
select * from Books;
select * from Customer;
select * from IssueStatus;
select * from ReturnStatus;

UPDATE Books SET Rental_Price = Rental_Price + 20;
SET SQL_SAFE_UPDATES = 0;

SELECT Book_title,Category,Rental_Price from Books WHERE Status = 'yes';

SELECT Emp_id,Emp_name,Salary FROM Employee ORDER BY Salary DESC;

SELECT IssueStatus.Issued_cust, 

IssueStatus.Issued_book_name, 

Customer.Customer_name

FROM IssueStatus LEFT JOIN Customer 

ON IssueStatus.Issued_cust = Customer.Customer_Id;

SELECT 
  Category, 
  COUNT(*) AS Total_Books
FROM 
  Books
GROUP BY 
  Category;
  
  SELECT 
  Emp_Name, 
  Position,Salary
FROM 
  Employee
WHERE 
  Salary > 50000;
  
  SELECT Customer.Reg_date, Customer.Customer_name, 

IssueStatus.Issued_book_name FROM Customer

LEFT JOIN IssueStatus ON 

Customer.Customer_Id = IssueStatus.Issued_cust

WHERE Customer.Reg_date < '2022-01-01';

UPDATE Customer SET Reg_date = '2021-12-25' WHERE Customer_Id = 1;
UPDATE Customer SET Reg_date = '2021-11-25' WHERE Customer_Id = 2;
UPDATE Customer SET Reg_date = '2021-10-25' WHERE Customer_Id = 3;
UPDATE Customer SET Reg_date = '2021-9-25' WHERE Customer_Id = 4;

SELECT 
  Branch_no, 
  COUNT(*) AS Total_Employees
FROM 
  Employee
GROUP BY 
  Branch_no;
  
  UPDATE Issuestatus SET  Issue_date = '2023-06-05' WHERE Issue_Id = 1;
  UPDATE Issuestatus SET  Issue_date = '2023-06-10' WHERE Issue_Id = 2;
  UPDATE Issuestatus SET  Issue_date = '2023-06-12' WHERE Issue_Id = 3;
  UPDATE Issuestatus SET  Issue_date = '2023-06-15' WHERE Issue_Id = 4;
  
  SELECT Customer.Customer_name,

IssueStatus.Issued_book_name, 

IssueStatus.Issue_date

FROM Customer LEFT JOIN IssueStatus 

ON Customer.Customer_Id = IssueStatus.Issued_cust

WHERE IssueStatus.Issue_date 

BETWEEN '2023-06-01' AND '2023-06-30';

SELECT Book_title,Author FROM Books Where Category = 'Historical Fiction';

SELECT Branch_no, 

COUNT(*) AS NoOfEmployees

FROM Employee 

GROUP BY Branch_no

HAVING COUNT(*) > 1;

SELECT Employee.Emp_name, 

Employee.Branch_no, 

Branch.Branch_address

FROM Employee LEFT JOIN Branch ON

Employee.Branch_no = Branch.Branch_no

WHERE Employee.Position = 'Manager';

UPDATE Employee SET Position = 'Manager'where Emp_Id= 2;
UPDATE Employee SET Position = 'Manager'where Emp_Id= 10;
UPDATE Employee SET Position = 'Manager'where Emp_Id= 8;

SELECT Customer.Customer_name, Books.Book_title, 

Books.Rental_Price

FROM Customer INNER JOIN IssueStatus

ON Customer.Customer_Id = IssueStatus.Issued_cust

INNER JOIN Books ON

IssueStatus.Isbn_book = Books.ISBN

WHERE Books.Rental_Price > 25;














    






  
  

  
  
  
  































