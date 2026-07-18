# Joins-test

A hands-on SQL practice repository for mastering **JOIN** operations — `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL JOIN` — using a simple college database with students, courses, and enrollments.

## 📋 Overview

This repository contains a 50-question SQL assignment covering all major join types. Each join type has its own `.sql` file with numbered questions (as comments) followed by the corresponding query, making it easy to study, practice, and check solutions.

## 🗂️ Repository Structure

```
Joins-test/
├── Create databases.sql              # Schema setup: creates the database and all 3 tables with sample data
├── Inner joins.sql                   # Questions 1–15: INNER JOIN practice
├── Left joins.sql                    # Questions 16–30: LEFT JOIN practice
├── Right joins.sql                   # Questions 31–40: RIGHT JOIN practice
├── Full joins.sql                    # Questions 41–50: FULL JOIN practice (simulated via UNION, as MySQL has no native FULL JOIN)
├── SQL_Joins_Assignment_50_Questions.pdf   # Full assignment sheet with all 50 questions
└── README.md                         # This file
```

## 🗄️ Database Schema

The practice database is called `college_db_1` and consists of three related tables:

### `students`
| Column       | Type          | Description              |
|--------------|---------------|---------------------------|
| student_id   | INT (PK)      | Unique student identifier |
| student_name | VARCHAR(50)   | Full name of the student  |
| city         | VARCHAR(30)   | Student's home city       |

### `courses`
| Column          | Type          | Description                |
|-----------------|---------------|-----------------------------|
| course_id       | INT (PK)      | Unique course identifier    |
| course_name     | VARCHAR(50)   | Name of the course          |
| duration_months | INT           | Course duration in months   |

### `enrollments`
| Column          | Type          | Description                                  |
|-----------------|---------------|-----------------------------------------------|
| enrollment_id   | INT (PK)      | Unique enrollment identifier                  |
| student_id      | INT (FK)      | References `students.student_id`              |
| course_id       | INT (FK)      | References `courses.course_id`                |
| enrollment_date | DATE          | Date the student enrolled in the course       |

**Relationships:** `enrollments` is a bridge/junction table connecting `students` and `courses` in a many-to-many relationship — a student can enroll in multiple courses, and a course can have multiple students.

## 🚀 Getting Started

### Prerequisites
- A running MySQL server (MySQL 5.7+ or 8.0+ recommended)
- A SQL client of your choice (MySQL Workbench, DBeaver, CLI, etc.)

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/samr874/Joins-test.git
   cd Joins-test
   ```

2. Run the schema/setup script first to create the database, tables, and seed data:
   ```bash
   mysql -u <username> -p < "Create databases.sql"
   ```
   Or open `Create databases.sql` in your SQL client and execute it.

3. Once the database is set up, open any of the join practice files and run the queries:
   - `Inner joins.sql`
   - `Left joins.sql`
   - `Right joins.sql`
   - `Full joins.sql`

## 📚 Topics Covered

| File               | Join Type    | Questions | Key Concepts                                                             |
|--------------------|-------------|-----------|---------------------------------------------------------------------------|
| Inner joins.sql    | INNER JOIN  | 1–15      | Matching rows across students, courses, and enrollments                   |
| Left joins.sql     | LEFT JOIN   | 16–30     | Retaining all students, including those with no enrollments               |
| Right joins.sql    | RIGHT JOIN  | 31–40     | Retaining all courses, including those with no enrolled students          |
| Full joins.sql     | FULL JOIN   | 41–50     | Combining all records from both sides (simulated with `LEFT JOIN UNION RIGHT JOIN`, since MySQL doesn't support `FULL OUTER JOIN` natively) |

The full list of 50 questions is available in [`SQL_Joins_Assignment_50_Questions.pdf`](./SQL_Joins_Assignment_50_Questions.pdf).

## 💡 Example Queries

### LEFT JOIN
From `Left joins.sql` — retrieve all students with their enrolled courses, including students who aren't enrolled in anything:

```sql
SELECT s.student_name, c.course_name
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
LEFT JOIN courses c ON e.course_id = c.course_id;
```
Every row from `students` is kept, even if a student has no matching row in `enrollments`/`courses` (shown as `NULL`).

### RIGHT JOIN
From `Right joins.sql` — retrieve all courses with enrolled student names, including courses with no enrolled students:

```sql
SELECT c.course_name, s.student_name
FROM students s
RIGHT JOIN enrollments e ON e.student_id = s.student_id
RIGHT JOIN courses c ON c.course_id = e.course_id;
```
Every row from `courses` is kept, even if a course has no matching row in `enrollments`/`students` (shown as `NULL`).

### FULL JOIN
From `Full joins.sql` — retrieve all students and their enrolled courses, including students without enrollments *and* courses without students. MySQL has no native `FULL OUTER JOIN`, so it's simulated with a `LEFT JOIN` and `RIGHT JOIN` combined via `UNION`:

```sql
SELECT s.student_name, c.course_name
FROM students s
LEFT JOIN enrollments e ON e.student_id = s.student_id
LEFT JOIN courses c ON c.course_id = e.course_id

UNION

SELECT s.student_name, c.course_name
FROM students s
RIGHT JOIN enrollments e ON s.student_id = e.student_id
RIGHT JOIN courses c ON c.course_id = e.course_id;
```
The `UNION` merges the two result sets and removes duplicate rows, so unmatched students and unmatched courses both appear in the final output.

## 🏁 Conclusion

This repository walks through all four SQL join types — `INNER`, `LEFT`, `RIGHT`, and `FULL` — using one consistent `college_db_1` schema, so the same three tables show exactly how each join changes which rows are kept or dropped. Working through the 50 questions in order (Inner → Left → Right → Full) builds a practical understanding of:

- How `INNER JOIN` returns only the rows that match across tables
- How `LEFT JOIN` and `RIGHT JOIN` preserve unmatched rows from one side of the relationship
- How a `FULL JOIN` (simulated via `UNION`, since MySQL has no native `FULL OUTER JOIN`) combines both

By the end of the assignment, you should be able to confidently pick the right join for a given real-world scenario — whether that's finding students with no enrollments, courses with no signups, or simple matched records across students, courses, and enrollments. Feel free to extend this repository with new tables, edge cases, or additional questions as you keep practicing.

## 🎯 Purpose

This repository is intended as a **learning and self-assessment resource** for anyone practicing SQL joins — students, bootcamp participants, or developers refreshing their SQL skills. Each `.sql` file mirrors real interview- and coursework-style questions, paired with working queries for reference.

## 🤝 Contributing

This is a personal practice repository. Suggestions, corrections, or additional practice questions are welcome via pull requests or issues.

## 📄 License

No license specified. Please contact the repository owner for usage permissions beyond personal learning.
