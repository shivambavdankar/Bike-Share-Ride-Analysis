CREATE SCHEMA cyclistic;
use cyclistic;
select count(*) from jan2023;

/*Number of rides taken by casuals and members in march 2022 */
select member_casual, count(duration) as number_of_rides
from march2022 
where day = 1
group by member_casual;


/* Top 10 stations where casual riders visit the most where first station has missing value */
select start_station_name as station, count(ride_id) as number_of_rides
from march2022
where member_casual LIKE 'casual'
group by start_station_name
order by count(ride_id) desc
limit 10;

/* Joining march and april ride data and having a look at first 10 records */
select *
from march2022 m inner join april2022 a 
on m.ride_id = a.ride_id
limit 10;

