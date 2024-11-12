SELECT Attendance_Percentage, COUNT(Rollno) AS Rollno_Count 
FROM STUDENTS 
GROUP BY Attendance_Percentage 
HAVING COUNT(Rollno) <= 3;

select sum(Attendance_Percentage) from students;
select * from STUDENTS

SELECT rollno, AVG(Attendance_Percentage) AS attendance
FROM STUDENTS
GROUP BY rollno;
