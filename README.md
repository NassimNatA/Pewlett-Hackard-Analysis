# Pewlett-Hackard-Analysis

## Overview of the analysis:

The purpose of this project is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Identifying and reporting this information will allow stakeholders to prepare for the "silver tsunami" as employees for the company approach retirement age. 

## Results 

There are four major points from the completed analysis: 
- The job titles in the retirement pool are: Senior Engineer, Senior Staff, Engineer, Staff, Technique Leader, Assistant Engineer, Manager
- The top 3 job titles most impacted by the incoming retirement "silver tsunami" are Senior Engineer, Senior Staff, and Engineer: 

![image](https://github.com/NassimNatA/Pewlett-Hackard-Analysis/blob/main/Screen%20Shot%202020-10-04%20at%2010.49.56%20PM.png)

This was obtained by writing the query below to create a table for retiring_titles
![image](https://github.com/NassimNatA/Pewlett-Hackard-Analysis/blob/main/Screen%20Shot%202020-10-04%20at%2010.46.52%20PM.png)

- The number of employees available to mentor in the top titles of the retirement pool is less than half of those leaving (significantly less). 

![image](https://github.com/NassimNatA/Pewlett-Hackard-Analysis/blob/main/Screen%20Shot%202020-10-04%20at%2010.49.07%20PM.png)

This screenshot was generatd by the query below to create a table for unqiue_titles using the COUNT function: 

![image](https://github.com/NassimNatA/Pewlett-Hackard-Analysis/blob/main/Screen%20Shot%202020-10-04%20at%2011.07.31%20PM.png)


- The mentorship program does not have any coverage to mentor for the Manager job title, which can be detrimental to cross-training within the company when the identified employees begin to retire. 

## Summary 

**How many roles will need to be filled as the "silver tsunami" begins to make an impact?**

The roles required to be filled as the "silver tsunami" begins are the following: Senior Engineer, Senior Staff, Engineer, Staff, Technique Leader, Assistant Engineer, Manager. All together, this is a total number of __ roles. 

**Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**

From the screenshot of the eligible employees ready to mentor (grouped by job title), it is evident that there are not enough retirement-ready employees in the respective departments to mentor the next generation. All together, there is a total number of 1549 eligible mentors. This is less than 50% of mentors available from the retirement-affected positions which can create a strain on the training process.

**Two additional queries or tables that may provide more insight into the upcoming "silver tsunami."**

- The first query I added to provide more insight into the analysis was the query to generate a list of mentor-ready employees from the mentorship_eligibility table above: 
![image](https://github.com/NassimNatA/Pewlett-Hackard-Analysis/blob/main/Screen%20Shot%202020-10-04%20at%2011.07.31%20PM.png)

- A second query that may provide more insight into this data is modify the query below that retrieves the employees who were born between 1952 and 1955. We can learn more about the distribution of incoming retirees by using the GROUP BY function to group by decade after putting the parameter 
'WHERE (e.birth_date BETWEEN '01/01/52' AND '12/31/55')' 
![image](https://github.com/NassimNatA/Pewlett-Hackard-Analysis/blob/main/Screen%20Shot%202020-10-04%20at%2010.47.49%20PM.png)
