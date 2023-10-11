
-- Un subquery es una consulta dentro de otra consulta, es decir, una consulta dentro de otra consulta.

select
    *
from
    (
        select
            count(*),
            SUBSTRING(email, POSITION('@' IN email) + 1) AS domain,
            'Dani' as name,
            37 as age
        from
            users
        group by
            SUBSTRING(email, POSITION('@' IN email) + 1)
        having
            count(*) > 1
        LIMIT
            100
    ) as email_domains