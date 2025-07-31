
CREATE DATABASE finalobs_db;
go 

USE finalobs_db;
go
--
-- Database: `finalobs_db`
--
-- --------------------------------------------------------
--
-- Table structure for table `admin`
--
CREATE TABLE admin (
  name VARCHAR(20) COLLATE Latin1_General_CI_AS NOT NULL,
  pass VARCHAR(40) COLLATE Latin1_General_CI_AS NOT NULL  
);

--
SELECT NAME , pass
FROM admin
--
-- Dumping data for table `admin`
--
INSERT INTO admin (name, pass) 
VALUES ('admin', 'f865b53623b121fd34ee5426c792e5c33af8c227');
-- --------------------------------------------------------
--
-- Table structure for table `books`
--
CREATE TABLE books (
  book_isbn VARCHAR(20) COLLATE Latin1_General_CI_AS NOT NULL,
  book_title VARCHAR(60) COLLATE Latin1_General_CI_AS DEFAULT NULL,
  book_author VARCHAR(60) COLLATE Latin1_General_CI_AS DEFAULT NULL,
  book_image VARCHAR(40) COLLATE Latin1_General_CI_AS DEFAULT NULL,
  book_descr TEXT COLLATE Latin1_General_CI_AS DEFAULT NULL,
  book_price DECIMAL(6, 2) NOT NULL,
  publisherid INT NOT NULL,  
  created_at DATETIME NOT NULL DEFAULT GETDATE() 
);
--
select *
from books
-- Dumping data for table `books`
--
INSERT INTO books (book_isbn, book_title, book_author, book_image, book_descr, book_price, publisherid, created_at)
VALUES
('64568', 'Sample 102', 'Sample Author 2', 'dark-bg.jpg', 'Test - updated', '1200.00', 6, '2022-06-21 16:44:25'),
('978-0-321-94786-4', 'Learning Mobile App Development', 'Jakob Iversen, Michael Eierman', 'mobile_app.jpg', 'Now, one book can help you master mobile app development with both market-leading platforms: Apple''s iOS and Google''s Android. Perfect for both students and professionals, Learning Mobile App Development is the only tutorial with complete parallel coverage of both iOS and Android. With this guide, you can master either platform, or both - and gain a deeper understanding of the issues associated with developing mobile apps. You''ll develop an actual working app on both iOS and Android, mastering the entire mobile app development lifecycle, from planning through licensing and distribution. Each tutorial in this book has been carefully designed to support readers with widely varying backgrounds and has been extensively tested in live developer training courses. If you''re new to iOS, you''ll also find an easy, practical introduction to Objective-C, Apple''s native language.', '20.00', 6, '2022-06-21 16:44:25'),
('978-0-7303-1484-4', 'Doing Good By Doing Good', 'Peter Baines', 'doing_good.jpg', 'Doing Good by Doing Good shows companies how to improve the bottom line by implementing an engaging, authentic, and business-enhancing program that helps staff and business thrive. International CSR consultant Peter Baines draws upon lessons learnt from the challenges faced in his career as a police officer, forensic investigator, and founder of Hands Across the Water to describe the Australian CSR landscape, and the factors that make up a program that benefits everyone involved. Case studies illustrate the real effect of CSR on both business and society, with clear guidance toward maximizing involvement, engaging all employees, and improving the bottom line. The case studies draw out the companies that are focusing on creating shared value in meeting the challenges of society whilst at the same time bringing strong economic returns. Consumers are now expecting that big businesses with ever-increasing profits give back to the community from which those profits arise. At the same time, shareholders are demanding their share and are happy to see dividends soar. Getting this right is a balancing act, and Doing Good by Doing Good helps companies delineate a plan of action for getting it done.', '20.00', 2, '2022-06-21 16:44:25'),
('978-1-118-94924-5', 'Programmable Logic Controllers', 'Dag H. Hanssen', 'logic_program.jpg', 'Widely used across industrial and manufacturing automation, Programmable Logic Controllers (PLCs) perform a broad range of electromechanical tasks with multiple input and output arrangements, designed specifically to cope in severe environmental conditions such as automotive and chemical plants.Programmable Logic Controllers: A Practical Approach using CoDeSys is a hands-on guide to rapidly gain proficiency in the development and operation of PLCs based on the IEC 61131-3 standard. Using the freely-available* software tool CoDeSys, which is widely used in industrial design automation projects, the author takes a highly practical approach to PLC design using real-world examples. The design tool, CoDeSys, also features a built in simulator / soft PLC enabling the reader to undertake exercises and test the examples.', '20.00', 2, '2022-06-21 16:44:25'),
('978-1-1180-2669-4', 'Professional JavaScript for Web Developers, 3rd Edition', 'Nicholas C. Zakas', 'pro_js.jpg', 'If you want to achieve JavaScript''s full potential, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present-day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you''ll have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', '20.00', 1, '2022-06-21 16:44:25'),
('978-1-44937-019-0', 'Learning Web App Development', 'Semmy Purewal', 'web_app_dev.jpg', 'Grasp the fundamentals of web application development by building a simple database-backed app from scratch, using HTML, JavaScript, and other open source tools. Through hands-on tutorials, this practical guide shows inexperienced web app developers how to create a user interface, write a server, build client-server communication, and use a cloud-based service to deploy the application. Each chapter includes practice problems, full examples, and mental models of the development workflow. Ideal for a college-level course, this book helps you get started with web app development by providing you with a solid grounding in the process.', '20.00', 3, '2022-06-21 16:44:25'),
('978-1-44937-075-6', 'Beautiful JavaScript', 'Anton Kovalyov', 'beauty_js.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed? This guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language - whether it''s turning the most feared features into useful tools, or how JavaScript can be used for self-expression.', '20.00', 3, '2022-06-21 16:44:25'),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'pro_asp4.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', '20.00', 1, '2022-06-21 16:44:25'),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'android_studio.jpg', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', '20.00', 4, '2022-06-21 16:44:25'),
('978-1-484217-26-9', 'C++ 14 Quick Syntax Reference, 2nd Edition', 'Mikael Olsson', 'c_14_quick.jpg', 'This updated handy quick C++ 14 guide is a condensed code and syntax reference based on the newly updated C++ 14 release of the popular programming language. It presents the essential C++ syntax in a well-organized format that can be used as a handy reference. You won''t find any technical jargon, bloated samples, drawn out history lessons, or witty stories in this book. What you will find is a language reference that is concise, to the point and highly accessible. The book is packed with useful information and is a must-have for any C++ programmer. In the C++ 14 Quick Syntax Reference, Second Edition, you will find a concise reference to the C++ 14 language syntax. It has short, simple, and focused code examples. This book includes a well laid out table of contents and a comprehensive index allowing for easy review.', '20.00', 4, '2022-06-21 16:44:25');
--------------------------------------------------------
--
-- Table structure for table `customers`
--
CREATE TABLE customers (
  customerid INT NOT NULL,  -- SQL Server does not support UNSIGNED, use INT
  name VARCHAR(60) COLLATE Latin1_General_CI_AS NOT NULL,
  address VARCHAR(80) COLLATE Latin1_General_CI_AS NOT NULL,
  city VARCHAR(30) COLLATE Latin1_General_CI_AS NOT NULL,
  zip_code VARCHAR(10) COLLATE Latin1_General_CI_AS NOT NULL,
  country VARCHAR(60) COLLATE Latin1_General_CI_AS NOT NULL
);
--
SELECT * FROM Customers;
--
-- Dumping data for table `customers`
--
INSERT INTO customers (customerid, name, address, city, zip_code, country) VALUES
(1, 'hussein El Mazbouh', '105715', 'zahle,ali nahri', '1801', 'lebanon'),
(2, 'malk Serhan', '108933', 'beirut', '1213', 'lebanon'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'majd Seman', '107170', 'Dorms', '2306', 'lebanese university'),
(5, 'Mark Cooper', 'Sample Street', 'Sample City', '2306', 'UK'),
(6, 'Mark Cooper', 'Here City There Province, 2306', 'Here', '2306', 'UK'),
(7, 'Mark Cooper', 'Here City There Province, 2306', 'Sample City', '2306', 'UK'),
(8, 'Samantha Jane Miller', 'Sample Street', 'Sample City', '2306', 'Sampple');

--------------------------------------------------------
--
drop table customers
-- Table structure for table `orders`
--
CREATE TABLE orders (
  orderid INT NOT NULL,  
  customerid INT NOT NULL, 
  amount DECIMAL(6,2) NULL,
  date DATETIME NOT NULL DEFAULT GETDATE(),  
  ship_name CHAR(60) COLLATE Latin1_General_CI_AS NOT NULL,
  ship_address CHAR(80) COLLATE Latin1_General_CI_AS NOT NULL,
  ship_city CHAR(30) COLLATE Latin1_General_CI_AS NOT NULL,
  ship_zip_code CHAR(10) COLLATE Latin1_General_CI_AS NOT NULL,
  ship_country CHAR(20) COLLATE Latin1_General_CI_AS NOT NULL
);
--
SELECT * FROM Orders;

drop table orders;
--
-- Dumping data for table `orders`
--
INSERT INTO orders (orderid, customerid, amount, date, ship_name, ship_address, ship_city, ship_zip_code, ship_country) VALUES
(1, 1, 60.00, '2015-12-03 13:30:12', 'hussein El Mazbouh', '105715', 'zahle,ali nahri', '1801', 'lebanon'),
(2, 2, 60.00, '2015-12-03 13:31:12', 'malk Serhan', '108933', 'beirut', '1213', 'lebanon'),
(3, 3, 20.00, '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, 20.00, '2015-12-04 10:19:14','hussein El Mazbouh', '105715', 'zahle,ali nahri', '1801', 'lebanon'),
(5, 4, 80.00, '2022-06-21 00:09:36', 'majd Seman', '107170', 'Dorms', '2306', 'lebanese university'),
(6, 5, 220.00, '2022-06-21 01:35:16', 'Mark Cooper', 'Sample Street', 'Sample City', '2306', 'UK'),
(7, 6, 20.00, '2022-06-21 01:38:20', 'Mark Cooper', 'Here City There Province, 2306', 'Here', '2306', 'UK'),
(8, 7, 20.00, '2022-06-21 01:40:28', 'Mark Cooper', 'Here City There Province, 2306', 'Sample City', '2306', 'UK'),
(9, 8, 80.00, '2022-06-21 01:42:56', 'Samantha Jane Miller', 'Sample Street', 'Sample City', '2306', 'Sampple');

--------------------------------------------------------
--
-- Table structure for table `order_items`
--
CREATE TABLE order_items (
  orderid INT NOT NULL, 
  book_isbn VARCHAR(20) COLLATE Latin1_General_CI_AS NOT NULL,
  item_price DECIMAL(6,2) NOT NULL,
  quantity TINYINT NOT NULL  
);
--
SELECT * FROM OrderItems;
drop table  OrderItems;
-- Dumping data for table `order_items`
--
INSERT INTO order_items (orderid, book_isbn, item_price, quantity) VALUES
(1, '978-1-118-94924-5', 20.00, 1),
(1, '978-1-44937-019-0', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1),
(2, '978-1-118-94924-5', 20.00, 1),
(2, '978-1-44937-019-0', 20.00, 1),
(2, '978-1-49192-706-9', 20.00, 1),
(3, '978-0-321-94786-4', 20.00, 1),
(1, '978-1-49192-706-9', 20.00, 1),
(5, '978-1-4571-0402-2', 20.00, 2),
(5, '978-1-44937-075-6', 20.00, 1),
(5, '978-0-321-94786-4', 20.00, 1),
(6, '978-1-4571-0402-2', 20.00, 10),
(6, '978-1-44937-075-6', 20.00, 1),
(7, '978-0-7303-1484-4', 20.00, 1),
(8, '978-1-1180-2669-4', 20.00, 1),
(9, '978-1-44937-019-0', 20.00, 4);

--------------------------------------------------------
--
-- Table structure for table `publisher`
--
CREATE TABLE publisher (
  publisherid INT NOT NULL,  
  publisher_name VARCHAR(60) COLLATE Latin1_General_CI_AS NOT NULL
);
--
SELECT * FROM Publishers;
select drop Publishers;
-- Dumping data for table `publisher`
--
INSERT INTO publisher (publisherid, publisher_name) VALUES
(1, 'Publisher 1'),
(2, 'Publisher 2'),
(3, 'Publisher 3'),
(4, 'Publisher 4'),
(5, 'Publisher 5'),
(6, 'Publisher 6');

-- Indexes for dumped tables
--
--
-- Indexes for table `admin`
--
-- Adding Primary Keys
ALTER TABLE admin
  ADD CONSTRAINT PK_admin PRIMARY KEY (name, pass);

ALTER TABLE books
  ADD CONSTRAINT PK_books PRIMARY KEY (book_isbn);

ALTER TABLE customers
  ADD CONSTRAINT PK_customers PRIMARY KEY (customerid);

ALTER TABLE orders
  ADD CONSTRAINT PK_orders PRIMARY KEY (orderid);

ALTER TABLE publisher
  ADD CONSTRAINT PK_publisher PRIMARY KEY (publisherid);

-- Setting AUTO_INCREMENT equivalent in SQL Server using IDENTITY
-- For `customers` table:
ALTER TABLE customers
  ALTER COLUMN customerid INT NOT NULL; 

-- For `orders` table:
ALTER TABLE orders
  ALTER COLUMN orderid INT NOT NULL;

-- For `publisher` table:
ALTER TABLE publisher
  ALTER COLUMN publisherid INT NOT NULL;

-----------------------------------------------------------------------------
--
--functoins , procudure , Cursors , trigger , and Transmition
--

--1st Function: GetTotalOrdersByCustomer
CREATE FUNCTION dbo.GetTotalOrdersByCustomer (@cust_id INT)  
RETURNS INT  
AS  
BEGIN  
    DECLARE @total_orders INT;  
    SELECT @total_orders = COUNT(*)  
    FROM Orders  
    WHERE CustomerID = @cust_id;  
    RETURN @total_orders;  
END;


--calling 1st function
SELECT dbo.GetTotalOrdersByCustomer(101);


CREATE FUNCTION dbo.GetStockByBook (@book_id INT)  
RETURNS INT  
AS  
BEGIN  
    DECLARE @stock INT;  
    SELECT @stock = StockQuantity  
    FROM Book  
    WHERE BookID = @book_id;  
    RETURN @stock;  
END;


--calling 2nd Function
SELECT dbo.GetStockByBook(501);

----------------------------------------------------------------------------------------
--Tiggers 


--1st trigger: Prevent Negative Stock
CREATE TRIGGER PreventNegativeStock
ON Book
FOR UPDATE
AS
BEGIN
    DECLARE @newStockQuantity INT;

    -- Get the new stock quantity after the update
    SELECT @newStockQuantity = StockQuantity FROM INSERTED;

    -- Check if the stock quantity is negative
    IF @newStockQuantity < 0
    BEGIN
        -- Raise an error if the stock quantity is negative
        RAISERROR('Stock cannot be negative', 16, 1);
        ROLLBACK;  -- Rollback the update
    END
END;

--2nd Trigger: Update Stock on Order
CREATE TRIGGER UpdateStockOnOrder
ON OrderDetails
AFTER INSERT
AS
BEGIN
    DECLARE @bookID INT;
    DECLARE @quantity INT;

    -- Retrieve the BookID and Quantity from the inserted row(s)
    SELECT @bookID = BookID, @quantity = Quantity
    FROM INSERTED;

    -- Update the StockQuantity in the Book table
    UPDATE Book
    SET StockQuantity = StockQuantity - @quantity
    WHERE BookID = @bookID;
END;

--------------------------------------------------------------------------------------------------------------- 

--Cursors 

--1st Cursors :List All Books by Author
CREATE PROCEDURE ListBooksByAuthor
    @AuthorName VARCHAR(255)
AS
BEGIN
    DECLARE @book_title VARCHAR(255);
    
    -- Declare the cursor
    DECLARE book_cursor CURSOR FOR
    SELECT Title FROM Book WHERE Author = @AuthorName;

    OPEN book_cursor;

    -- Fetch each book title and display it
    FETCH NEXT FROM book_cursor INTO @book_title;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Select the book title
        SELECT @book_title AS BookTitle;

        -- Fetch the next row
        FETCH NEXT FROM book_cursor INTO @book_title;
    END

    -- Close and deallocate the cursor
    CLOSE book_cursor;
    DEALLOCATE book_cursor;
END;


--calling 1st Cursors
EXEC ListBooksByAuthor 'J.K. Rowling';

--2nd  Cursor: Display All Customers
CREATE PROCEDURE ShowAllCustomers
AS
BEGIN
    DECLARE @cust_name VARCHAR(255);
    DECLARE @cust_email VARCHAR(255);

    -- Declare the cursor
    DECLARE cust_cursor CURSOR FOR
    SELECT Name, Email FROM Customer;

    OPEN cust_cursor;

    -- Fetch the first customer
    FETCH NEXT FROM cust_cursor INTO @cust_name, @cust_email;

    -- Loop through all the customers
    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Display the customer's name and email
        SELECT @cust_name AS CustomerName, @cust_email AS CustomerEmail;

        -- Fetch the next row
        FETCH NEXT FROM cust_cursor INTO @cust_name, @cust_email;
    END

    -- Close and deallocate the cursor
    CLOSE cust_cursor;
    DEALLOCATE cust_cursor;
END;
--calling 2nd Cursor
EXEC ShowAllCustomers;

------------------------------------------------------------------------------------------------------------------------------------

--Procedure

--1st Procedure: Place a New Order
CREATE PROCEDURE PlaceOrder
    @cust_id INT,
    @book_id INT,
    @qty INT
AS
BEGIN
    DECLARE @order_id INT;
    DECLARE @book_price DECIMAL(10, 2);

    -- Start Transaction
    BEGIN TRANSACTION;

    -- Get Book Price
    SELECT @book_price = Price FROM Book WHERE BookID = @book_id;

    -- Insert into Orders Table
    INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
    VALUES (@cust_id, GETDATE(), @qty * @book_price);

    -- Get Last Inserted Order ID
    SET @order_id = SCOPE_IDENTITY();

    -- Insert into OrderDetails Table
    INSERT INTO OrderDetails (OrderID, BookID, Quantity, Subtotal)
    VALUES (@order_id, @book_id, @qty, @qty * @book_price);

    -- Commit Transaction
    COMMIT;
END;


--1st calling Procedure
EXEC PlaceOrder @cust_id = 102, @book_id = 501, @qty = 2;

-------------------------------------------------------------------------------------------------------------------------------------------

--2nd Procedure: Process Payment
--Transaction
CREATE PROCEDURE ProcessPayment
    @order_id INT,
    @method VARCHAR(50)
AS
BEGIN
    -- Start Transaction
    BEGIN TRANSACTION;
      
    -- Insert Payment Record
    INSERT INTO Payment (OrderID, PaymentMethod, PaymentStatus, TransactionDate)
    VALUES (@order_id, @method, 'Completed', GETDATE());
      
    -- Commit Transaction
    COMMIT;
END;

--2nd calling Procedure

EXEC ProcessPayment @order_id = 1001, @method = 'Credit Card';

-------------------------------------------------------------------------------------------------------------------------------------
--VIEW CREATE 1ST VIEW
CREATE VIEW CustomerOrderDetails AS
SELECT 
    c.CustomerID,
    c.Name AS CustomerName,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount,
    p.PaymentStatus
FROM 
    Customers c
JOIN 
    Orders o ON c.CustomerID = o.CustomerID
LEFT JOIN 
    Payment p ON o.OrderID = p.OrderID;

--CALLING IT 
SELECT * FROM CustomerOrderDetails;
--DROPPING IT 
DROP VIEW CustomerOrderDetails;

--project done
---select all data
SELECT * FROM Customers;
SELECT * FROM Publishers;
SELECT * FROM Books;
SELECT * FROM Orders;
SELECT * FROM OrderItems;
go