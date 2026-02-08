-- Lab 1: Students Database
-- Author: Dilshad Ali
-- Date: February 9, 2026

-- Create students table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER CHECK (age > 0),
    department VARCHAR(100),
    cgpa DECIMAL(3,2) CHECK (cgpa >= 0 AND cgpa <= 4.0)
);

-- Insert sample data
INSERT INTO students (name, age, department, cgpa) VALUES
('Ali', 20, 'Data Science', 3.45),
('Hamad', 21, 'Computer Science', 3.8),
('Ahmed', 19, 'IT', 3.2),
('Sara', 22, 'Software Engineering', 3.9),
('Ayesha', 20, 'AI', 3.6);
