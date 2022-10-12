SELECT COUNT (emp_no)
	FROM mentorship_eligibility;
	
SELECT COUNT (emp_no),
	title
	FROM mentorship_eligibility
GROUP BY title;

SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO current_not_retiring_employees
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN title AS t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01' AND e.birth_date >= '1956-01-01')
ORDER BY (emp_no);

SELECT COUNT (emp_no)
	FROM current_not_retiring_employees;
	
SELECT COUNT (emp_no),
	title
	FROM current_not_retiring_employees
	GROUP BY title;

