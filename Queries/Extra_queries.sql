-- Join dept retirement no and departments tables
SELECT drn.count,
	drn.dept_no,
	d.dept_name
INTO no_retirees_per_department
FROM dept_retire_no AS drn
LEFT JOIN departments AS d
ON (drn.dept_no = d.dept_no)
ORDER BY dept_no;