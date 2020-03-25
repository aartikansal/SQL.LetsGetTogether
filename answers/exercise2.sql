USE myNewDB;
select * from Enrolment
LEFT JOIN Students
ON Enrolment.StudentID = Students.StudentID;
