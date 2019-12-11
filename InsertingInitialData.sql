﻿CREATE TABLE Cohort (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    Name VARCHAR(55) NOT NULL,
);

CREATE TABLE Exercise (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    Name VARCHAR(55) NOT NULL,
    Language VARCHAR(55) NOT NULL,
);

CREATE TABLE Student (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    FirstName VARCHAR(55) NOT NULL,
    LastName VARCHAR(55) NOT NULL,
    SlackHandle VARCHAR(55) NOT NULL,
    CohortId INTEGER NOT NULL,
    CohortName VARCHAR(55) NOT NULL,
    CONSTRAINT FK_Student_Cohort FOREIGN KEY (CohortId) REFERENCES Cohort(id)
);

CREATE TABLE Instructor (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    FirstName VARCHAR(55) NOT NULL,
    LastName VARCHAR(55) NOT NULL,
    SlackHandle VARCHAR(55) NOT NULL,
    CohortId INTEGER NOT NULL,
    Speciality VARCHAR(55) NOT NULL,
    CONSTRAINT FK_Instructor_Cohort FOREIGN KEY (CohortId) REFERENCES Cohort(Id)
);

CREATE TABLE StudentExercise (
   Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
   ExerciseId INTEGER NOT NULL,
   StudentId INTEGER NOT NULL,
   CONSTRAINT FK_StudentExercise_Exercise FOREIGN KEY (ExerciseId) REFERENCES Exercise(Id),
   CONSTRAINT FK_StudentExercise_Student FOREIGN KEY(StudentId) REFERENCES Student(id)
);

INSERT INTO Cohort (Name) VALUES ('Cohort 35');
INSERT INTO Cohort (Name) VALUES ('Cohort 36');
INSERT INTO Cohort (Name) VALUES ('Cohort 37');


INSERT INTO Exercise (Name, Language) VALUES ('Exercise One', 'HTML/CSS');
INSERT INTO Exercise (Name, Language) VALUES ('Exercise Two', 'JavaScript');
INSERT INTO Exercise (Name, Language) VALUES ('Exercise Three', 'React');
INSERT INTO Exercise (Name, Language) VALUES ('Exercise Four', 'C#');


INSERT INTO Student (FirstName, LastName, SlackHandle, CohortName) VALUES ('Seth', 'Oakley', 'Oaksee', 'Cohort 35');
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortName) VALUES ('Nate', 'Vogel', 'NaterDawg69', 'Cohort 35');
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortName) VALUES ('Phil', 'Griswald', 'GrizzyWithIt', 'Cohort 35');
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortName) VALUES ('Stephen', 'Swift', 'StevyWeavy', 'Cohort 36');
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortName) VALUES ('Adam', 'Sandler', 'DontcopyThatFloppy', 'Cohort 36');
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortName) VALUES ('Bob', 'Sacramento', 'PennyPacker', 'Cohort 36');
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortName) VALUES ('PJ', 'Penny Packer', 'TheMan', 'Cohort 37');
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortName) VALUES ('Jerry', 'Seinfeld', 'comedian', 'Cohort 37');


INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Speciality) VALUES ('Brenda', 'Long', 'ArtyB', 1, 'JavaScript');
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Speciality) VALUES ('Adam', 'Sheaffer', 'AdamWestFan', 1, 'C#');
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Speciality) VALUES ('Maddy', 'Pepper', 'MaddyBatty', 1, '.Net');
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Speciality) VALUES ('John', 'Wick', 'TheOne', 1, 'KungFu');


INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (1, 1);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (2, 1);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (1, 2);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (2, 2);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (4, 3);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (3, 3);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (3, 4);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (4, 4);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (3, 5);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (4, 5);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (3, 6);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (2, 6);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (2, 7);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (3, 7);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (3, 8);
INSERT INTO StudentExercise (ExerciseId, StudentId) VALUES (4, 8);