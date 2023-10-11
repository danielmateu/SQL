-- Nombre, apellido e IP, donde la última conexión se dió de 221.XXX.XXX.XXX

select first_name, last_name, last_connection from users where last_connection like '221.%'

-- Nombre, apellido y seguidores(followers) de todos a los que lo siguen más de 4600 personas

select first_name, last_name, followers from users where followers > 4600

-- Operador AND

select first_name, last_name, followers from users where followers > 4600 AND followers < 4700 order by followers asc;

-- Between
select
    first_name,
    last_name,
    followers
from
    users
where
--     followers > 4600
--     AND followers < 4700
	followers BETWEEN 4600 and 4700
order by
    followers ASC;

