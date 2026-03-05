-- ============================================
-- COLLEGE CLUB MEMBERSHIP MANAGEMENT DATABASE
-- ============================================

CREATE DATABASE IF NOT EXISTS CollegeClubs;
USE CollegeClubs;

-- Table 1: Student
CREATE TABLE Student (
    StudentID   INT          NOT NULL AUTO_INCREMENT,
    StudentName VARCHAR(100) NOT NULL,
    Email       VARCHAR(150) NOT NULL UNIQUE,
    PRIMARY KEY (StudentID)
);

-- Table 2: Club
CREATE TABLE Club (
    ClubID     VARCHAR(5)   NOT NULL,
    ClubName   VARCHAR(100) NOT NULL,
    ClubRoom   VARCHAR(50),
    ClubMentor VARCHAR(100),
    PRIMARY KEY (ClubID)
);

-- Table 3: Membership (junction table)
CREATE TABLE Membership (
    MembershipID INT        NOT NULL AUTO_INCREMENT,
    StudentID    INT        NOT NULL,
    ClubID       VARCHAR(5) NOT NULL,
    JoinDate     DATE       NOT NULL,
    PRIMARY KEY (MembershipID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ClubID)    REFERENCES Club(ClubID)
        ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE Student (
    StudentID   INT          PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Email       VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE Club (
    ClubID     VARCHAR(5)   PRIMARY KEY,
    ClubName   VARCHAR(100) NOT NULL,
    ClubRoom   VARCHAR(50),
    ClubMentor VARCHAR(100)
);

CREATE TABLE Membership (
    MembershipID INT        PRIMARY KEY AUTO_INCREMENT,
    StudentID    INT        NOT NULL,
    ClubID       VARCHAR(5) NOT NULL,
    JoinDate     DATE       NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ClubID)    REFERENCES Club(ClubID)
);