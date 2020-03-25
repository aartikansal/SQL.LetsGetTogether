use myNEWDB;


USE myNewDB;
CREATE TABLE Students(
    StudentID   INT PRIMARY KEY,
    StudentName VARCHAR(255),
    Address     VARCHAR(255),
    City        VARCHAR(255),
    PostalCode  VARCHAR(255),
    Country     VARCHAR(255)
);

INSERT INTO Students( StudentID,StudentName, Address, City, PostalCode, Country)
VALUES (1,'JaneDoe','57 Unoin St','Glasgow','G13RB','Scotland' );

INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (2,'Eva','140 river valley','Oaks','19466','USA' );

INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (3,'Om','57 Unoin St','Philadelphia','19456','USA' );

INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (4,'Olla','67 Minoin St','Paris','19466','FRANCE' );
INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (5,'Ava','50 James St','Phila','19476','Angola' );
INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (6,'Connie','87 Evans St','Dominic','19446','Uganda' );
INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (7,'Rashi','57 Akbar St','Delhi ','19456','India' );
INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (8,'Yash','51 Nehru St','Mumbai','60000','India' );
INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (9,'Tahi','98 Tahaya St','Philadelphia','19456','USA' );
INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (10,'Nanu','76 Bensalem St','Philadelphia','19456','USA' );
INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (11,'Harrison','20 Biddle St','Philadelphia','19456','USA' );
INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (12,'Dalton','22 Middlelane St','Philadelphia','19456','USA' );
INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (13,'Jiya','33 Gandhi St','Mumbai','190009','India' ;


SELECT * FROM Students;

CREATE TABLE Enrolment(
    EnrolmentID int primary key ,
    StudentID int,
    Department VARCHAR(255),
    CourseName    VARCHAR(255),
    CONSTRAINT FK_StudentEnrolment FOREIGN KEY (StudentID)
    REFERENCES Students(StudentID)
);

INSERT INTO Enrolment( EnrolmentID,StudentID, Department, CourseName)
VALUES (1,1,'English','Literature' );

INSERT INTO Enrolment( EnrolmentID,StudentID, Department, CourseName)
VALUES (2,2,'Physics','AstroPhysics' );

INSERT INTO Enrolment( EnrolmentID,StudentID, Department, CourseName)
VALUES (3,1,'Maths','Algebra' );

select * from Enrolment
LEFT JOIN Students
ON Enrolment.StudentID = Students.StudentID;
