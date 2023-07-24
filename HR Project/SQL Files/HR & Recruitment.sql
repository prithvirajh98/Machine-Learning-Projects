Select * from consolidated_search_ds;

## - Total Number of Jobs
Select Count(*) from consolidated_search_ds;

## - Total Number of Career Level
Select Distinct `Career Level` from consolidated_search_ds; 

## - Top 5 Companies and Total Jobs
Select `Company`, count(*) as Total_Jobs from consolidated_search_ds
group by `Company`
order by count(*) desc;

## - Total Number of Job Titles with respect to Career Level
Select `Career Level`, count(*) as Total_Jobs from consolidated_search_ds
group by `Career Level`
order by count(*) desc;

## - Total Number of Jobs with respect to Different Job Titles
Select `Search Term`, count(*) as Total_Jobs from consolidated_search_ds
group by `Search Term`
order by count(*) desc;

## - Number of Jobs with Respect to the Companies and Search Term
	### - 1. Data Scientist
Select `Company`, count(*) as Total_Jobs from consolidated_search_ds
Where `Search Term` = 'Data Scientist'
group by `Company`
order by count(*) desc;

	### - 2. Data Analyst
Select `Company`, count(*) as Total_Jobs from consolidated_search_ds
Where `Search Term` = 'Data Analyst'
group by `Company`
order by count(*) desc;

## - Which Domain has the number of Job openings in Data Science, Data Analyst, Data Engineer
	## 1. Data Science
Select `Industry`, Count(*) as Total_Jobs from consolidated_search_ds
where `Search Term` = 'Data Scientist'
group by `Industry`
order by count(*) desc;

	## 2. Data Analyst
Select `Industry`, Count(*) as Total_Jobs from consolidated_search_ds
where `Search Term` = 'Data Analyst'
group by `Industry`
order by count(*) desc;

	## 3. Data Enginner
Select `Industry`, Count(*) as Total_Jobs from consolidated_search_ds
where `Search Term` = 'Data Engineer'
group by `Industry`
order by count(*) desc;

## - Which Career Level has the highest number of Jobs
	## 1. Data Science
Select `Career Level`, count(*) as Total_Jobs from consolidated_search_ds
Where `Search Term` = 'Data Scientist'
Group by `Career Level`
Order by count(*) desc;

	## 2. Data Analyst
Select `Career Level`, count(*) as Total_Jobs from consolidated_search_ds
Where `Search Term` = 'Data Analyst'
Group by `Career Level`
Order by count(*) desc;

	## 3. Data Enginner
Select `Career Level`, count(*) as Total_Jobs from consolidated_search_ds
Where `Search Term` = 'Data Engineer'
Group by `Career Level`
Order by count(*) desc;