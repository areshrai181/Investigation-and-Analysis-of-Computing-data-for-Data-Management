# Foundation of Computer Science Coursework

This repository contains all practical work, scripts, diagrams, and supporting materials for the **Foundation of Computer Science coursework**. The project is divided into three major tasks that explore theoretical concepts, algorithms, and database design.

The repository includes documentation, SQL scripts, diagrams, and supporting materials used to complete the coursework.

---

# Repository Structure

The repository contains the following files:

- **Task1-Foundation of Computer Science** – Explanation and analysis of the P vs NP problem using a classroom seating arrangement scenario.
- **Task2-Foundation of Computer Science** – Description of brute force and heuristic approaches for solving the seating arrangement problem.
- **Task3-Foundation of Computer Science** – Database normalization, ER diagram design, and SQL operations for college club membership management.
- **cw1stsem.sql** – SQL schema and queries related to the normalized database.
- **cw1stsemster.sql** – Additional SQL scripts for table creation and testing queries.
- **Screenshots / diagrams** – Visual representations used in the coursework.

---

# Task 1 – P vs NP Problem

Task 1 explains the difference between **P problems and NP problems** using a classroom seating arrangement scenario.

The teacher must arrange students in a single row of seats while following two rules:

1. Friends should not sit next to each other.
2. Students from the same city should not sit next to each other.

The task explains:

- What P and NP problems are
- Why verifying a seating arrangement is easy
- Why finding the correct seating arrangement is computationally difficult

This section demonstrates how real-world problems can relate to computational complexity concepts.

---

# Task 2 – Brute Force and Heuristic Approaches

Task 2 focuses on different methods that could be used to solve the seating arrangement problem.

### Brute Force Approach

The brute force approach checks **every possible seating arrangement** until a valid arrangement is found.

While this works for small numbers of students, it becomes extremely slow when the number of students increases because the number of possible arrangements grows factorially.

### Heuristic (Smart) Approach

Instead of checking all possibilities, a heuristic strategy is used to reduce the search time.

Examples include:

- Seating students with many friends first
- Separating students from the same city early

Heuristics reduce computation time but may not always produce the perfect solution.

---

# Task 3 – Database Design and Normalization

Task 3 focuses on **database design and normalization** using a college club membership system.

Initially, all student and club information was stored in a **single table**, which caused problems such as:

- Data redundancy
- Update anomalies
- Insert anomalies
- Deletion anomalies

To solve these issues, the database was normalized into three tables:

### Student Table
Stores student information.

Attributes:
- StudentID (Primary Key)
- StudentName
- Email

### Club Table
Stores club information.

Attributes:
- ClubID (Primary Key)
- ClubName
- ClubRoom
- ClubMentor

### Membership Table
Connects students with clubs.

Attributes:
- StudentID (Foreign Key)
- ClubID (Foreign Key)
- JoinDate

This structure removes redundancy and improves data integrity.

---

# ER Diagram

An Entity Relationship (ER) diagram was created to represent the relationships between the entities.

Relationships include:

- One student can join many clubs.
- One club can have many students.

The **Membership table** acts as a bridge between Student and Club tables.

---

# SQL Implementation

SQL scripts in this repository create the normalized database structure and demonstrate basic operations.

The scripts include:

- Table creation
- Data insertion
- Basic SELECT queries
- JOIN queries between tables

Example operations include:

- Displaying all students
- Displaying all clubs
- Showing which students joined which clubs

---

# Technologies Used

- SQL
- MySQL / MariaDB
- Database normalization techniques
- ER diagram modeling

---

# Purpose of the Repository

This repository demonstrates understanding of:

- Computational complexity (P vs NP)
- Algorithmic problem solving
- Database normalization
- SQL database implementation
- Data modeling using ER diagrams

The repository serves as supporting material for the coursework report.

---

# Author

Aresh Rai
