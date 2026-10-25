PRAGMA foreign_keys = ON;

-- TODO 1: all courses
SELECT * FROM courses;

-- TODO 2: all students
SELECT * FROM students;

-- TODO 3: students older than 20
SELECT id, name, age
FROM students
WHERE age > 20;

-- TODO 4: students with their course names
SELECT s.name, s.email, s.age, c.course_name
FROM students s
JOIN courses c ON s.course_id = c.course_id
ORDER BY s.id;

-- TODO 5: how many students in each course, including empty courses
SELECT c.course_name, COUNT(s.id) AS student_count
FROM courses c
LEFT JOIN students s ON s.course_id = c.course_id
GROUP BY c.course_id, c.course_name
ORDER BY c.course_id;

-- TODO 6: update the first student's age, then check it
UPDATE students SET age = 20 WHERE id = 1;

SELECT id, name, age
FROM students
WHERE id = 1;

-- TODO 7: move the second student to another course, then check it
UPDATE students SET course_id = 3 WHERE id = 2;

SELECT s.id, s.name, c.course_name
FROM students s
JOIN courses c ON s.course_id = c.course_id
WHERE s.id = 2;

-- TODO 8: delete one student
DELETE FROM students WHERE id = 4;

-- TODO 9: final result
SELECT s.id, s.name, s.email, s.age, c.course_name
FROM students s
JOIN courses c ON s.course_id = c.course_id
ORDER BY s.id;