-- Lab 1: Analytical Queries
-- Author: Dilshad Ali
-- Date: February 9, 2026

-- Query 1: All students sorted by CGPA (highest first)
SELECT id, name, age, department, cgpa
FROM students
ORDER BY cgpa DESC;

-- Query 2: Students with CGPA above 3.5
SELECT name, department, cgpa
FROM students
WHERE cgpa > 3.5
ORDER BY cgpa DESC;

-- Query 3: Average CGPA by department
SELECT department, AVG(cgpa) as avg_cgpa, COUNT(*) as student_count
FROM students
GROUP BY department
ORDER BY avg_cgpa DESC;

-- Query 4: Count total students
SELECT COUNT(*) as total_students FROM students;

-- Query 5: Students aged 20 or younger
SELECT name, age, department, cgpa
FROM students
WHERE age <= 20
ORDER BY age;

-- Query 6: Youngest and oldest students
SELECT 
    MIN(age) as youngest_age,
    MAX(age) as oldest_age
FROM students;

-- Query 7: Students in Computer Science or Data Science
SELECT name, department, cgpa
FROM students
WHERE department IN ('Computer Science', 'Data Science')
ORDER BY department, cgpa DESC;
