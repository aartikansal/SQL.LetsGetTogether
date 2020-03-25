use myNewDB;
SELECT Country,count(*)
from Students
group by Country
order by count(*) DESC ;