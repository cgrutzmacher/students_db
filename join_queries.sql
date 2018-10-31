SELECT u.name, cn.name from user u
LEFT OUTER JOIN coursesTaken ct ON u.id = ct.studentID
LEFT OUTER JOIN courseName cn ON ct.courseID = cn.id
ORDER BY u.name, cn.name;


SELECT u.name, COUNT(cn.name) AS 'Number of courses taken' FROM user u
LEFT OUTER JOIN coursesTaken ct ON u.id = ct.studentID
LEFT OUTER JOIN courseName cn ON ct.courseID = cn.id
GROUP BY u.name
ORDER BY u.name;