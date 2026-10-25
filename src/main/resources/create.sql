PRAGMA foreign_keys = ON;

-- Drop students first because students depends on courses.
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;

-- TODO 1: courses table
CREATE TABLE courses (
    course_id   INTEGER PRIMARY KEY,
    course_name TEXT    NOT NULL,
    credits     INTEGER NOT NULL,
    CONSTRAINT chk_courses_credits CHECK (credits > 0)
);

-- TODO 2: students table
CREATE TABLE students (
    id        INTEGER PRIMARY KEY,
    name      TEXT    NOT NULL,
    email     TEXT    NOT NULL UNIQUE,
    age       INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    CONSTRAINT chk_students_age   CHECK (age >= 18),
    CONSTRAINT fk_students_course FOREIGN KEY (course_id) REFERENCES courses(course_id)
);