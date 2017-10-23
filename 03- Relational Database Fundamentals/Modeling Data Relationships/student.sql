CREATE TABLE student(
  student_id int,
  first_name text,
  last_name text
  class.grade text
);

CREATE TABLE class(
  class_id int,
  name text,
  grade text,
  student.student_id int
);

SELECT student_id
FROM class;

SELECT grade, count(grade)
FROM class
GROUP BY class_id;

SELECT name, SUM(student_id)
FROM class
GROUP by class_id;


SELECT class_id, MAX(class_id)
FROM class;
