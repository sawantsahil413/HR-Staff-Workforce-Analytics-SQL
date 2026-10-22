use attrition_project;
select Department, count(*) as headcount,
round(avg(Salary),2) as avg_salary,
round(sum(FTE),1) as total_fte
from workforce_data
group by Department
order by headcount desc;

select Gender, count(*) as employees, round(avg(Salary),2) as avg_salary
from workforce_data
group by Gender;

select `Employee type`, count(*) as employees, round(avg(Salary),2) as avg_salary
from workforce_data
group by `Employee type`
order by employees desc;

select `Work Location`, count(*) as employees, round(avg(Salary),2) as avg_salary
from workforce_data
group by `Work Location`
order by employees desc;

select Department,
sum(case when FTE < 1 then 1 else 0 end) as part_time,
count(*) as total
from workforce_data
group by Department
order by part_time desc;

select Name, Department, `Work Location`, Salary
from workforce_data
order by Salary DESC
LIMIT 10;

select sum(Salary is null) as missing_salary,
sum(Department = '???' or Department = '') as invalid_department,
sum(Gender is null or Gender = '') as invalid_department,
sum(Gender is null or Gender = '') as missing_gender
from workforce_data;
