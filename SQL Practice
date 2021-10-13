/* CREATE TABLES & CONNECTION */
CREATE TABLE Department (
    DepartmentID VARCHAR(15) PRIMARY KEY,
    DepartmentName VARCHAR(15)
);
CREATE TABLE Class (
    ClassID VARCHAR(15) PRIMARY KEY,
    ClassName VARCHAR(50),
    DepartmentID VARCHAR(15),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);
CREATE TABLE Lecturer (
    LecturerID VARCHAR(15),
    LecturerName VARCHAR(50),
    Major VARCHAR(50),
    DepartmentID VARCHAR(15),
    PRIMARY KEY (LecturerID),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);
CREATE TABLE Subject (
    SubjectID VARCHAR(15),
    SubjectName VARCHAR(20),
    Duration INT (2),
    PRIMARY KEY (SubjectID)
);
CREATE TABLE Student (
    StudentID BIGINT (20),
    StudentName VARCHAR (50),
    Gender VARCHAR(5),
    DoB DATE,
    ClassID VARCHAR (15),
    PRIMARY KEY (StudentID),
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);
CREATE TABLE ExamScore (
    StudentID BIGINT (20),
    SubjectID VARCHAR(15),
    AttemptTime INT (2),
    ExamScore FLOAT (4) CHECK(ExamScore> 0 and ExamScore <= 10),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID)
);

/*INPUT VALUES*/
INSERT INTO Department(DepartmentID, DepartmentName) VALUES
('CBS', 'Cyber Security'),
('DA', 'Data Analytics'),
('SE', 'Software Engineer'),
('NM', 'Network and Media');

INSERT INTO Class(ClassID, ClassName, DepartmentID) VALUES
('25CCHT01', 'Network Management', 'NM'),
('25CCDH02', 'Data Analysis', 'DA'),
('25CCLM03', 'Software Development', 'SE'),
('25CCTU04', 'Forensic Science', 'CBS'),
('25CHTU05', 'Database Management', 'DA'),
('25CXHU06', 'UI/UX Insights', 'NM');

INSERT INTO Lecturer(LecturerID, LecturerName, Major, DepartmentID) VALUES
('ScottD', 'Daniel Scott', 'Information Technology', 'CBS'),
('AllenR', 'Rachel Allen', 'Information Technology', 'NM'),
('MorganJ', 'Janet Morgan', 'Information Technology', 'DA'),
('WrightB', 'Billy Wright', 'Information Technology', 'SE'),
('RiveraN', 'Nancy Rivera', 'Information Technology', 'DA');

INSERT INTO Subject(SubjectID, SubjectName, Duration) VALUES 
('DBS','Database System',30),
('NTW', 'Network Foundation',30),
('PYD', 'Python Development', 45),
('MLQ', 'Machine Learning Advanced', 45),
('PNT', 'Penetration Testing', 45);

INSERT INTO Student(StudentID, StudentName, Gender, DoB, ClassID) VALUES 
(91110010003, 'Amelia Nguyen', 'Female', 03-03-93, '25CCHT01'),
(91110010004, 'Louis Nguyen', 'Male', 08-03-93, '25CCTU04'),
(91110010005, 'Wanda Phillips',	'Male', 14-04-91, '25CCDH02'),
(93510010006, 'Diana Hill', 'Female',	27-07-93, '25CCLM03'),
(91110010007, 'Judy Rodriguez', 'Female', 07-03-93, '25CCHT01'),
(91110010008, 'Willie Miller', 'Male', 08-08-93, '25CCTU04'),
(91110010009, 'Christopher Williams',	'Male', 28-04-91, '25CCDH02'),
(93510010010, 'Dennis Roberts', 'Male',	27-02-93, '25CCLM03'),
(91110010011, 'Irene Walker', 'Female', 03-09-93, '25CCHT01'),
(91110010012, 'Ryan Clark', 'Male', 06-06-92, '25CCTU04'),
(91110010013, 'Phillip Henderson',	'Male', 01-04-91, '25CCDH02'),
(93510010014, 'Mildred Flores', 'Female',	27-07-93, '25CCLM03');

INSERT INTO ExamScore (StudentID, SubjectId, AttemptTime, ExamScore) VALUES
(91110010003, 'NTW', 1, 8),
(91110010004, 'PNT', 1, 9),
(91110010005, 'DBS', 2, 6),
(93510010006, 'PYD', 3, 10),
(91110010007, 'NTW', 1, 3.5),
(91110010008, 'PNT', 2, 9),
(91110010009, 'MLQ', 1, 6.5),
(93510010010, 'PYD', 3, 5.5),
(91110010011, 'NTW', 2, 9),
(91110010012, 'PNT', 1, 10),
(91110010013, 'MLQ', 1, 4),
(93510010014, 'PYD', 1, 7.5),
(91110010003, 'PYD', 1, 7.5),
(91110010004, 'MLQ', 1, 4.8),
(91110010005, 'PNT', 1, 10),
(93510010006, 'NTW', 2, 9),
(91110010007, 'PYD', 3, 5.5),
(91110010008, 'MLQ', 1, 6.5),
(91110010009, 'PNT', 2, 9),
(93510010010, 'NTW', 1, 7),
(91110010011,'PYD', 3, 10),
(91110010012, 'PYD', 1, 10),
(91110010013, 'PNT', 1, 6),
(93510010014, 'MLQ', 1, 7.5);

/* READ DATA FROM SINGLE TABLE ON DATABASE*/
/*Q1. Return information of lecturers from Data Analytics department. The data is sorted in ascendence according to lecturer ID. */
SELECT * FROM Lecturer
WHERE DepartmentID = 'DA'
ORDER BY LecturerID;

/*Q2. Return information of student Irene Walker, whose DOB is '03-09-93'. */
SELECT * FROM Student
WHERE StudentName = 'Irene Walker' and DoB = 03-09-90;

/*Q3. Return list of students, including student Id and subject ID, who has exam score in Penetrating System higher than 7 on the 1st attempt.*/
SELECT StudentID, SubjectID FROM ExamScore
WHERE SubjectID = "PNT"
AND AttemptTime = 1
AND ExamScore > 7;

/*Q4. Return list of students (with student id, subject id) who have exam scores between 7 and 9.*/
SELECT StudentID, SubjectID FROM ExamScore
WHERE ExamScore <= 9
AND ExamScore >=7;

/*Q5. Calculate average exam score by each students and returns student id and average score.*/
SELECT StudentID, AVG(ExamScore) FROM ExamScore
 GROUP BY StudentID;

/*Q6. Return student ID and average score of students whose average scores are at least 8.5*/
SELECT StudentID, AVG(ExamScore)
 FROM ExamScore
 GROUP BY StudentID
 HAVING AVG(ExamScore) >=8.5;

/*Q7. Returns the number of student who were born in March from class 25CCHT01 */
SELECT COUNT(StudentID)
 FROM Student
 WHERE Month(DoB) = 03
    AND ClassID = '25CCHT01';

/* READ DATA FROM MULTIPLE TABLES ON DATABASE */
/*Q1. Return list of student id, student name, class id, class name of students from class 25CCHT01. */
SELECT Student.StudentID, Student.StudentName, Student.ClassId, Class.Classname
FROM Student
INNER JOIN Class ON Student.ClassID = Class.ClassID;

/*Q2. Return class id and class name that don't have student. */
SELECT Class.ClassID, Class.ClassName
FROM Class LEFT JOIN Student 
ON Class.ClassID = Student.ClassID
WHERE StudentID IS NULL;

/*Q3. Returns student id, student name, subject id, subject name, and exam score of student id 911001003 on the first attempt */
SELECT ExamScore.StudentID, ExamScore.SubjectID, Subject.SubjectName, ExamScore.ExamScore, Student.StudentName
FROM ExamScore INNER JOIN Student
ON ExamScore.StudentID = Student.StudentID INNER JOIN Subject
ON ExamScore.SubjectID = Subject.SubjectID
WHERE Student.StudentID = 91110010003 AND ExamScore.AttemptTime = 1;

/*Q4. Returns subject id, subject name of those that have students take exam on 2nd attempt. Sort in ascending according to subject id*/
SELECT Subject.SubjectID, Subject.SubjectName
FROM Subject INNER JOIN ExamScore
ON Subject.SubjectID = ExamScore.SubjectID
WHERE ExamScore.AttemptTime = 2
ORDER BY SubjectID;

/*Q5. Returns top 5 student id and student name who has the highest average score*/
SELECT Student.StudentID, AVG(ExamScore)
FROM ExamScore INNER JOIN Student
ON ExamScore.StudentID = Student.StudentID
LIMIT 5;

/* CREATE VIEW */
/*Q1. Create view returning female students. */
CREATE VIEW V_FSTUDENTS
AS
SELECT * FROM Student
WHERE Student.Gender = 'Female';

/*Q2. Create view returning subjects that have more than 36 hours.*/
CREATE VIEW V_36HRS
AS
SELECT * FROM Subject
WHERE Subject.Duration >= 36;

/*Q3. Create view returning students who have exam score below 5 on 1st attemp.*/
CREATE VIEW V_BELOW5
as 
SELECT ExamScore.StudentID, Student.StudentName, Student.Gender, Student.DOb, 
Student.ClassID
FROM ExamScore INNER JOIN Student
ON ExamScore.StudentID = Student.StudentID
WHERE ExamScore.AttemptTime = 1 AND ExamScore.ExamScore < 5;

/* CREATE FUNCTION */

/*Q1. Create function returning the number of student in a class with class id as parameter*/
/* Scalar Function*/
USE StudentManagement
GO
CREATE FUNCTION Fn_CountStudent(@ClassID char(15))
RETURNS INT AS
BEGIN
	DECLARE @Cnt INT;
	SELECT @Cnt = COUNT(Student.ClassID)
	FROM Student
	WHERE Student.ClassID = @ClassID
	RETURNS @Cnt;
END
/* Call function */
GO
SELECT dbo.Fn_CountStudent('25CCHT01')

/*Q2. Create function returning student id, student name, class name, subject id, subject name, attempt time, exam score of each student */
/* Use Table-Valued Function*/
USE StudentManagement
GO
CREATE FUNCTION Fn_GetScore()
RETURNS TABLE RETURN
	SELECT Student.StudentID, Student.StudentName, Class.ClassName, Subject.SubjectID, Subject.SubjectName, ExamScore.ExamScore, ExamScore.AttemptTime
	FROM Student INNER JOIN Class ON Student.ClassId = Class.ClassID
	INNER JOIN ExamScore ON ExamScore.StudentID = Student.StudentID
	INNER JOIN Subject ON ExamScore.SubjectID = Subject.SubjectID

/* Call the function*/
GO
SELECT * FROM Fn_GetScore()

/*Q3.Create function returning department id, department name, and the number of lecturers in each department*/
USE StudentManagement
GO
CREATE FUNCTION Fn_GetLecturer()
RETURNS TABLE RETURN
	SELECT Department.DepartmentID, Department.Department.Name, COUNT(Lecturer.DepartmentID)
	FROM Department INNER JOIN Lecturer
	ON Department.DepartmentID = Lecturer.DepartmentID
	GROUP BY Department.DepartmentID, Department.DepartmentName

/* Call the function*/
GO
SELECT * FROM Fn_GetLecturer()

/*Q4. Create function returning student id, student name, gender, date of birth, class id, class name, subject id, subject name, attempt time, and exam score. The parameter is student id. */
USE StudentManagement
GO
CREATE FUNCTION Fn_GetStudent(@StudentID char(15))
RETURNS TABLE RETURN
	SELECT Student.StudentID, Student.StudentName, Student.Gender, Student.Dateofbirth, Class.ClassID, Class.ClassName, Subject.SubjectID, Subject.SubjectName, ExamScore.ExamScore, ExamScore.AttempTime
	FROM Student INNER JOIN Class
	ON Student.ClassID = Class.ClassID
	INNER JOIN ExamScore 
	ON Student.StudentID = ExamScore.StudentID
	INNER JOIN Subject
	ON ExamScore.SubjectID = Subject.SubjectID
WHERE Student.StudentID = @StudentID

/* Call function */
GO
SELECT * FROM Fn_GetStudent('91110010003')
