use myNewDB;
select Country, count(*)
from Students
group by Country
having count(*) >10
order by count(*)DESC;

