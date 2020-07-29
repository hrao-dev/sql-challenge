# Employee Database: A Mystery in Two Parts

## Background

A research project on employees of a corporation from the 1980s and 1990s. All that remained of the database of employees from that period are six CSV files.

<img src="https://github.com/the-Coding-Boot-Camp-at-UT/UT-MCC-DATA-PT-01-2020-U-C/blob/master/homework-instructions/09-SQL/Instructions/sql.png" alt="Database">

This project comprises of three stages namely:

  * <b>Data Modeling</b> - An Entity Relationship Diagram of the tables was created using http://www.quickdatabasediagrams.com
<img src="https://github.com/hrao-dev/sql-challenge/blob/master/EmployeeSQL/ERD.png" alt="ERD Diagram">

  * <b>Data Engineering</b> - A table schema (specifying  data types, primary keys, foreign keys, and other constraints) is created for each of the six CSV files and each CSV file  is imported into the corresponding SQL table.
 
  * <b>Data Analysis</b> - Explore the emplyee records by designing queries to do the following:

       * Details of each employee such as employee number, last name, first name, gender, and salary.
       * All the employees who were hired in 1986.
       * Manager of each department including department number, department name, the manager's employee number, last name, first name, and start and end employment dates
       * Department of each employee along with employee number, last name, first name, and department name.
       * All employees whose first name is "Hercules" and last names begin with "B."
       * All employees in the Sales department, including their employee number, last name, first name, and department name. 
       * All employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
       * In descending order, the frequency count of employee last names, i.e., how many employees share each last name.
   
The SQL database is then imported into Pandas and  visualizations are generated for the employee data as below:

  * A histogram to visualize the most common salary ranges for employees - Most common salary ranges for employees are ($43,9910.5-$48,949.2)and ($48,949.2-$57,898.4)
  <img src="https://github.com/hrao-dev/sql-challenge/blob/master/EmployeeSQL/Images/salary_range_employees.png" alt="Salary Ranges of Employees">
   
  * A bar chart of average salary by title
  <img src="https://github.com/hrao-dev/sql-challenge/blob/master/EmployeeSQL/Images/average_salary_by_title.png" alt="Average Salary by Title">
