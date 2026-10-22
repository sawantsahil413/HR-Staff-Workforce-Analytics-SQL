# Employee Workforce Analysis (MySQL + Excel)

SQL analysis of a staff dataset to understand headcount, pay, employment type and location mix, plus a data-quality check. An Excel dashboard was also built for this data.

## Tools
MySQL Workbench, Microsoft Excel (Pivot Tables, dashboard)

## Dataset
employee records with department, gender, salary, FTE, employee type and work location. The data has no attrition column, so this project focuses on workforce structure and pay.

## Questions answered
1. Headcount, average salary and total FTE by department
2. Average salary by gender
3. Pay and headcount by employee type
4. Headcount and average salary by work location
5. Part-time (FTE below 1) share by department
6. Top 10 highest-paid employees
7. Data-quality issues (invalid or missing values)

## SQL concepts used
GROUP BY, CASE WHEN, ORDER BY, LIMIT, aggregate functions, NULL and blank-value checks

## Key findings
- Gender pay gap was under 0.5% (men 72,084 vs women 71,764).
- Fixed Term and Temporary staff earned about 6-7% more on average than Permanent staff.
- Average salary differed widely by location, for example Columbus, USA (~81.8K) versus Chennai, India (~64.3K).
- Marketing had the highest part-time share (5 of 12 employees).
- **Data quality:** 8 records had an invalid department ("???") and 8 had a missing gender. These rows were flagged because they distort department-level averages.

## Limitations
- Start Date had mixed formats, so tenure analysis was left out.
- No attrition data was available.

## Files
- `Employee_workforce_queries.sql`
