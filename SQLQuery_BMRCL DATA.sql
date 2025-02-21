select * from dbo.[Namma_Metro_stations(Bengaluru)]

_-- How many metro stations are there in total?

select COUNT(*) from dbo.[Namma_Metro_stations(Bengaluru)]

--List all metro stations along with their line names.

Select Station_Name_English, Line from dbo.[Namma_Metro_stations(Bengaluru)]

--Find the number of stations on each metro line.

Select Count(*)Station_Name_English, line from dbo.[Namma_Metro_stations(Bengaluru)]
group by Line


--3. List all unique metro lines
 select Distinct Line from dbo.[Namma_Metro_stations(Bengaluru)]

 --. Retrieve metro stations sorted alphabetically

Select Station_Name_English from dbo.[Namma_Metro_stations(Bengaluru)]
order by Station_Name_English ASC

-- Find stations that contain "Junction" in their name

select Station_Name_English from dbo.[Namma_Metro_stations(Bengaluru)]
where Station_Name_English Like '%junction%'

select Station_Name_English from dbo.[Namma_Metro_stations(Bengaluru)]
where Station_Name_English Like 'A%'

select Station_Name_English from dbo.[Namma_Metro_stations(Bengaluru)]
where Station_Name_English Like 'B%'

--Retrieve stations opened after a specific date (e.g., 2020-01-01)

Select * from dbo.[Namma_Metro_stations(Bengaluru)]
where Opened_Date > '2020-01-01'

--Find the most recently opened metro station
Select * from dbo.[Namma_Metro_stations(Bengaluru)]
order by Opened_Date Desc

---Find the longest metro line (by the number of stations).
Select count(*) Station_Name_English, Line from dbo.[Namma_Metro_stations(Bengaluru)]
group by  Line
order by Line DESC


--Identify interchange stations (stations where multiple lines intersect).

select station_name_english, COUNT(Distinct[line]) as line_count
from dbo.[Namma_Metro_stations(Bengaluru)]
group by Station_Name_English
HAVING COUNT(DISTINCT[LINE])>1
ORDER BY line_count DESC

--Retrieve stations in alphabetical order.

select station_name_english from dbo.[Namma_Metro_stations(Bengaluru)]
order by Station_Name_English Asc0

-- How many elevated layout are there 
Select Count(*) as Layout_count from dbo.[Namma_Metro_stations(Bengaluru)]
where [Layout] in  ['Elevated', 'At Grade', 'Underground']

SELECT COUNT(*) AS Layout_count 
FROM dbo.[Namma_Metro_stations(Bengaluru)]
WHERE [Layout] IN ('Elevated', 'At Grade', 'Underground');

Select line, layout, COUNT(*) as station_count from dbo.[Namma_Metro_stations(Bengaluru)]
group by Line, Layout
order by Line, Layout


