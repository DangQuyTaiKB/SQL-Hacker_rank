/*markdown
1. Merit Rewards 
On the basis of merit, a company decides to promote some of its employee in its HR division at the end of the quarter because of their high performance. 
Write a query to find the employee IDs along with the names of all its employees who work in the HR department who earned a bonus of 5000 dollars or more in the last quarter. 
*/

SELECT e.employee_ID, e.name
FROM employee_information e 
JOIN last_quarter_bonus l ON e.employee_ID = l.employee_ID
WHERE l.bonus > 5000 AND e.division = 'HR'
ORDER BY e.employee_ID ASC;

/*markdown
To modify the SQL query to print the results in a concatenated string format like "3 Richard" instead of showing them as a table, you can use the CONCAT function (or || operator, depending on the SQL database you are using) to concatenate the employee_ID and name columns into a single string for each row. Here's how you can do it for a SQL database that supports the CONCAT function:
*/

SELECT CONCAT(e.employee_ID, ' ', e.name) AS employee_details
FROM employee_information e 
JOIN last_quarter_bonus l ON e.employee_ID = l.employee_ID
WHERE l.bonus > 5000 AND e.division = 'HR'
ORDER BY e.employee_ID ASC;

/*markdown
2. Student advisor
A university has started a student-advisor plan which assigns a professor as an advisor to each student for academic guidance. 
Write a query to find the roll number and names of students who either have a male advisor with a salary of more than 15,000 or a female advisor with a salary of more than 20,000. 
*/

SELECT roll_number,name
FROM student_information a
INNER JOIN faculty_information b
ON a.advisor = b.employee_ID
WHERE (b.gender = 'M' and b.salary>15000) or (b.gender = 'F' and b.salary>20000);