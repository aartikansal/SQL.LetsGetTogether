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
VALUES (2,'Eva','140 river valley','Oaks','19456','USA' );

INSERT INTO Students( StudentID, StudentName, Address, City, PostalCode, Country)
VALUES (3,'Om','57 Unoin St','Philadelphia','19456','USA' );

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

select * from Enrolment;