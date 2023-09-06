create database P2_MVCData

use P2_MVCData

create table Student
(StudentId int primary key,
StudentName nvarchar(50) not null,
DOB date
)

create table Subjects
(SubjectId int primary key,
SubjectName nvarchar(50) not null
)

create table Class
(ClassId int primary key,
ClassTeacher nvarchar(50) not null,
SubjectId int
Constraint fk_SubjectId foreign key(SubjectId) references Subjects(SubjectId)
)

insert into Student values(101, 'Vivek Kar','02/02/2001')
insert into Student values(102, 'Sumit Kumar','06/08/2004')

insert into Subjects values(103,'Computer')
insert into Subjects values(104,'English')

insert into Class values(144,'Pradeep Sarkar',103)
insert into Class values(123,'Sandipan Sen',104)

select * from Student

select * from Subjects

select * from Class