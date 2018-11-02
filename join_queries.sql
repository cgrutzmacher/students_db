SELECT s.name, cn.name from student s
LEFT OUTER JOIN coursesTaken ct ON s.id = ct.studentID
LEFT OUTER JOIN courseName cn ON ct.courseID = cn.id
ORDER BY s.name, cn.name;

SELECT s.name, COUNT(cn.name) AS 'Number of courses taken' FROM student s
LEFT OUTER JOIN coursesTaken ct ON s.id = ct.studentID
LEFT OUTER JOIN courseName cn ON ct.courseID = cn.id
GROUP BY s.name
ORDER BY s.name;

SELECT s.name, COUNT(cn.name) AS 'Number of courses taken' FROM student s
LEFT OUTER JOIN coursesTaken ct ON s.id = ct.studentID
LEFT OUTER JOIN courseName cn ON ct.courseID = cn.id
GROUP BY s.name
HAVING COUNT(cn.name) >= 3
ORDER BY s.name;
