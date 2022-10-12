-- Join dept retirement no and departments tables
SELECT drn.count,
	drn.dept_no,
	d.dept_name
INTO no_retirees_per_department
FROM dept_retire_no AS drn
LEFT JOIN departments AS d
ON (drn.dept_no = d.dept_no)
ORDER BY dept_no;

-- Find the correct number of retiring employees per department
SELECT COUNT (ut.title),
	de.dept_no
INTO 
FROM unique_titles AS ut
LEFT JOIN dept_emp AS de
ON (ut.emp_no = de.emp_no)
GROUP BY de.dept_no
ORDER BY dept_no;