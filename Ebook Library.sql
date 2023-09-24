/* Type of SQL dbms used: MySQL */

/* First run the below segment, line 5 to line 238, to create the database */

CREATE TABLE AUTHOR (
  AU_ID        NUMERIC(7,0) PRIMARY KEY,
  AU_FNAME     VARCHAR(30) NOT NULL  ,
  AU_LNAME     VARCHAR(30) NOT NULL  ,
  AU_BIRTHYEAR NUMERIC(4)
);

CREATE TABLE PATRON (
  PAT_ID      NUMERIC(10,0) PRIMARY KEY,
  PAT_FNAME   VARCHAR(20) NOT NULL   ,
  PAT_LNAME   VARCHAR(20) NOT NULL   ,
  PAT_TYPE    VARCHAR(10) NOT NULL
);

CREATE TABLE BOOK (
  BOOK_NUM   NUMERIC(10,0) PRIMARY KEY,
  BOOK_TITLE VARCHAR(120) NOT NULL  ,
  BOOK_YEAR  NUMERIC(4)               ,
  BOOK_COST  NUMERIC(8,2)             ,
  BOOK_SUBJECT VARCHAR(120)         ,
  PAT_ID    NUMERIC(10),
  FOREIGN KEY(PAT_ID) REFERENCES PATRON(PAT_ID)
);

CREATE TABLE CHECKOUT (
  CHECK_NUM         NUMERIC(15) PRIMARY KEY,
  BOOK_NUM          NUMERIC(10),
  PAT_ID            NUMERIC(10),
  CHECK_OUT_DATE    DATE,
  CHECK_DUE_DATE    DATE,
  CHECK_IN_DATE     DATE,
  FOREIGN KEY (BOOK_NUM) REFERENCES BOOK(BOOK_NUM),
  FOREIGN KEY (PAT_ID) REFERENCES PATRON(PAT_ID)
);

CREATE TABLE WRITES (
  BOOK_NUM  NUMERIC(10),
  AU_ID     NUMERIC(7),
  CONSTRAINT WRITES_BOOK_AU_PK PRIMARY KEY (BOOK_NUM, AU_ID),
  CONSTRAINT WRITES_BOOK_NUM_FK FOREIGN KEY(BOOK_NUM) REFERENCES BOOK(BOOK_NUM),
  CONSTRAINT WRITES_AU_ID_FK FOREIGN KEY(AU_ID) REFERENCES AUTHOR(AU_ID)
);

-- AUTHOR rows
INSERT INTO AUTHOR VALUES (185, 'Benson', 'Reeves', 1990);
INSERT INTO AUTHOR VALUES (218, 'Rachel', 'Beatney', 1983);
INSERT INTO AUTHOR VALUES (229, 'Carmine', 'Salvadore', NULL);
INSERT INTO AUTHOR VALUES (251, 'Hugo', 'Bruer', 1972);
INSERT INTO AUTHOR VALUES (262, 'Xia', 'Chiang', NULL);
INSERT INTO AUTHOR VALUES (273, 'Reba', 'Durante', 1969);
INSERT INTO AUTHOR VALUES (284, 'Trina', 'Tankersly', 1961);
INSERT INTO AUTHOR VALUES (383, 'Neal', 'Walsh', 1980);
INSERT INTO AUTHOR VALUES (394, 'Robert', 'Lake', 1982);
INSERT INTO AUTHOR VALUES (438, 'Perry', 'Pearson', 1986);
INSERT INTO AUTHOR VALUES (460, 'Connie', 'Paulsen', 1983);
INSERT INTO AUTHOR VALUES (559, 'Rachel', 'McGill', NULL);
INSERT INTO AUTHOR VALUES (581, 'Manish', 'Aggerwal', 1984);
INSERT INTO AUTHOR VALUES (592, 'Lawrence', 'Sheel', 1976);
INSERT INTO AUTHOR VALUES (603, 'Julia', 'Palca', 1988);

-- PATRON rows

INSERT INTO PATRON VALUES (1160, 'robert', 'carter', 'Faculty');
INSERT INTO PATRON VALUES (1161, 'Kelsey', 'Koch', 'Faculty');
INSERT INTO PATRON VALUES (1165, 'Cedric', 'Baldwin', 'Faculty');
INSERT INTO PATRON VALUES (1166, 'Vera', 'Alvarado', 'Student');
INSERT INTO PATRON VALUES (1167, 'Alan', 'Martin', 'FACULTY');
INSERT INTO PATRON VALUES (1170, 'Cory', 'Barry', 'faculty');
INSERT INTO PATRON VALUES (1171, 'Peggy', 'Marsh', 'STUDENT');
INSERT INTO PATRON VALUES (1172, 'Tony', 'Miles', 'STUDENT');
INSERT INTO PATRON VALUES (1174, 'Betsy', 'Malone', 'STUDENT');
INSERT INTO PATRON VALUES (1180, 'Nadine', 'Blair', 'STUDENT');
INSERT INTO PATRON VALUES (1181, 'Allen', 'Horne', 'Student');
INSERT INTO PATRON VALUES (1182, 'Jamal', 'Melendez', 'STUDENT');
INSERT INTO PATRON VALUES (1183, 'Helena', 'Hughes', 'Faculty');
INSERT INTO PATRON VALUES (1184, 'Jimmie', 'Love', 'StudenT');
INSERT INTO PATRON VALUES (1185, 'Sandra', 'Yang', 'student');
INSERT INTO PATRON VALUES (1200, 'Lorenzo', 'Torres', 'Student');
INSERT INTO PATRON VALUES (1201, 'Shelby', 'Noble', 'Student');
INSERT INTO PATRON VALUES (1202, 'Holly', 'Anthony', 'Student');
INSERT INTO PATRON VALUES (1203, 'Tyler', 'Pope', 'STUDENT');
INSERT INTO PATRON VALUES (1204, 'Thomas', 'Duran', 'Student');
INSERT INTO PATRON VALUES (1205, 'Claire', 'Gomez', 'student');
INSERT INTO PATRON VALUES (1207, 'Iva', 'Ramos', 'Student');
INSERT INTO PATRON VALUES (1208, 'Ollie', 'Cantrell', 'Student');
INSERT INTO PATRON VALUES (1209, 'Rena', 'Mathis', 'Student');
INSERT INTO PATRON VALUES (1210, 'Keith', 'Cooley', 'STUdent');
INSERT INTO PATRON VALUES (1211, 'Jerald', 'Gaines', 'Student');
INSERT INTO PATRON VALUES (1212, 'Iva', 'McClain', 'Student');
INSERT INTO PATRON VALUES (1213, 'Desiree', 'Rivas', 'Student');
INSERT INTO PATRON VALUES (1214, 'Marina', 'King', 'Student');
INSERT INTO PATRON VALUES (1215, 'Maureen', 'Downs', 'Student');
INSERT INTO PATRON VALUES (1218, 'Angel', 'Terrell', 'Student');
INSERT INTO PATRON VALUES (1219, 'Desiree', 'Harrington', 'Student');
INSERT INTO PATRON VALUES (1220, 'Carlton', 'Morton', 'Student');
INSERT INTO PATRON VALUES (1221, 'Gloria', 'Pitts', 'Student');
INSERT INTO PATRON VALUES (1222, 'Zach', 'Kelly', 'Student');
INSERT INTO PATRON VALUES (1223, 'Jose', 'Hays', 'Student');
INSERT INTO PATRON VALUES (1224, 'Jewel', 'England', 'Student');
INSERT INTO PATRON VALUES (1225, 'Wilfred', 'Fuller', 'Student');
INSERT INTO PATRON VALUES (1226, 'Jeff', 'Owens', 'Student');
INSERT INTO PATRON VALUES (1227, 'Alicia', 'Dickson', 'Student');
INSERT INTO PATRON VALUES (1228, 'Homer', 'Goodman', 'Student');
INSERT INTO PATRON VALUES (1229, 'Gerald', 'Burke', 'Student');
INSERT INTO PATRON VALUES (1237, 'Brandi', 'Larson', 'Student');
INSERT INTO PATRON VALUES (1238, 'Erika', 'Bowen', 'Student');
INSERT INTO PATRON VALUES (1239, 'Elton', 'Irwin', 'Student');
INSERT INTO PATRON VALUES (1240, 'Jan', 'Joyce', 'Student');
INSERT INTO PATRON VALUES (1241, 'Irene', 'West', 'Student');
INSERT INTO PATRON VALUES (1242, 'Mario', 'King', 'Student');
INSERT INTO PATRON VALUES (1243, 'Roberto', 'Kennedy', 'Student');
INSERT INTO PATRON VALUES (1244, 'Leon', 'Richmond', 'Student');

-- BOOK rows

INSERT INTO BOOK VALUES (5235, 'Beginner''s Guide to JAVA', 2014, 59.95, 'Programming', NULL);
INSERT INTO BOOK VALUES (5236, 'Database in the Cloud', 2014, 79.95, 'Cloud', NULL);
INSERT INTO BOOK VALUES (5237, 'Mastering the database environment', 2015, 89.95, 'Database', NULL);
INSERT INTO BOOK VALUES (5238, 'Conceptual Programming', 2015, 59.95, 'Programming', 1229);
INSERT INTO BOOK VALUES (5239, 'J++ in Mobile Apps', 2015, 49.95, 'Programming', NULL);
INSERT INTO BOOK VALUES (5240, 'iOS Programming', 2015, 79.95, 'Programming', 1212);
INSERT INTO BOOK VALUES (5241, 'JAVA First Steps', 2015, 49.95, 'Programming', NULL);
INSERT INTO BOOK VALUES (5242, 'C# in Middleware Deployment', 2015, 59.95, 'Middleware', 1228);
INSERT INTO BOOK VALUES (5243, 'DATABASES in Theory', 2015, 129.95, 'Database', NULL);
INSERT INTO BOOK VALUES (5244, 'Cloud-based Mobile Applications', 2015, 69.95, 'Cloud', NULL);
INSERT INTO BOOK VALUES (5245, 'The Golden Road to Platform independence', 2016, 119.95, 'Middleware', NULL);
INSERT INTO BOOK VALUES (5246, 'Capture the Cloud', 2016, 69.95, 'Cloud', 1172);
INSERT INTO BOOK VALUES (5247, 'Shining Through the Cloud: Sun Programming', 2016, 109.95, 'Programming', NULL);
INSERT INTO BOOK VALUES (5248, 'What You Always Wanted to Know About Database, But Were Afraid to Ask', 2016, 49.95, 'Database', NULL);
INSERT INTO BOOK VALUES (5249, 'Starlight Applications', 2016, 69.95, 'Cloud', 1207);
INSERT INTO BOOK VALUES (5250, 'Reengineering the Middle Tier', 2016, 89.95, 'Middleware', NULL);
INSERT INTO BOOK VALUES (5251, 'Thoughts on Revitalizing Ruby', 2016, 59.95, 'Programming', NULL);
INSERT INTO BOOK VALUES (5252, 'Beyond the Database Veil', 2016, 69.95, 'Database', 1229);
INSERT INTO BOOK VALUES (5253, 'Virtual Programming for Virtual Environments', 2016, 79.95, 'Programming', NULL);
INSERT INTO BOOK VALUES (5254, 'Coding Style for Maintenance', 2017, 49.95, 'Programming', NULL);

-- CHECKOUT rows

INSERT INTO CHECKOUT VALUES (91001, 5235, 1165, '2017-03-31', '2017-04-14', '2017-04-09');
INSERT INTO CHECKOUT VALUES (91002, 5238, 1209, '2017-03-31', '2017-04-07', '2017-04-05');
INSERT INTO CHECKOUT VALUES (91003, 5240, 1160, '2017-03-31', '2017-04-14', '2017-04-09');
INSERT INTO CHECKOUT VALUES (91004, 5237, 1160, '2017-03-31', '2017-04-14', '2017-04-03');
INSERT INTO CHECKOUT VALUES (91005, 5236, 1202, '2017-03-31', '2017-04-07', '2017-04-08');
INSERT INTO CHECKOUT VALUES (91006, 5235, 1203, '2017-04-05', '2017-04-12', '2017-04-13');
INSERT INTO CHECKOUT VALUES (91007, 5244, 1174, '2017-04-05', '2017-04-12', '2017-04-08');
INSERT INTO CHECKOUT VALUES (91008, 5248, 1181, '2017-04-05', '2017-04-12', '2017-04-06');
INSERT INTO CHECKOUT VALUES (91009, 5242, 1170, '2017-04-05', '2017-04-19', '2017-04-09');
INSERT INTO CHECKOUT VALUES (91010, 5235, 1161, '2017-04-05', '2017-04-19', '2017-04-05');
INSERT INTO CHECKOUT VALUES (91011, 5236, 1181, '2017-04-05', '2017-04-12', '2017-04-11');
INSERT INTO CHECKOUT VALUES (91012, 5249, 1181, '2017-04-08', '2017-04-15', '2017-04-12');
INSERT INTO CHECKOUT VALUES (91013, 5240, 1160, '2017-04-10', '2017-04-24', '2017-04-19');
INSERT INTO CHECKOUT VALUES (91014, 5236, 1204, '2017-04-11', '2017-04-18', '2017-04-19');
INSERT INTO CHECKOUT VALUES (91015, 5237, 1204, '2017-04-11', '2017-04-18', '2017-04-13');
INSERT INTO CHECKOUT VALUES (91016, 5236, 1183, '2017-04-13', '2017-04-27', '2017-04-14');
INSERT INTO CHECKOUT VALUES (91017, 5240, 1184, '2017-04-14', '2017-04-21', '2017-04-22');
INSERT INTO CHECKOUT VALUES (91018, 5236, 1170, '2017-04-14', '2017-04-28', '2017-04-14');
INSERT INTO CHECKOUT VALUES (91019, 5246, 1171, '2017-04-14', '2017-04-21', '2017-04-17');
INSERT INTO CHECKOUT VALUES (91020, 5254, 1185, '2017-04-16', '2017-04-23', '2017-04-23');
INSERT INTO CHECKOUT VALUES (91021, 5238, 1185, '2017-04-16', '2017-04-23', '2017-04-21');
INSERT INTO CHECKOUT VALUES (91022, 5252, 1171, '2017-04-16', '2017-04-23', '2017-04-19');
INSERT INTO CHECKOUT VALUES (91023, 5249, 1207, '2017-04-16', '2017-04-23', '2017-04-19');
INSERT INTO CHECKOUT VALUES (91024, 5235, 1209, '2017-04-21', '2017-04-28', '2017-04-29');
INSERT INTO CHECKOUT VALUES (91025, 5246, 1172, '2017-04-21', '2017-04-28', '2017-04-27');
INSERT INTO CHECKOUT VALUES (91026, 5254, 1161, '2017-04-21', '2017-05-04', '2017-04-26');
INSERT INTO CHECKOUT VALUES (91027, 5243, 1161, '2017-04-21', '2017-05-04', '2017-04-26');
INSERT INTO CHECKOUT VALUES (91028, 5236, 1183, '2017-04-22', '2017-05-05', '2017-04-30');
INSERT INTO CHECKOUT VALUES (91029, 5244, 1203, '2017-04-22', '2017-04-29', '2017-04-26');
INSERT INTO CHECKOUT VALUES (91030, 5242, 1207, '2017-04-22', '2017-04-29', '2017-04-30');
INSERT INTO CHECKOUT VALUES (91031, 5252, 1165, '2017-04-23', '2017-05-06', '2017-04-30');
INSERT INTO CHECKOUT VALUES (91032, 5238, 1172, '2017-04-23', '2017-04-30', '2017-04-26');
INSERT INTO CHECKOUT VALUES (91033, 5235, 1174, '2017-04-23', '2017-04-30', '2017-04-23');
INSERT INTO CHECKOUT VALUES (91034, 5240, 1185, '2017-04-23', '2017-04-30', '2017-05-01');
INSERT INTO CHECKOUT VALUES (91035, 5248, 1165, '2017-04-24', '2017-05-07', '2017-04-25');
INSERT INTO CHECKOUT VALUES (91036, 5237, 1202, '2017-04-24', '2017-04-30', '2017-04-28');
INSERT INTO CHECKOUT VALUES (91037, 5235, 1210, '2017-04-28', '2017-05-04', '2017-05-01');
INSERT INTO CHECKOUT VALUES (91038, 5238, 1215, '2017-04-28', '2017-05-04', '2017-04-30');
INSERT INTO CHECKOUT VALUES (91039, 5240, 1222, '2017-04-28', '2017-05-04', '2017-05-06');
INSERT INTO CHECKOUT VALUES (91040, 5237, 1228, '2017-04-28', '2017-05-04', '2017-05-05');
INSERT INTO CHECKOUT VALUES (91041, 5236, 1211, '2017-04-28', '2017-05-04', '2017-04-30');
INSERT INTO CHECKOUT VALUES (91042, 5235, 1220, '2017-04-29', '2017-05-05', '2017-05-05');
INSERT INTO CHECKOUT VALUES (91043, 5244, 1226, '2017-04-29', '2017-05-05', '2017-05-07');
INSERT INTO CHECKOUT VALUES (91044, 5248, 1219, '2017-04-30', '2017-05-07', '2017-05-08');
INSERT INTO CHECKOUT VALUES (91045, 5242, 1210, '2017-04-30', '2017-05-07', '2017-05-04');
INSERT INTO CHECKOUT VALUES (91046, 5235, 1225, '2017-04-30', '2017-05-07', '2017-05-03');
INSERT INTO CHECKOUT VALUES (91047, 5236, 1218, '2017-04-30', '2017-05-07', '2017-05-07');
INSERT INTO CHECKOUT VALUES (91048, 5249, 1229, '2017-05-04', '2017-05-11', '2017-05-06');
INSERT INTO CHECKOUT VALUES (91049, 5240, 1214, '2017-05-04', '2017-05-11', '2017-05-04');
INSERT INTO CHECKOUT VALUES (91050, 5236, 1220, '2017-05-08', '2017-05-15', '2017-05-13');
INSERT INTO CHECKOUT VALUES (91051, 5237, 1222, '2017-05-08', '2017-05-15', '2017-05-15');
INSERT INTO CHECKOUT VALUES (91052, 5236, 1213, '2017-05-08', '2017-05-15', '2017-05-08');
INSERT INTO CHECKOUT VALUES (91053, 5240, 1212, '2017-05-09', '2017-05-16', NULL);
INSERT INTO CHECKOUT VALUES (91054, 5236, 1221, '2017-05-09', '2017-05-16', '2017-05-11');
INSERT INTO CHECKOUT VALUES (91055, 5246, 1221, '2017-05-09', '2017-05-16', '2017-05-10');
INSERT INTO CHECKOUT VALUES (91056, 5254, 1224, '2017-05-10', '2017-05-17', '2017-05-15');
INSERT INTO CHECKOUT VALUES (91057, 5238, 1224, '2017-05-10', '2017-05-17', '2017-05-11');
INSERT INTO CHECKOUT VALUES (91058, 5252, 1171, '2017-05-10', '2017-05-17', '2017-05-15');
INSERT INTO CHECKOUT VALUES (91059, 5249, 1207, '2017-05-10', '2017-05-17', NULL);
INSERT INTO CHECKOUT VALUES (91060, 5235, 1209, '2017-05-15', '2017-05-22', '2017-05-18');
INSERT INTO CHECKOUT VALUES (91061, 5246, 1172, '2017-05-15', '2017-05-22', NULL);
INSERT INTO CHECKOUT VALUES (91062, 5254, 1223, '2017-05-15', '2017-05-22', '2017-05-16');
INSERT INTO CHECKOUT VALUES (91063, 5243, 1223, '2017-05-15', '2017-05-22', '2017-05-20');
INSERT INTO CHECKOUT VALUES (91064, 5236, 1183, '2017-05-17', '2017-05-31', '2017-05-21');
INSERT INTO CHECKOUT VALUES (91065, 5244, 1210, '2017-05-17', '2017-05-24', '2017-05-17');
INSERT INTO CHECKOUT VALUES (91066, 5242, 1228, '2017-05-19', '2017-05-26', NULL);
INSERT INTO CHECKOUT VALUES (91067, 5252, 1229, '2017-05-24', '2017-05-31', NULL);
INSERT INTO CHECKOUT VALUES (91068, 5238, 1229, '2017-05-24', '2017-05-31', NULL);

-- WRITES rows

INSERT INTO WRITES VALUES (5235, 273);
INSERT INTO WRITES VALUES (5236, 383);
INSERT INTO WRITES VALUES (5237, 185);
INSERT INTO WRITES VALUES (5238, 603);
INSERT INTO WRITES VALUES (5239, 229);
INSERT INTO WRITES VALUES (5239, 460);
INSERT INTO WRITES VALUES (5239, 592);
INSERT INTO WRITES VALUES (5240, 218);
INSERT INTO WRITES VALUES (5241, 460);
INSERT INTO WRITES VALUES (5241, 559);
INSERT INTO WRITES VALUES (5242, 581);
INSERT INTO WRITES VALUES (5243, 251);
INSERT INTO WRITES VALUES (5244, 262);
INSERT INTO WRITES VALUES (5244, 284);
INSERT INTO WRITES VALUES (5245, 394);
INSERT INTO WRITES VALUES (5246, 251);
INSERT INTO WRITES VALUES (5247, 394);
INSERT INTO WRITES VALUES (5248, 229);
INSERT INTO WRITES VALUES (5249, 262);
INSERT INTO WRITES VALUES (5250, 383);
INSERT INTO WRITES VALUES (5250, 438);
INSERT INTO WRITES VALUES (5251, 460);
INSERT INTO WRITES VALUES (5252, 262);
INSERT INTO WRITES VALUES (5253, 185);
INSERT INTO WRITES VALUES (5254, 559);


/* Context: The CIS Department at Tiny College maintains the Free Access to Current Technology (FACT) library of e-books. FACT is a collection of current technology e-books for use by 
faculty and students. Agreements with the publishers allow patrons to electronically check out a book, which gives them exclusive access to the book online through the FACT 
website, but only one patron at a time can have access to a book. A book must have at least one author but can have many. An author must have written at least one book to be 
included in the system but may have written many. A book may have never been checked out but can be checked out many times by the same patron or different patrons over time. 
Because all faculty and staff in the department are given accounts at the online library, a patron may have never checked out a book or they may have checked out many books 
over time. To simplify determining which patron currently has a given book checked out, a redundant relationship between BOOK and PATRON is maintained. */

/* now run the below segments one by one */

-- Understanding the dataset
SELECT * FROM author LIMIT 10;
SELECT * FROM book LIMIT 10;
SELECT * FROM checkout LIMIT 10;
SELECT * FROM patron LIMIT 10;
SELECT * FROM writes LIMIT 10;

-- Counting the rows
SELECT COUNT(*) AS TotalAuthors
	FROM author;
SELECT COUNT(*) AS TotalBooks
	FROM BOOK;
SELECT COUNT(*) AS TotalCheckouts
	FROM CHECKOUT;
SELECT COUNT(*) AS TotalPatrons
	FROM PATRON;
SELECT COUNT(*) AS TotalWrites
	FROM WRITES;

-- Write a query that displays the first and last name of every patron, sorted by last name and then first name. Ensure the sort is case insensitive (50 rows)
SELECT PAT_FNAME, PAT_LNAME
	FROM PATRON
		order by PAT_LNAME, PAT_FNAME;

-- Write a query to display the book number, book title, and subject for every book sorted by book number (20 rows)
SELECT BOOK_NUM, BOOK_TITLE, BOOK_SUBJECT
	FROM BOOK
		ORDER BY BOOK_NUM;

-- Write a query to display the different subjects on which FACT has books. Include each subject only once and sort the results by subject 
SELECT DISTINCT BOOK_SUBJECT
	FROM BOOK
		ORDER BY BOOK_SUBJECT;

-- Write a query to display the checkout number, book number, patron ID, checkout date, and due date for every checkout that has ever occurred in the system. Sort the results by checkout date in descending order and then by checkout number in ascending order (68 rows)
SELECT CHECK_NUM, BOOK_NUM, PAT_ID, CHECK_OUT_DATE, CHECK_DUE_DATE
	FROM CHECKOUT
		ORDER BY CHECK_OUT_DATE DESC, CHECK_NUM ASC;

-- Write a query to display the book number, title, and cost for all books that cost $59.95 sorted by book number 
SELECT BOOK_NUM, BOOK_TITLE, BOOK_COST
	FROM BOOK
		WHERE BOOK_COST=59.95
			ORDER BY BOOK_NUM;

-- Write a query to display the checkout number, book number, and checkout date of all books checked out before April 5, 2017 sorted by checkout number 
SELECT CHECK_NUM, BOOK_NUM, CHECK_OUT_DATE
	FROM CHECKOUT
		WHERE CHECK_OUT_DATE<'2017-04-05'
			ORDER BY CHECK_NUM;

-- Write a query to display the book number, title, subject, and cost for all books that are on the subjects of "Middleware" or "Cloud," and that cost more than $70 sorted by book number 
SELECT BOOK_NUM, BOOK_TITLE, BOOK_SUBJECT, BOOK_COST
	FROM BOOK
		WHERE BOOK_SUBJECT IN ('MIDDLEWARE','CLOUD') AND BOOK_COST>70
			ORDER BY BOOK_NUM;

-- Write a query to display the book number, title, and subject for all books that contain the word "Database" in the title, regardless of how it is capitalized. Sort the results by book number 
SELECT BOOK_NUM, BOOK_TITLE, BOOK_SUBJECT
	FROM BOOK
		WHERE LOWER(BOOK_TITLE) LIKE '%database%'
			ORDER BY BOOK_NUM;

-- Write a query to display the patron ID, first and last name, and patron type for all patrons whose last name begins with the letter "C" sorted by patron ID 
SELECT PAT_ID, PAT_FNAME, PAT_LNAME, PAT_TYPE
	FROM PATRON
		WHERE PAT_LNAME LIKE 'C%'
			ORDER BY PAT_ID;

-- Write a query to display the author ID, first and last name of all authors whose year of birth is known. Ensure the results are sorted by author ID 
SELECT AU_ID, AU_FNAME, AU_LNAME
	FROM AUTHOR
		WHERE AU_BIRTHYEAR IS NOT NULL
			ORDER BY AU_ID;


-- INCLUDE AUTHOR NAME AND AUTHOR ID WITH THE BOOK TABLE
SELECT BOOK.*, CONCAT(AU_FNAME, ' ', AU_LNAME) AS AUTHOR_NAME, AUTHOR.AU_ID
	FROM BOOK
     JOIN WRITES ON WRITES.BOOK_NUM=BOOK.BOOK_NUM
     JOIN AUTHOR ON AUTHOR.AU_ID=WRITES.AU_ID;

-- SAME AS PREVIOUS, EXCEPT AUTHOR ID AND AUTHOR NAME RIGHT NEXT TO BOOK TITLE
SELECT
    B.BOOK_NUM,
    B.BOOK_TITLE,
    CONCAT(A.AU_FNAME, ' ', A.AU_LNAME) AS author_name,
    W.AU_ID AS author_id,
    B.BOOK_YEAR,
    B.BOOK_COST,
    B.BOOK_SUBJECT,
    B.PAT_ID
FROM
    BOOK AS B
    JOIN WRITES AS W ON B.BOOK_NUM = W.BOOK_NUM
    JOIN AUTHOR AS A ON W.AU_ID = A.AU_ID;

-- CREATE A SEPARATE TABLE IN THE DATABASE WITH TOTAL OF BOOK TABLE AND AUTHOR NAME AND AUTHOR ID
CREATE TABLE BOOK_DETAILS_WITH_AUTHOR_NAME
SELECT
    B.BOOK_NUM,
    B.BOOK_TITLE,
    CONCAT(A.AU_FNAME, ' ', A.AU_LNAME) AS author_name,
    W.AU_ID AS author_id,
    B.BOOK_YEAR,
    B.BOOK_COST,
    B.BOOK_SUBJECT,
    B.PAT_ID
FROM
    BOOK AS B
    JOIN WRITES AS W ON B.BOOK_NUM = W.BOOK_NUM
    JOIN AUTHOR AS A ON W.AU_ID = A.AU_ID;

-- Changing the name of the new table
ALTER TABLE BOOK_DETAILS_WITH_AUTHOR_NAME
	RENAME TO BookInfo_With_Auth_Info;



-- Retrieving Patron Names from patron table to find out patrons for different book subjects in book table
SELECT BOOK_SUBJECT, GROUP_CONCAT(PAT_FNAME, ' ', PAT_LNAME SEPARATOR ', ') AS PAT_NAME
	FROM BOOK
	JOIN PATRON ON PATRON.PAT_ID=BOOK.PAT_ID
        GROUP BY BOOK_SUBJECT;

-- Retrieving Patron Names from patron table to find out patrons for different books(titles) in book table
SELECT BOOK_TITLE, CONCAT(PAT_FNAME, ' ', PAT_LNAME) AS PAT_NAME
	FROM BOOK
	JOIN PATRON ON PATRON.PAT_ID=BOOK.PAT_ID
		ORDER BY PAT_NAME;
-- A lot of null and missing value in pat_id in book table

-- FIND THE RANGE OF DATES IN CHECKOUT TABLE
	SELECT 'Checkout Date' AS Date_Type, MAX(Check_out_Date) AS Max_Date, MIN(Check_out_Date) AS Min_Date
		FROM CHECKOUT
UNION ALL
	SELECT 'Due Date', MAX(CHECK_Due_Date), MIN(CHECK_Due_Date)
		FROM CHECKOUT
UNION ALL
	SELECT 'Return Date', MAX(CHECK_IN_Date), MIN(CHECK_IN_Date)
		FROM CHECKOUT;
-- DATE RANGES FROM MARCH 31,2017 TO MAY 31,2017 IN CECKOUT TABLE

-- BOOKS THAT WASN'T CHECKED OUT OUT BY ANYONE IN THESE TWO MONTHS
SELECT BOOK.BOOK_NUM, BOOK_TITLE
	FROM BOOK
	LEFT JOIN CHECKOUT ON BOOK.BOOK_NUM = CHECKOUT.BOOK_NUM
		WHERE CHECKOUT.BOOK_NUM IS NULL;
-- THESE ARE THE BOOKS 5239, 5241, 5245, 5247, 5250, 5251, 5253 THAT WASN'T CHECKED OUT IN THESE TWO MONTHS

-- NUMBER OF DISTINCT BOOKS THAT WERE CHECKED OUT
SELECT COUNT(DISTINCT BOOK.BOOK_NUM) AS NUM_DSTNCT_BOOK_CHKOUTS
	FROM BOOK
	LEFT JOIN CHECKOUT ON BOOK.BOOK_NUM = CHECKOUT.BOOK_NUM
		WHERE CHECKOUT.BOOK_NUM IS NOT NULL;


-- In the book table there are a lot of missing data in PAT_ID column, attempt to fill-in the data best way possible.
SELECT BOOK.BOOK_NUM, BOOK_TITLE, BOOK_YEAR, BOOK_COST, BOOK_SUBJECT, CHECKOUT.PAT_ID AS NEW_PAT_ID, CONCAT(PAT_FNAME, ' ', PAT_LNAME) AS PAT_NAME
	FROM BOOK
    LEFT JOIN CHECKOUT ON CHECKOUT.BOOK_NUM=BOOK.BOOK_NUM
    LEFT JOIN PATRON ON PATRON.PAT_ID=CHECKOUT.PAT_ID;
-- Now the only null values that exist in the new_pat_id and pat_name columns are with regards to the books that haven't been checcked out ever in those two months.
