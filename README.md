# SQL/ PGAdmin

## Background

Task was a research project on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.

I designed tables to hold data from the original CSVs, imported the CSVs into a SQL database and analyzed the data for trends. In other words, I performed **data modeling**, **data engineering**, and **data analysis**.
 

#### Data Modeling
![ERD](ERD_HA_FINAL.png)
Utilized the below link to create Data Model<br> 
[http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering

* After the creation of the Data Model, where I set the primary and foreign keys within my model. I imported the schema into PostgreSQL in order to create the tables. Once created, I imported the respective CSV files. 

#### Data Analysis

Once the database was complete:

1. I Listed the following details of each employee: employee number, last name, first name, sex, and salary.<br>
![Image](Q1.png)
2. I Listed the first name, last name, and hire date for employees who were hired in 1986.<br>
![Image](Q2.png)
3. I Listed the the manager of each department with the following information: <br>
department number, department name, the manager's employee number, last name, first name.<br>
![Image](Q3.png)
4. I Listed the the department of each employee with the following information: employee number, last name, first name, and department name.<br>
![Image](Q4.png)
5. I Listed the first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."<br>
![Image](Q5.png)
6. I Listed the employees in the Sales department, including their employee number, last name, first name, and department name.<br>
![Image](Q6.png)
7. I Listed the all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.<br>
![Image](Q7.png)
8. I Listed the frequency count of employee last names (i.e., how many employees share each last name) in descending order.<br>
![Image](Q8.png)

## Further Analysis

1. Imported the SQL database into Pandas. 

2. Created a histogram to visualize the most common salary ranges for employees.<br>

![Image](Average_Salaries_By_Title.png)

3. Created a bar chart of average salary by title.<br>
![Image](Salary_Ranges_Emp.png)


