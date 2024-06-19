use data_new;
-- 1    Show all columns and rows in the table.
SELECT * FROM salaries; 

-- 2    Show only the EmployeeName and JobTitle columns.
SELECT EmployeeName, JobTitle FROM salaries;

-- 3     Show the number of employees in the table. 
SELECT count(*) FROM salaries;

-- 4     Show the unique job titles in the table. 
SELECT DISTINCT Jobtitle FROM salaries;

-- 5     Show the job title and overtime pay for all employees with 
-- overtime pay greater than 50000.
SELECT JobTitle, OvertimePay FROM salaries
WHERE OvertimePay > 50000;

-- 6      Show the avarage base pay for all employees.
select avg(BasePay) as "Avg BasePay" from salaries;

-- 7      Show the top 10 highest paid employees.
select EmployeeName, TotalPay from salaries
order by TotalPay Desc
Limit 10;

-- 8       Show the avarage of BasePay, OvertimePay, and OtherPay for each employee.
Select EmployeeName, (BasePay + OvertimePay + OtherPay)/3 
as avg_of_bp_op_otp 
from salaries;

-- 9    Show all employees who have the word "Manager" in their job title.
select EmployeeName, Jobtitle from salaries
where Jobtitle like '%Manager%';

-- 10    Show all employees with a job title not equal to 'Manager'
Select EmployeeName, Jobtitle from salaries
where JobTitle not like '%MANAGER%';

 -- 11     Show all employees with a total pay between 50,000 and 75,000
select * from salaries
where TotalPay between 50000 and 75000;

 -- 12    Show all employees with a base pay less than 50,000 
 -- or a total pay greater than 100,000
 Select * from salaries
 where BasePay < 50000 or TotalPay > 100000;
 
-- 13    Show all employees with a total pay benefits value  
 -- between 125,000 and 150,000 and a job title containing the word "Director"
 
select * from salaries
where TotalPayBenefits between 125000 and 150000
and Jobtitle like '%Director%';
 
  -- 14   Show all employees ordered by their total pay benefits in descending order. 
Select * from Salaries
order by TotalPayBenefits desc;

-- 15  Show all job titles with an avarage base pay of 
-- at least 100,000 and order them by the avarage base pay in descending order

Select JobTitle, avg(BasePay) as 'avgbasepay' from salaries
group by Jobtitle
having avg(BasePay) >=100000
order by avgbasepay desc;



-- 16   delete the columm
Select * from salaries;
alter table salaries
drop column Notes;
Select * from Salaries;

-- 17   Update the base pay of all employees with
-- the job title containing 'Manager' by increasing it by 10%

update salaries
set BasePay = BasePay * 1.1
where Jobtitle like '%Manager%';


-- 18   Delete all employees who have no Overtime pay

select count(*) from salaries
where OvertimePay = 0;
Delete from Salaries
where OvertimePay = 0;
