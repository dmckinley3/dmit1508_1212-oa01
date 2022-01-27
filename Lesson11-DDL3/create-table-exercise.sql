-- Create all 5 tables with the appropriate primary and foreign keys. Include Check constraints and Defaults on the appropriate columns.

USE CreateTableExercise
GO

-- Drop tables

-- Create tables
CREATE TABLE Student(
	StudentID		INT IDENTITY(1,1)		NOT NULL
		CONSTRAINT PK_Student_StudentID PRIMARY KEY CLUSTERED,
	StudentFirstName	VARCHAR(40)			NOT NULL,
	StudentLastName		VARCHAR(40)			NOT NULL,
	GenderCode			CHAR(1)				NOT NULL
		CONSTRAINT CK_Student_GenderCode CHECK (GenderCode LIKE '[FM]'),
	Address				VARCHAR(30)			NULL,
	Birthdate			DATETIME			NULL,
	PostalCode			CHAR(6)				NULL
		CONSTRAINT CK_Student_PostalCode CHECK (PostalCode LIKE '[A-Z][0-9][A-Z][0-9][A-Z][0-9]'),
	AvgMark				DECIMAL(4,1)		NULL
		CONSTRAINT CK_Student_AvgMark CHECK (AvgMark BETWEEN 0 AND 100),
	NumberOfCourses		SMALLINT			NULL
		CONSTRAINT CK_Student_NumberOfCourses CHECK (NumberOfCourses >= 0)
		CONSTRAINT DF_Student_NUmberOfCourses DEFAULT 0
)

CREATE TABLE Course(
	CourseID		CHAR(6)					NOT NULL
		CONSTRAINT PK_Course_CourseID PRIMARY KEY CLUSTERED,
	CourseName			VARCHAR(40)			NOT NULL,
	Hours				SMALLINT			NULL
		CONSTRAINT CK_Course_Hours CHECK(Hours > 0),
	NumberOfStudents	SMALLINT			NULL
		CONSTRAINT CK_Course_NumberOfStudents CHECK	(NumberOfStudents >= 0)
)
