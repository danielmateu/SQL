

-- Extraer el dominio del correo electronico

SELECT
    count(*),
    SUBSTRING(email, POSITION('@' IN email) + 1) AS domain
FROM
    users;

-- Extraer los dominios que tienen mas de 1 usuario
select
	count(*),
	SUBSTRING(email, POSITION('@' IN email) + 1) AS domain
from users
group by SUBSTRING(email, POSITION('@' IN email) + 1)
having count(*) > 1
