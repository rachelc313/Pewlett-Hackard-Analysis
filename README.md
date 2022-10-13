# Pewlett-Hackard-Analysis
## Overview of the Analysis
Analyzing data provided by "Pewlett-Hackard:" "'Pewlett Hackard' is a large company boasting several thousand employees, and it's been around for a long time. As baby boomers begin to retire at a rapid rate, Pewlett Hackard is looking toward the future in two ways. First, it's offering a retirement package for those who meet certain criteria. Second, it's starting to think about which positions will need to be filled in the near future." A mentorship program is being proposed in which retiring employees will be offered a part-time position with the goal of mentoring current employees born in 1965. The purpose of this analysis is the following:
1. Determine the number of upcoming retiring employees.
2. Determine what positions will be coming available.
3. For the mentorship program, how many employees are eligible to be mentored?
4. How many employees per title are eligible to be mentored?

## Resources
 - Data Sources: departments.csv, dept_manager.csv, employees.csv, dept_emp.csv, salaries.csv, titles.csv
  - Software: Postgres SQL 11, pgAdmin4

 ## Results: 
 The analysis of the Pewlett-Hackard employee data show that:
 - There are 72,458 retiring upcoming retiring employees.
 - Below is the breakdown of each title and number of employees retiring:
      - Senior Engineer: 25,916
      - Senior Staff: 24,926
      - Engineer: 9,285
      - Staff: 7,636
      - Technique Leader: 3,603
      - Assistant Engineer: 1,090
      - Manager: 2
 - There are 1,549 employees eligible to be mentored (Born between 1/1/1965 and 12/31/1965).*
 - Below is the breakdown of each title and number of employees retiring:*
    - Senior Engineer: 201
    - Senior Staff: 528
    - Engineer: 474
    - Staff: 196
    - Technique Leader: 77
    - Assistant Engineer: 73
    - Manager: 0
 
   *To calculate these counts, I created an extra queries file in Postgres, the screenshots are below:

![mentorship_eligibility_count](https://user-images.githubusercontent.com/111570965/195434905-a8d8b224-36b6-4e2d-a445-1157626ef8c7.png)

![mentorship_eligibility_by title](https://user-images.githubusercontent.com/111570965/195435172-aaea6fbb-8883-4fc1-b87e-c1b9caf341f5.png)


 ## Summary: 
 In total, 72,458 positions will need to be filled as the "silver tsunami" begins. The two largest titles that are losing employees are: Senior Engineer and Senior Staff. 

 There is a sufficient number of retirement-ready employees in each department available to remain part-time and mentor the upcoming generation of employees.

 I created a new table to hold the number of employees that are not retiring soon and performed queries and analysis on that data.

![current_not_retiring_employees](https://user-images.githubusercontent.com/111570965/195443343-0208f6cc-c4f4-45b8-af18-2b3ae1b24407.png)


- There are 167,666 current employees that are not retiring soon. 
- The breakdown of these employees by title is below:
   - Senior Engineer: 16,681
    - Senior Staff: 57,096
    - Engineer: 59,135
    - Staff: 17,886
    - Technique Leader: 8,447
    - Assistant Engineer: 8,403
    - Manager: 18

![total_cnre](https://user-images.githubusercontent.com/111570965/195443375-2b7ffb60-890b-4b37-848c-91f55ec3988e.png)

![cnre_by_titles](https://user-images.githubusercontent.com/111570965/195443404-bb761eac-e9df-43ba-b18b-b9549227b3e4.png)



I ran queries to filter the data into a new table with the employees that have been employed over two years and removed those eligible for the mentorship program.

![above_two_year_employees](https://user-images.githubusercontent.com/111570965/195585940-14f9f80a-3b01-4268-89f9-ff32df1ef544.png)


- There are 166, 117 current employees that have been with the company for more than two years and are not eligible for the mentorship program. 
- The breakdown of these employees by title is below:
    - Senior Engineer: 16,512
    - Senior Staff: 56,527
    - Engineer: 58,634
    - Staff: 17,731
    - Technique Leader: 8,370
    - Assistant Engineer: 8,325
    - Manager: 18
 
![total_atye](https://user-images.githubusercontent.com/111570965/195585964-b53c6030-6b84-4d20-a2d8-707c18a5f487.png)

![atye_by_titles](https://user-images.githubusercontent.com/111570965/195585993-9b502ed4-9a84-4d96-8dc5-1b635b2097dc.png)


A comparison of the final numbers shows:

The only position that will be left in a deficit is "Senior Engineer." There will be 9,404 positions available. Assuming that a "Senior Engineer" is promoted from "Engineer" positions, there are sufficient Engineers to that can be interviewed and possibly promoted. There are 49,349 "Engineer" positions left after the retirees leave and if all of the deficit 9,404 positions are filled there are still 39,945 "Engineers."

This analysis shows that Pewlett Hackard is ready for the "Silver Tsunami." Hiring managers will need to be proactive in reviewing current employees interested in career advancement.



