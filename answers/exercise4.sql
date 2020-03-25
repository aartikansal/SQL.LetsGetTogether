use myNewDB;
select country,count(*)
from Students
group by country;