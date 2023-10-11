select
    count(*),
    country
FROM
    users
group by
    country
HAVING count(*) > 5
order by count(*) DESC