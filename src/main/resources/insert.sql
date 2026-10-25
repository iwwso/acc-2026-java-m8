PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE FROM students;
DELETE FROM courses;

-- TODO 1: three courses
INSERT INTO courses (course_id, course_name, credits) VALUES
    (1, 'Java Fundamentals', 6),
    (2, 'Databases', 4),
    (3, 'Web Services', 5);

-- TODO 2: five students
INSERT INTO students (id, name, email, age, course_id) VALUES
    (1, 'Elena Ozola',   'elena.ozola@example.com',   19, 1),
    (2, 'Marks Berzins', 'marks.berzins@example.com', 22, 1),
    (3, 'Ilva Krastina', 'ilva.krastina@example.com', 25, 2),
    (4, 'Toms Lacis',    'toms.lacis@example.com',    18, 2),
    (5, 'Anna Zarina',   'anna.zarina@example.com',   31, 2);

-- TODO 3:
-- Uncomment this to test a foreign key error.
-- This should fail because course_id 999 does not exist.
-- INSERT INTO students (id, name, email, age, course_id)
-- VALUES (6, 'Invalid Course Student', 'invalid@example.com', 20, 999);