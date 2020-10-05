--Module 7 Challenge Deliverable 1, Number of Retiring Employees

-- #1 - #4
Drop table retirement_titles
SELECT e.emp_no,
e.first_name, 
e.last_name, 
t.title,
t.from_date,
t.to_date,
s.salary
INTO retirement_titles
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
ON(e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)

Select * from retirees_by_title

--#5-#6 Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955.
Drop table retirees_by_title
SELECT e.emp_no,
e.first_name, 
e.last_name, 
t.title,
t.from_date,
t.to_date,
s.salary
INTO retirees_by_title
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
ON(e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '01/01/52' AND '12/31/55')
ORDER BY emp_no ASC 

SELECT * FROM retirees_by_title

-- Use Dictinct with Orderby to remove duplicate rows 
DROP table unique_titles
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirees_by_title
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles

--retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles

--Module 7 Challenge Deliverable 2, The Employees Eligible for the Mentorship Program
SELECT DISTINCT ON (e.emp_no)e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date, 
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '01/01/99') AND (e.birth_date BETWEEN '01/01/65' AND '12/31/65')
ORDER BY emp_no;

SELECT * FROM mentorship_eligibility