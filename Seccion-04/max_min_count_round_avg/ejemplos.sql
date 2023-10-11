select
    COUNT(*) as total_users,
    min(followers) as min_followers,
    Max(followers) as max_followers,
    round(AVG(followers)) as avg_followers,
    SUM(followers) / count(*) as avg_manual
from
    users;
    
select
    first_name,
    last_name,
    followers
from
    users
where followers = 4 or followers = 4999;

select count(*), followers
from users
where followers = 4 or followers = 4999
GROUP BY followers;

select count(*), followers
from users
where followers between 4500 AND 4999
GROUP BY followers
order by followers DESC;
